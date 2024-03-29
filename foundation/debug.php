<?php

/**
 * 写日志函数
 *
 * @param string $msg   要写入日志的信息
 * @param string log_file     日志文件路径，相对于根目录$siteRoot
 * 尚未完成
 */

function write_log($msg, $log_file='doc/log_file')
{
    echo 'error message:'.$msg.".\n<br />".'logged in file:'.$log_file."\n<br /> this is not real. this function is not complete.";
}
/**
 * 错误处理函数
 *
 * @param string $debug_msg DEBUG信息
 * @param bool $to_user 当不处于DEBUG模式时，是否要向用户提示出错，默认为TURE
 * @param string $level 错误级别，记录日志时使用，默认为'error'('fatal', 'notice')
 *          notice: 可能是错误，不影响程序继续执行
 *          error:  错误，程序可以继续执行下去
 *          fatal:  严重错误，程序不能继续执行，需要退出或跳转
 * @return 
 * 注意：正式运行时，有些错误信息应该发送到管理员邮箱和/或写入日志
 */
function debug($debug_msg, $file=NULL, $line=NULL, $to_user=TRUE, $level="error")
{	
    $debug_msg = 'debug: '.'file:'.$file .' line: ' . $line .$debug_msg;
    write_log($debug_msg);
    if(DEBUG) {
		echo $debug_msg;
		exit();
	} else if($to_user) {
		echo "<p>something wrong, please wait for a moment.</p>";
	} else {
		echo "";
	}
    if('fatal' == $level) {
        global $siteRoot;
        header("Location:$siteRoot");
        exit();
    }
}

/**
 * 处理api调用失败函数
 * 此处不应该处理太多情况，因为大部分情况下不需要。
 * 少数需要的情况下，如几个重要的action，需要处理的错误码又各不一致，可以自行处理之。
 *
 * 使用方式：在调用新浪api后，将返回结果传给此函数，此函数判断调用结果，输出相应信息
 */
function if_weiboapi_fail($res, $file=NULL, $line=NULL, $append_msg=NULL)
{	if(!$res) {	// 调用微博api没有任何返回
		$debug_msg = 'weibo服务暂时出了问题，请尝试使用其他方式';
		debug($debug_msg, $file, $line, true);
	}else if(isset($res['error_code'])) {   // 此处应该处理：token过期，频率限制，
		switch ($res['error_code']) {
			case '21327':	// token 过期/引导用户刷新token
			    header("refresh:3;url=https://api.weibo.com/oauth2/authorize?client_id=1520889573&redirect_uri=http%3A%2F%2Fvdl.viivtech.com%2Fcallback.php&response_type=code");
			    echo '您上次对本应用的授权已经过期，请<a href="https://api.weibo.com/oauth2/authorize?client_id=1520889573&redirect_uri=http%3A%2F%2Fvdl.viivtech.com%2Fcallback.php&response_type=code">点此</a>重新授权。或者等待3秒后自动跳转到授权页面。</p>';
			    break;
			    exit();
			default:
		}
		$debug_msg = ' call api failed, error: '.$res['error'].'<br />error code('.$res['error_code'].')';
		debug($debug_msg, $file, $line, false);
	}
}

/*
 * 延迟跳转函数
 * 
 * 作用： 输出跳转提示信息，利用header，若干秒后跳转。
 *
 * 用处：一般用在action中，因为本身没有产生新页面，而跳转后会exit当前页面。
 * 注意：不应用于debug函数，因为debug函数不会仅用于action中。
 *
 *
 *
 *
 */
function delay_jump($seconds=0, $msg, $to_url='http://vdl.viivtech.com', $to_name='默认页面', $color='blue')
{
    $seconds = intval($seconds);
    header("refresh:$seconds;url=$to_url");
//    header("Content-Type:text/html;charset=utf8");
//    echo '<html><head><link ref="stylesheet" href="http://vdl.viivtech.com/style/page_control.css" type="text/css" /></head>';
    echo '<body><h2>友情提示</h2>';
    echo "<p>$msg</p></body></html>";
    echo '<hr />';
    echo "<p>$seconds 秒钟后返回 $to_name 页面，或<a href=\"$to_url\">点此</a>立即返回。</p>";
    exit();
}

?>
