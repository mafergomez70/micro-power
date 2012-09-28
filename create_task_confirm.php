<?php
session_start();
/* create_task_confirm.php
 * 创建任务页面确认页面，仅对ader和master开放
 */
?>
<?php
/*
创建任务者的role应该是ader或master。<br />

通过通过参数确定要创建何种任务，然后结合task_info_xxx表，确定创建任务所需数据。<br />

创建一个新浪转发任务，<br />
1.检测创建者是否绑定新浪微博，否则退出。<br />
2.列出创建者的原创微博列表以供创建者选择。<br />
3.设定任务单价，数量。<br />
4.算账，扣钱，钱不够则返回3，重新设定。<br />
5.发布。<br />

创建一个新浪关注任务，<br />
1.检测创建这是否绑定新浪微博，否则退出；<br />
2.让创建者选择从（自己，粉丝，关注，输入昵称）；<br />
3.设定任务单价，数量；<br />
4.算账，扣钱，余额不够则返回3，重新设定；<br />
5.发布。<br />

创建一个新浪微博原创任务：<br />
1.检测创建者是否绑定新浪，否则退出；<br />
2.创建者描述原创任务；<br />
3.设定单价，数量；<br />
4.算账，扣钱，余额不足则返回3，重新设定；<br />
5.发布。<br />
*/
?>
<?php
include_once("config.php");	// init $authURL
include_once($webRoot."foundation/status.php");
need_login();
need_be_ader_or_master();
include_once($webRoot."foundation/debug.php");
include_once($webRoot."foundation/page.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/switch.php");
$title = "欢迎来到微动力-确认创建任务";
$csfile = array("style/main.css", "style/solo.css");

// 确定请求任务类型
if(isset($_POST['type'])) {
	$type = $_POST['type'];
	if($type != 'sina_follow' && $type != 'sina_forward' && $type != 'sina_review' && $type != 'sina_create') {
        header("Location:index.php");
	}
} else {
    header("Location:index.php");
}
$type_db = task_type_switch($type, TRUE);
include_once($webRoot."lib/saetv2.ex.class.php");
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);
include_once("lib/dbo.class.php");
include_once($dbConfFile);
$dbo = new dbex($dbServs);

switch ($type_db) {
    case 1: // sina_forward
    case 11:    // qq_forward
        $id_text = $_POST['status_id-text'];
        $wid = strval(intval($id_text));    // weibo id
        $text = substr($id_text, strlen($wid)+1);     // weibo text
        break;
    case 2: // sina_follow
    case 12:    // qq_follow
        if(isset($_GET['comment']) && 'by_name' == $_GET['comment']) {
            $name = strval($_POST['sina_screen_name']);
        } else {
            $id_name = $_POST['person_id-name'];    // id-name
            $uid = strval(intval($id_name));        // 要关注的用户在相应平台上的id
            $name = substr($id_name, strlen($uid)+1);         // 要关注的用户在相应平台上的用户名
        }
        break;
    case 3: // sina_review
    case 13:    // qq_review
        break;
    case 4: // sina_create
    case 14:    // qq_create
        break;
    default:
        $msg = '暂不支持该类型';
}
$base_price = $_POST['base_price']; // 基础价
$amount = $_POST['amount'];         // 期望点击数
$total_price = $base_price*$amount*($ader_normal_rate+1); // 预期总费用 $ader_normal_rate init in config.php

// 当前企业用户的余额信息
$sql = "select realtime_income from user where user_id = '{$_SESSION['uid']}'";
$sql_res = $dbo->getRow($sql);
$realtime_income = $sql_res['realtime_income'];

?>
<?php
require_once("uiparts/docheader.php");
?>

<body>
	<?php include("uiparts/header.php"); ?>
	<div id="func_column">
		<ul >
			<li><a href="create_task.php?type=sina_follow">创建新浪关注任务</a></li>
			<li><a href="create_task.php?type=sina_forward">创建新浪转发任务</a></li>
			<li><a alt="create_task.php?type=sina_review">创建新浪评论任务(暂不可用)</a></li>
			<li><a alt="create_task.php?type=sina_create">创建新浪原创任务(暂不可用)</a></li>
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
    <?php if(!$_SESSION['is_bind_weibo']) { ?>
    <p class="hint"> 绑定微博后您才可以创建任务。<a href="<?php echo $authURL; ?>">现在绑定</a></p>
    <?php } ?>
    <h3>您要创建的任务如下：</h3>
        <?php switch ($type) { case 'sina_forward': ?>
                <div id="create_task">
                    <dl>
                        <dt>任务描述</dt><dd>转发新浪微博 <sub><?php echo $text;?></sub></dd>
                        <dt>基础单价</dt><dd><?php echo $base_price; ?>元</dd>
                        <dt>期望点击次数</dt><dd><?php echo $amount; ?>次</dd>
                        <dt>预计总费用（含佣金）</dt><dd><?php echo $total_price;?>元</dd>
                        <dt>您的当前余额</dt><dd><?php echo $realtime_income;?>元</dd>
                        <dt>您确定要创建这个任务吗？</dt>
                        <dd>
                    <form action="action/create_task.php" method="post">
                        <input type="hidden" name="type" value="sina_forward" />
                        <input type="hidden" name="id" value="<?php echo $wid;?>" />
                        <input type="hidden" name="base_price" value="<?php echo $base_price;?>" />
                        <input type="hidden" name="amount" value="<?php echo $amount;?>" />
                        <input type="submit" name="submit" value="创建">
                        <a href="create_task.php">返回修改一下</a>
                    </form>
                        </dd>
                    </dl>
                </div><!-- end of DIV create_task -->
            <?php break; ?>
            <?php case 'sina_follow': ?> 
                <div id="create_task">
                    <dl>
                        <dt>任务描述</dt><dd>关注新浪用户 <sub><?php echo $name;?></sub></dd>
                        <dt>基础单价</dt><dd><?php echo $base_price; ?>元</dd>
                        <dt>期望点击次数</dt><dd><?php echo $amount; ?>次</dd>
                        <dt>预计总费用（含佣金）</dt><dd><?php echo $total_price;?>元</dd>
                        <dt>您的当前余额</dt><dd><?php echo $realtime_income;?>元</dd>
                    </dl>
                <?php if(isset($_GET['comment']) && 'by_name' == $_GET['comment']) { ?>
                    <form action="action/create_task.php?comment=by_name" method="post">
                        <input type="hidden" name="screen_name" value="<?php echo $name;?>" />
                <?php } else { ?>
                    <form action="action/create_task.php" method="post">
                        <input type="hidden" name="id" value="<?php echo $uid;?>" />
                <?php } ?>
                        <input type="hidden" name="type" value="sina_follow" />
                        <input type="hidden" name="base_price" value="<?php echo $base_price;?>" />
                        <input type="hidden" name="amount" value="<?php echo $amount;?>" />
                        <input type="submit" name="submit" value="创建">
                        <a href="create_task.php">返回修改一下</a>
                    </form>
                </div><!-- end of DIV create_task -->
            <?php break; ?>

		<?php }?>
        <hr class="clear" />
	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
