<?php
session_start();
/* forward.php
 * 负责处理用户做--转发任务--的请求
 * 同时可以处理用户屏蔽转发任务的请求
 */
include_once("../config.php");
include_once($webRoot.'lib/saetv2.ex.class.php');
include_once($webRoot."lib/dbo.class.php");
include_once($dbConfFile);
include_once($webRoot."foundation/debug.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/status.php");
if(!is_login()) {
header("Location:".$siteRoot."index.php");
exit();
}

if(isset($_GET['id'])) {
	$task_id = intval($_GET['id']);
    if(empty($task_id)) {
        header("Location:".$siteRoot."index.php");
        exit();
    }
    
    $c = new SaeTClientV2(WB_AKEY, WB_SKEY, $_SESSION['stoken']);
    // 先尝试更新task表中task_finish_amount值，若更新成功则做任务，若任务失败，再回滚数据。未使用事务。
	$dbo = new dbex($dbServs);
    if(isset($_GET['type']) && 'hide'==$_GET['type']) { // 屏蔽此任务
        $sql = "insert into do_task (task_id, user_id, status, time) values ($task_id, {$_SESSION['uid']}, 'hide', now())";
        $sql_res = $dbo->exeUpdate($sql);
    	header("Location:".$_SERVER['HTTP_REFERER']);
        $dbo->close();
        exit();
    }
	$sql = "update task set task_finish_amount=task_finish_amount+1 where task_id=$task_id and task_finish_amount < task_amount limit 1";
	$sql_num = $dbo->exeUpdate($sql);
// 更新task表中task_finish_amount失败，尝试其他任务
	if(1 != $sql_num) {
		echo "对不起，此任务已经被做完了，请<a href=\"{$_SERVER['HTTP_REFERER']}\">点此返回</a>选择其他任务";
		$dbo->close();
		exit();
	}
// 已经更新了task中的数据，现在做任务
// 先获取任务信息
	$sql = "select task_sina_wid, task_offer from task where task_id = $task_id";
	$sql_res = $dbo->getRow($sql);
	if(!$sql_res) {
        if(DEBUG) {
            $err_msg = '读数据库出错，FILE: '.__FILE__.'; LINE: '.__LINE__.';SQL: '.$sql;
        } else {
            $err_msg = '对不起，出了一些错误，请稍候';
        }
		echo $err_msg;
		$dbo->close();
		exit();
	}
	$task_sina_wid = $sql_res['task_sina_wid'];
	$task_offer = $sql_res['task_offer'];
	$task_res = $c->repost($task_sina_wid);
//	if_weiboapi_fail($task_res, __FILE__, __LINE__);
// 没做成功，回滚task表中task_finish_amount数据
	if(isset($task_res['error_code'])) {
		echo	'某处出了错误：'.$task_res['error']
			."。您未能完成任务，请<a href=\"{$_SERVER['HTTP_REFERER']}\">点此返回</a>";
		$sql = "update task set task_finish_amount = task_finish_amount - 1 where task_id = $task_id limit 1";
		$dbo->exeUpdate($sql);
		$dbo->close();
		exit();
	}
// 做成功了，写数据库，写SESSION
// 写do_task表
    $money = sql_price($task_offer, $_SESSION['slevel']);
//	$sql = "insert do_task (task_id, user_id, status, repost_mid, time)values($task_id, {$_SESSION['uid']}, 'finish', {$task_res['retweeted_status']['mid']}, now())";
//  此处应注意，retweeted_status['mid']是原微博的mid，而非转发产生的mid
	$sql = "insert do_task (task_id, user_id, status, repost_mid, time)values($task_id, {$_SESSION['uid']}, 'finish', {$task_res['mid']}, now())";
	$sql_num = $dbo->exeUpdate($sql);
	if(1 != $sql_num) {
		echo 'debug. 写数据库失败。file: '.__FILE__.'; line: '.__LINE__;
		$dbo->close();
		exit();
	}
	$sql =	"update user set task_taken=task_taken+1, task_finished=task_finished+1,"
		." total_income=total_income+$money, realtime_income=realtime_income+$money"
		." where user_id = {$_SESSION['uid']} limit 1";
	// 写user表
	$sql_num = $dbo->exeUpdate($sql);
	if(1 != $sql_num) {
		echo 'debug. 写数据库出现错误。file: '.__FILE__.'; line: '.__LINE__.'. sql:'.$sql;
		$dbo->close();
		exit();
	}
	// 写数据成功，释放数据库连接
	$dbo->close();
	header("Location:".$_SERVER['HTTP_REFERER']);
	exit();
}
header("Location:".$_SERVER['HTTP_REFERER']);
exit();
?>
