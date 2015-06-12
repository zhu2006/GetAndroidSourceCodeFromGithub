#!/usr/bin/python
# -*- coding: utf-8 -*-
"""
Function:
http://www.crifan.com/python_third_party_lib_html_parser_beautifulsoup

Author:     psycho & Crifan Li
Version:    2012-12-26
Contact:    admin at crifan dot com
"""

#from BeautifulSoup import BeautifulSoup;
import urllib2;
from bs4 import BeautifulSoup

def getGithubAddressAndDir(gitHtml):
    demoHtml = """
<html>
<body>
<div class="icon_col">
        <h1 class="h1user">crifan</h1>
 </div>
 </body>
</html>
""";
    
    #print "type(soup)=",type(soup); #type(soup)= <type 'instance'>
    #print "soup=",soup;
    
    # 1. extract content
    # method 1: no designate para name
    #h1userSoup = soup.find("h1", {"class":"h1user"});
    # method 2: use para name
    
    # more can found at:
    #http://www.crummy.com/software/BeautifulSoup/bs3/documentation.zh.html#find%28name,%20attrs,%20recursive,%20text,%20**kwargs%29
   # print "wholeSoup=",wholeSoup; #h1userSoup= <h1 class="h1user">crifan</h1>

    # <h3 class="repo-list-name">
    #<a href="/android/platform_system_core" itemprop="name codeRepository">
    #    platform_system_core</a>
    #</h3>

    # wholeSoupStr = wholeSoup.find_all('a');
    # print "wholeSoupStr=",wholeSoupStr; #h1userUnicodeStr= crifan
    #print  "wholeSoupHerf=",wholeSoup.a['href'];
    soup = BeautifulSoup(gitHtml);
    wholeSoup = soup.find_all(name="h3", attrs={"class":"repo-list-name"});
    for gitItem in wholeSoup:
        gitdir = gitItem.get_text().replace('_','/').strip();
        gitAddr =  "https://github.com/android/"+gitItem.get_text().strip('\n\r ')+".git"; #h1userUnicodeStr= crifan
        print 'cloneit '+gitdir+'  '+gitAddr;
    

    #dirSoup = soup.find(name="h3", attrs={"class":"repo-list-name"});

def getAllGitAddresss():
    pages=['1','2','3','4','5'];
    testPages=['1'];
    for page in pages:
        gitUrl = 'https://github.com/android?page=%s' % (page);
       # print gitUrl;
        respHtml = getHtmlString(gitUrl);
        getGithubAddressAndDir(respHtml);

	

#------------------------------------------------------------------------------
def getHtmlString(url):
    testUserMainUrl = "https://github.com/android?page=1";
    req = urllib2.Request(url);
    resp = urllib2.urlopen(req);
    respHtml = resp.read();
    #print "respHtml=",respHtml; # you should see the ouput html
    return respHtml;



if __name__ == "__main__":
    #getHtmlString();
    #beautifulsoupDemo();

	getAllGitAddresss();
