/*
Goal: Overhead & Annoyance Escalation
False Positives: Potentially High
Prcessing Demand: Potentially High
Notes:
    - Identity = domain, url, email, cryptocurrency address, nicknames, account names, etc
    - Identiies may show up in different malware families than specified by the rule
    - Identities may be used as false flags
*/

rule INDICATOR_KB_ID_BazarLoader {
    meta:
        author = "ditekShen"
        description = "Detects Bazar executables with specific email addresses found in the code signing certificate"
    strings:
        $s1 = "skarabeyllc@gmail.com" ascii wide nocase
        $s2 = "admin@intell-it.ru" ascii wide nocase
        $s3 = "support@pro-kon.ru" ascii wide
    condition:
        uint16(0) == 0x5a4d and any of them
}

rule INDICATOR_KB_ID_QakBot {
    meta:
        author = "ditekShen"
        description = "Detects QakBot executables with specific email addresses found in the code signing certificate"
    strings:
        $s1 = "hutter.s94@yahoo.com" ascii wide nocase
        $s2 = "andrej.vrear@aol.com" ascii wide nocase
        $s3 = "klaus.pedersen@aol.com" ascii wide nocase
        $s4 = "a.spendl@aol.com" ascii wide nocase
        $s5 = "mjemec@aol.com" ascii wide nocase
        $s6 = "robert.sijanec@yahoo.com" ascii wide nocase
        $s7 = "mitja.vidovi@aol.com" ascii wide nocase
    condition:
        uint16(0) == 0x5a4d and any of them
}

rule INDICATOR_KB_ID_Amadey {
    meta:
        author = "ditekShen"
        description = "Detects Amadey executables with specific email addresses found in the code signing certificate"
    strings:
        $s1 = "tochka.director@gmail.com" ascii wide nocase
    condition:
        uint16(0) == 0x5a4d and any of them
}

rule INDICATOR_KB_ID_Ransomware_LockerGoga {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with LockerGoga ransomware"
    strings:
        $s1 = "abbschevis@protonmail.com" nocase ascii wide
        $s2 = "aperywsqaroci@o2.pl" nocase ascii wide
        $s3 = "asuxidoruraep1999@o2.pl" nocase ascii wide
        $s4 = "dharmaparrack@protonmail.com" nocase ascii wide
        $s5 = "ijuqodisunovib98@o2.pl" nocase ascii wide
        $s6 = "mayarchenot@protonmail.com" nocase ascii wide
        $s7 = "mikllimiteds@gmail.com0" nocase ascii wide
        $s8 = "phanthavongsaneveyah@protonmail.com" nocase ascii wide
        $s9 = "qicifomuejijika@o2.pl" nocase ascii wide
        $s10 = "rezawyreedipi1998@o2.pl" nocase ascii wide
        $s11 = "sayanwalsworth96@protonmail.com" nocase ascii wide
        $s12 = "suzumcpherson@protonmail.com" nocase ascii wide
        $s13 = "wyattpettigrew8922555@mail.com" nocase ascii wide
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_GoldenAxe {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with GoldenAxe ransomware"
    strings:
        $s1 = "xxback@keemail.me" nocase ascii wide
        $s2 = "darkusmbackup@protonmail.com" nocase ascii wide
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_GetCrypt {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with GetCrypt ransomware"
    strings:
        $s1 = "getcrypt@cock.li" nocase ascii wide
        $s2 = "cryptget@tutanota.com" nocase ascii wide
        $s3 = "cryptget@tutanota.com" nocase ascii wide
        $s4 = "offtitan@pm.me" nocase ascii wide
        $s5 = "offtitan@cock.li" nocase ascii wide
        $s6 = "un42@protonmail.com" nocase ascii wide
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_CryptoMix {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with CryptoMix ransomware"
    strings:
        $s1 = "portstatrelea1982@protonmail.om" ascii wide nocase
        $s2 = "unlock@eqaltech.su" ascii wide nocase
        $s3 = "unlock@royalmail.su" ascii wide nocase
        $s4 = "adexsin276@gmail.com" ascii wide nocase
        $s5 = "nbactocepnyou@protonmail.com" ascii wide nocase
        $s6 = "nunlock@eqaltech.su" ascii wide nocase
        $s7 = "nsnlock@royalmail.su" ascii wide nocase
        $s8 = "cersiacsofal@protonmail.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Buran {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with Buran ransomware"
    strings:
        $s1 = "recovery_server@protonmail.com" ascii wide nocase
        $s2 = "recovery1server@cock.li" ascii wide nocase
        $s3 = "polssh1@protonmail.com" ascii wide nocase
        $s4 = "polssh@protonmail.com" ascii wide nocase
        $s5 = "buransupport@exploit.im" ascii wide nocase
        $s6 = "buransupport@xmpp.jp" ascii wide nocase
        $s7 = "jacksteam2018@protonmail.com" ascii wide nocase
        $s8 = "notesteam2018@tutanota.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_RansomwareEXX {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with RansomwareEXX Linux ransomware"
    strings:
        $s1 = "france.eigs@protonmail.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Phobos {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with Phobos ransomware"
    strings:
        $s1 = "helprecover@foxmail.com" ascii wide nocase
        $s2 = "recoverhelp2020@thesecure.biz" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Epsilon {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with Epsilon ransomware"
    strings:
        $s1 = "neftet@tutanota.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Thanos {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with Thanos ransomware"
    strings:
        $s1 = "my-contact-email@protonmail.com" ascii wide nocase
        $s2 = "get-my-data@protonmail.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Vovalex {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with Vovalex ransomware"
    strings:
        $s1 = "vovanandlexus@cock.li" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_AlumniLocker {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with AlumniLocker ransomware"
    strings:
        $s1 = "alumnilocker@protonmail.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_DoejoCrypt {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with DoejoCrypt ransomware"
    strings:
        $s1 = "konedieyp@airmail.cc" ascii wide nocase
        $s2 = "uenwonken@memail.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Purge {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with Purge ransomware"
    strings:
        $s1 = "rscl@dr.com" ascii wide nocase
        $s2 = "rscl@usa.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Zeoticus {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with Zeoticus ransomware"
    strings:
        $s1 = "anobtanium@tutanota.com" ascii wide nocase
        $s2 = "anobtanium@cock.li" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_JobCryptor {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with JobCryptor ransomware"
    strings:
        $s1 = "olaggoune235@protonmail.ch" ascii wide nocase
        $s2 = "ouardia11@tutanota.com" ascii wide nocase
        $s3 = "laggouneo11@gmail.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Cuba {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with JobCryptor ransomware"
    strings:
        $s1 = "helpadmin2@protonmail.com" ascii wide nocase
        $s2 = "helpadmin2@cock.li" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Ransomware_Hello {
    meta:
        author = "ditekShen"
        description = "Detects files referencing identities associated with Hello / WickrMe ransomware"
    strings:
        $s1 = "emming@tutanota.com" ascii wide nocase
        $s2 = "ampbel@protonmail.com" ascii wide nocase
        $s3 = "asauribe@tutanota.com" ascii wide nocase
        $s4 = "candietodd@tutanota.com" ascii wide nocase
        $s5 = "kellyreiff@tutanota.com" ascii wide nocase
        $s6 = "kevindeloach@protonmail.com" ascii wide nocase
        $s7 = "sheilabeasley@tutanota.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_LNK_BOI_MAC {
    meta:
        author = "ditekSHen"
        description = "Detects Windows Shortcut .lnk files with previously known bad Birth Object ID and MAC address combination"
    strings:
        // Birth Object IDs
        $boi1 = { 2C ED AC EC 94 7A E8 11 9F DE 00 0C 29 A1 A9 40 }
        $boi2 = { 3F 54 89 18 46 CB E8 11 BD 0E 08 00 27 6D D5 D9 }
        $boi3 = { DE 63 02 FE 57 A2 E8 11 92 E8 5C F3 70 8B 16 F2 }
        $boi4 = { C2 CC 13 98 18 B9 E2 41 82 40 54 A8 AD E2 0A 9A }
        $boi5 = { C4 9D 3A D4 C2 29 3D 47 A9 20 EE A4 D8 A7 D8 7D }  // MineBridge
        $boi6 = { E4 51 EC 20 66 61 EA 11 85 CD B2 FC 36 31 EE 21 }  // MineBridge
        $boi7 = { 6E DD CE 86 0F 07 90 4B AF 18 38 2F 97 FB 53 62 }  // ZINC
        $boi8 = { 25 41 87 AE F1 D2 EA 11 93 97 00 50 56 C0 00 08 }  // ZINC
        $boi9 = { C4 9D 3A D4 C2 29 3D 47 A9 20 EE A4 D8 A7 D8 7D }  // finger.exe dropper
        $boi10 = { 5C 46 EC 05 A6 60 EB 11 85 EB 8C 16 45 31 19 7F } // finger.exe dropper
        $boi11 = { 30 8B 17 86 9B 35 C5 40 A7 9D 48 5C D6 3D F3 5C } // CULNADY LTD LTD
        $boi12 = { E5 21 1D 04 9D A4 E9 11 A9 37 00 0C 29 0F 29 89 } // CULNADY LTD LTD
        // Mac Addresses
        $mac1 = { 00 0C 29 A1 A9 40 }
        $mac2 = { 08 00 27 6D D5 D9 }
        $mac3 = { 5C F3 70 8B 16 F2 }
        $mac4 = { 00 0C 29 5A 39 04 }
        $mac5 = { B2 FC 36 31 EE 21 } // MineBridge
        $mac6 = { 00 50 56 C0 00 08 } // ZINC
        $mac7 = { 8C 16 45 31 19 7F } // finger.exe dropper
        $mac8 = { 00 0C 29 0F 29 89 } // CULNADY LTD LTD
    condition:
      uint16(0) == 0x004c and uint32(4) == 0x00021401 and filesize < 3KB and (1 of ($boi*) and 1 of ($mac*))
}

rule INDICATOR_KB_ID_PowerShellSMTPKeyLogger {
    meta:
        author = "ditekShen"
        description = "Detects email accounts used for exfiltration observed in PowerShellSMTPKeyLogger"
    strings:
        $s1 = "tinytim10110110@gmail.com" ascii wide nocase
        $s2 = "noreplay.info.01@gmail.com" ascii wide nocase
        $s3 = "krzarpon@mail.com" ascii wide nocase
        $s4 = "m.sumaree.2019@gmail.com" ascii wide nocase
        $s5 = "joezaonly@mail.com" ascii wide nocase
        $s6 = "setiaadin2@gmail.com" ascii wide nocase
        $s7 = "nastain.annas86@gmail.com" ascii wide nocase
        $s8 = "fef.federfico@gmail.com" ascii wide nocase
        $s9 = "imacatandadog@protonmail.com" ascii wide nocase
        $s10 = "varun.sa2007@gmail.com" ascii wide nocase
        $s11 = "thefog_66@yahoo.com" ascii wide nocase
        $s12 = "abdulla.abousaif@gmail.com" ascii wide nocase
        $s13 = "nastain.annas2019@gmail.com" ascii wide nocase
        $s14 = "defensauser1@gmail.com" ascii wide nocase
        $s15 = "defensauser2@gmail.com" ascii wide nocase
        $s16 = "naujienustritis@gmail.com" ascii wide nocase
        $s17 = "geraskazkas@gmail.com" ascii wide nocase
        $s18 = "mertisnietgay@hotmail.com" ascii wide nocase
        $s19 = "mertakdag06@hotmail.com" ascii wide nocase
        $s20 = "balbllla238@gmail.com" ascii wide nocase
        $s21 = "christian.vorhofer@yahoo.de" ascii wide nocase
        $s22 = "estudupy@gmail.com" ascii wide nocase
        $s23 = "lolmacteur1@gmail.com" ascii wide nocase
        $s24 = "lolmacteur@gmail.com" ascii wide nocase
        $s25 = "ouhoo.fabio@gmail.com" ascii wide nocase
        $s36 = "yenghele@gmail.com" ascii wide nocase
        $s37 = "mr42hacker@gmail.com" ascii wide nocase
        $s38 = "gouthams024@gmail.com" ascii wide nocase
        $s39 = "ameycsgo@gmail.com" ascii wide nocase
        $s40 = "joselusov@gmail.com" ascii wide nocase
        $s41 = "joseluissov@gmail.com" ascii wide nocase
        $s42 = "tonitravels7@gmail.com" ascii wide nocase
        $s43 = "jaanuspaan@gmail.com" ascii wide nocase
        $s44 = "pastaktuu@gmail.com" ascii wide nocase
        $s45 = "achyutha.nr10@gmail.com" ascii wide nocase
        $s46 = "nikalgraid@gmail.com" ascii wide nocase
        $s47 = "user1@mail.com" ascii wide nocase
        $s48 = "democyber@kermeur.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_PowerShellWiFiStealer {
    meta:
        author = "ditekShen"
        description = "Detects email accounts used for exfiltration observed in PowerShellWiFiStealer"
    strings:
        $s1 = "hajdebebreidekreide@gmail.com" ascii wide nocase
        $s2 = "usb@pterobot.net" ascii wide nocase
        $s3 = "umairdadaber@gmail.com" ascii wide nocase
        $s4 = "mrumairok@gmail.com" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_ID_Infostealer {
    meta:
        author = "ditekshen"
        description = "Detects exfiltration email addresses correlated from various infostealers. The same email can be observed in multiple families."
        source = "https://github.com/ditekshen/is-wos"
    strings:
        $account1 = "2020@website-practise.site" ascii wide nocase
        $account2 = "abidshah@comsats.net.pk" ascii wide nocase
        $account3 = "ableface2020@originloger.com" ascii wide nocase
        $account4 = "aboyo@akonuchenwam.org" ascii wide nocase
        $account5 = "aboyo@jakartta.xyz" ascii wide nocase
        $account6 = "aboy_origin@originloger.com" ascii wide nocase
        $account7 = "abs00001@nedtek.com.au" ascii wide nocase
        $account8 = "abu@akonuchenwam.org" ascii wide nocase
        $account9 = "accountant@medoermw.org" ascii wide nocase
        $account10 = "account.info1000@yandex.com" ascii wide nocase
        $account11 = "accounting@americantrevalerinc.com" ascii wide nocase
        $account12 = "accounting.dubai@vipparkingcontrol.com" ascii wide nocase
        $account13 = "accounts2@oilexindia.com" ascii wide nocase
        $account14 = "accounts@friendships-ke.icu" ascii wide nocase
        $account15 = "accounts@hitechnocrats.com" ascii wide nocase
        $account16 = "accounts@islandkingpools.com" ascii wide nocase
        $account17 = "acct1@dwdl.com.bd" ascii wide nocase
        $account18 = "acid-origin@agavecomquista.com" ascii wide nocase
        $account19 = "acksonjogodo121@yandex.com" ascii wide nocase
        $account20 = "admin1@haveusearotech.com" ascii wide nocase
        $account21 = "admin@bazciproduct.com" ascii wide nocase
        $account22 = "admin@cairoways.me" ascii wide nocase
        $account23 = "admin@evapimpcoltd.pw" ascii wide nocase
        $account24 = "admin@forexcoinstrade.com" ascii wide nocase
        $account25 = "admin@ge-lndustry.com" ascii wide nocase
        $account26 = "administracion@ada.org.do" ascii wide nocase
        $account27 = "administrator@dachanq.cc" ascii wide nocase
        $account28 = "admin@log70.com" ascii wide nocase
        $account29 = "a.elayan@abuodahbros.com" ascii wide nocase
        $account30 = "ahmadi@gheytarencarpet.com" ascii wide nocase
        $account31 = "albanello.n@latrivenetecavi.com" ascii wide nocase
        $account32 = "alexis@acmecarp.com" ascii wide nocase
        $account33 = "al_ghamaz@besco.com.sa" ascii wide nocase
        $account34 = "Alibabalogs657@yandex.com" ascii wide nocase
        $account35 = "alimatata@innovecera.com" ascii wide nocase
        $account36 = "alvin.kwek@agifreiqht.com" ascii wide nocase
        $account37 = "amani@jkamani.xyz" ascii wide nocase
        $account38 = "amani@platinships.net" ascii wide nocase
        $account39 = "amara@ike2020.xyz" ascii wide nocase
        $account40 = "ampall@ampail.com" ascii wide nocase
        $account41 = "anderson@flsrnidth.com" ascii wide nocase
        $account42 = "andres.verde@us-durags.com" ascii wide nocase
        $account43 = "anger@canvanatransport.com" ascii wide nocase
        $account44 = "angolkar.milind@netalkar.co.in" ascii wide nocase
        $account45 = "annwilso@yandex.com" ascii wide nocase
        $account46 = "apisiylo@innovecera.com" ascii wide nocase
        $account47 = "arabioep@arabianwebdesigner.com" ascii wide nocase
        $account48 = "araf@crowncontainerbd.icu" ascii wide nocase
        $account49 = "armani@novaa-ship.com" ascii wide nocase
        $account50 = "armani@platinships.net" ascii wide nocase
        $account51 = "ashaambrose@suryatravels.com" ascii wide nocase
        $account52 = "ashley_haywood@baplhvac-uk.com" ascii wide nocase
        $account53 = "auth@deepsaeemirates.com" ascii wide nocase
        $account54 = "baroda@ultrafilterindia.com" ascii wide nocase
        $account55 = "bbstar@exploits.site" ascii wide nocase
        $account56 = "bd@adityaprinters.com" ascii wide nocase
        $account57 = "bellalice897@gmail.com" ascii wide nocase
        $account58 = "beni@ddimnepal.com" ascii wide nocase
        $account59 = "best-success@pure-energy.site" ascii wide nocase
        $account60 = "billions@cairoways.me" ascii wide nocase
        $account61 = "billionvain@yandex.com" ascii wide nocase
        $account62 = "binu@metalfabme.icu" ascii wide nocase
        $account63 = "binu@metalfabne.com" ascii wide nocase
        $account64 = "blessing@energistx.com" ascii wide nocase
        $account65 = "blr@saharaexpress.com" ascii wide nocase
        $account66 = "bob@metalfabme.icu" ascii wide nocase
        $account67 = "bosswell@guiarapidopublicidade.com.br" ascii wide nocase
        $account68 = "boxblessings7744@yandex.com" ascii wide nocase
        $account69 = "boymouse@yandex.com" ascii wide nocase
        $account70 = "brajesh@cropchemicals.co.in" ascii wide nocase
        $account71 = "bright@paigelectric.com" ascii wide nocase
        $account72 = "bring4@universalinks.net" ascii wide nocase
        $account73 = "bring@kagabo.net" ascii wide nocase
        $account74 = "bringlogs@kassohome.com.tr" ascii wide nocase
        $account75 = "brooyu1@larbaxpo.com" ascii wide nocase
        $account76 = "brooyu@larbaxpo.com" ascii wide nocase
        $account77 = "brunolugnani@arrmet.in" ascii wide nocase
        $account78 = "b.stojanov@opstinagpetrov.gov.mk" ascii wide nocase
        $account79 = "Burna@filelog.info" ascii wide nocase
        $account80 = "caa-cherryhuang@pairsigs.com" ascii wide nocase
        $account81 = "caglar@lidyatriko-com.me" ascii wide nocase
        $account82 = "caglar@lidyatriko-tr.pw" ascii wide nocase
        $account83 = "candolkar.p@tecnicasreunidas-es.co" ascii wide nocase
        $account84 = "carolyne@dandopub.mu" ascii wide nocase
        $account85 = "celal@lidyatriko-com.me" ascii wide nocase
        $account86 = "cesar@eco-mania.es" ascii wide nocase
        $account87 = "challa@obazolu-ovim.pw" ascii wide nocase
        $account88 = "chankey@salasarlamlnates.com" ascii wide nocase
        $account89 = "charif.yassin@cronimet.me" ascii wide nocase
        $account90 = "charlesxmoni@yandex.com" ascii wide nocase
        $account91 = "chellapandian@insooryaexpresscargo.com" ascii wide nocase
        $account92 = "chidera@rankywise.com" ascii wide nocase
        $account93 = "chi.eb@yandex.com" ascii wide nocase
        $account94 = "chi@jia-ilda.com" ascii wide nocase
        $account95 = "chijiokejackson121@yandex.com" ascii wide nocase
        $account96 = "chima@oscarule.xyz" ascii wide nocase
        $account97 = "chima@platinships.net" ascii wide nocase
        $account98 = "chinaloggers@juili-tw.com" ascii wide nocase
        $account99 = "chinapeace@yandex.com" ascii wide nocase
        $account100 = "chinatueddy@yandex.ru" ascii wide nocase
        $account101 = "christelle.bertelle@merrsen.com" ascii wide nocase
        $account102 = "christian.ferretti@fox-it.me" ascii wide nocase
        $account103 = "chukiebro@intarscan.org" ascii wide nocase
        $account104 = "cjmyguy@yandex.com" ascii wide nocase
        $account105 = "ck@bconductt.icu" ascii wide nocase
        $account106 = "ck@kingmezz.xyz" ascii wide nocase
        $account107 = "ck@kingzmez.xyz" ascii wide nocase
        $account108 = "ck@nxtlevel.xyz" ascii wide nocase
        $account109 = "ck@sonofgrace.website" ascii wide nocase
        $account111 = "clairemoon333@yandex.com" ascii wide nocase
        $account112 = "clark@flood-protection.org" ascii wide nocase
        $account113 = "comm1@dwdl.com.bd" ascii wide nocase
        $account114 = "com.manager@mzrnbd.com" ascii wide nocase
        $account115 = "confirmed@graduate.org" ascii wide nocase
        $account116 = "contabilidad@interexpress.us" ascii wide nocase
        $account117 = "contact@assocham.icu" ascii wide nocase
        $account118 = "contact@euramtec.pw" ascii wide nocase
        $account119 = "contact@gcco.dz" ascii wide nocase
        $account120 = "Contact@xchi1.xyz" ascii wide nocase
        $account121 = "c.rannone@mechatron-gmbh.ga" ascii wide nocase
        $account122 = "crm.sal@suprajit.me" ascii wide nocase
        $account123 = "crowns@kennycorping.com" ascii wide nocase
        $account124 = "cruizjames@yandex.ru" ascii wide nocase
        $account125 = "cso@drngetu.co.za" ascii wide nocase
        $account126 = "cspuri@searchnet.co.in" ascii wide nocase
        $account127 = "cupjul@yandex.com" ascii wide nocase
        $account128 = "cv@bandaichemical.com" ascii wide nocase
        $account129 = "dabo@anding-tw.com" ascii wide nocase
        $account130 = "daeshinpharm@koreamail.com" ascii wide nocase
        $account131 = "dalfaro@hilmarcheeze.com" ascii wide nocase
        $account132 = "dave1@emmannar.com" ascii wide nocase
        $account133 = "dave@emmannar.com" ascii wide nocase
        $account134 = "david@damienzy.xyz" ascii wide nocase
        $account135 = "db2@blacksea.red" ascii wide nocase
        $account136 = "dcaicedo@igihm.icu" ascii wide nocase
        $account137 = "ddd@pehledinekam.com" ascii wide nocase
        $account138 = "default@espiralrelojoaria.com" ascii wide nocase
        $account139 = "destiny@altrii.com" ascii wide nocase
        $account140 = "dhadjazi@adenerqyeurope.co.uk" ascii wide nocase
        $account141 = "dhruv@oxse.in" ascii wide nocase
        $account142 = "director@elsemillero.org.bo" ascii wide nocase
        $account143 = "director@medormw.org" ascii wide nocase
        $account144 = "dispatch.lko@perfectgenerators.com" ascii wide nocase
        $account145 = "docs@hdtrans.me" ascii wide nocase
        $account146 = "documents@mygoldenaegle.com" ascii wide nocase
        $account147 = "dogdollars@jakartta.xyz" ascii wide nocase
        $account148 = "doggy@kingmezz.xyz" ascii wide nocase
        $account149 = "dogman@akonuchenwam.org" ascii wide nocase
        $account150 = "dom@flood-protection.org" ascii wide nocase
        $account151 = "donga3@dongaseimcon.com" ascii wide nocase
        $account152 = "don@platinships.net" ascii wide nocase
        $account153 = "don@qatarpharmas.org" ascii wide nocase
        $account154 = "doreen.muhebwa@microhaem-ug.co" ascii wide nocase
        $account155 = "dream@dstec.mx" ascii wide nocase
        $account156 = "dutch@dutchworld.space" ascii wide nocase
        $account157 = "ea@littleitaly.co.in" ascii wide nocase
        $account158 = "ebase@novaa-ship.com" ascii wide nocase
        $account159 = "e.fasciani@waltartosto.com" ascii wide nocase
        $account160 = "eileen@blowtac-tw.com" ascii wide nocase
        $account161 = "elber@wtsele.net" ascii wide nocase
        $account162 = "elekus2020@aerotacctvn.com" ascii wide nocase
        $account163 = "elhandasya@ppe-eg.com" ascii wide nocase
        $account164 = "elmali@bikossoft.me" ascii wide nocase
        $account165 = "elviemarquez@ontime.com.ph" ascii wide nocase
        $account166 = "emingles@ilclaw.com.ph" ascii wide nocase
        $account167 = "em@inpark.rs" ascii wide nocase
        $account168 = "emma@garnishmaster.com" ascii wide nocase
        $account169 = "enquiry@waman.in" ascii wide nocase
        $account170 = "e.pezzli@giivin.com" ascii wide nocase
        $account171 = "e.pezzoli@giivin.com" ascii wide nocase
        $account172 = "esime77@yandex.com" ascii wide nocase
        $account173 = "eurotoolz@returntolz.com" ascii wide nocase
        $account174 = "everson@agpmeats.com" ascii wide nocase
        $account175 = "export@ametexegypts.info" ascii wide nocase
        $account176 = "export@bristol-fire.co" ascii wide nocase
        $account177 = "eze@burststreamwq1.website" ascii wide nocase
        $account178 = "eze@miketony-tw.com" ascii wide nocase
        $account179 = "fallin@damllakimya.com" ascii wide nocase
        $account180 = "faltelecom@faltelecom.com" ascii wide nocase
        $account181 = "faruq@eagleeyeapparels.com" ascii wide nocase
        $account182 = "feco@ike2020.xyz" ascii wide nocase
        $account183 = "ffangfang@yandex.com" ascii wide nocase
        $account184 = "fffffffgggd@yandex.com" ascii wide nocase
        $account185 = "fido@edifler.xyz" ascii wide nocase
        $account186 = "fido@flood-protection.org" ascii wide nocase
        $account187 = "finance@enmark.com.my" ascii wide nocase
        $account188 = "finance@manunggalkaroseri.com" ascii wide nocase
        $account189 = "finance@supreme-sg.icu" ascii wide nocase
        $account190 = "finance@wowwow.com.sg" ascii wide nocase
        $account191 = "fletcherjohnsgt@gmail.com" ascii wide nocase
        $account192 = "flo@novaa-ship.com" ascii wide nocase
        $account193 = "flo@qatarpharmas.org" ascii wide nocase
        $account194 = "francis@burststreamwq1.website" ascii wide nocase
        $account195 = "frank.got@yandex.ru" ascii wide nocase
        $account196 = "frankvanderloop@swannberg.com" ascii wide nocase
        $account197 = "freshclinton8269@yandex.com" ascii wide nocase
        $account198 = "fresh.italian@yandex.com" ascii wide nocase
        $account199 = "fti@alltoplighting.icu" ascii wide nocase
        $account200 = "fuckoff@jpme.org.in" ascii wide nocase
        $account201 = "fxxxfuz@yandex.com" ascii wide nocase
        $account202 = "gabandtee@gmail.com" ascii wide nocase
        $account203 = "gamzy@alliadintl.com" ascii wide nocase
        $account204 = "garang@platinships.net" ascii wide nocase
        $account205 = "gavin@jandregon.com" ascii wide nocase
        $account206 = "gayathri@gcs.co.in" ascii wide nocase
        $account207 = "g.cavitelli@sicim.icu" ascii wide nocase
        $account208 = "genaral1122@yandex.ru" ascii wide nocase
        $account209 = "genuxpc@yandex.com" ascii wide nocase
        $account210 = "geoff.farnsworth@holdlngredlich.com" ascii wide nocase
        $account211 = "gerencia@groupoinkafoods.com" ascii wide nocase
        $account212 = "gestionesolleciti@pec-warrantgroup.icu" ascii wide nocase
        $account213 = "globals@btconrnect.com" ascii wide nocase
        $account214 = "glowhub@yandex.com" ascii wide nocase
        $account215 = "godie@cjcurrent.com" ascii wide nocase
        $account216 = "godwiill@serviceconsutant.com" ascii wide nocase
        $account217 = "g.oikonomopoulos@kordelos-gr.co" ascii wide nocase
        $account218 = "gold@prismindia.in" ascii wide nocase
        $account219 = "Goodluck2k20@yandex.com" ascii wide nocase
        $account220 = "governor@totallyanonymous.com" ascii wide nocase
        $account221 = "gozmanhen@na-superhrd.com" ascii wide nocase
        $account222 = "grace_pan@traingle-cn.com" ascii wide nocase
        $account223 = "grant3@leltbank.com" ascii wide nocase
        $account224 = "greenpark@ibc.by" ascii wide nocase
        $account225 = "gsamuel@nationalportservices.cam" ascii wide nocase
        $account226 = "gulden@corinox.com.tr" ascii wide nocase
        $account227 = "hany_henien@spppumps.co" ascii wide nocase
        $account228 = "health.safety@seabeachaquaparkssh.com" ascii wide nocase
        $account229 = "hebert@protenginstalacoes.com.br" ascii wide nocase
        $account230 = "hgalvan@vacontgo.com" ascii wide nocase
        $account231 = "h.hennet@glovadus.com" ascii wide nocase
        $account232 = "hhhpp@eloelokendi.com" ascii wide nocase
        $account233 = "hitendra@galaxypharma-co-ke.pw" ascii wide nocase
        $account234 = "hm@acroative.com" ascii wide nocase
        $account235 = "hoa.vu@goodland.com.vn" ascii wide nocase
        $account236 = "hoke.sales01@gmail.com" ascii wide nocase
        $account237 = "holyman@abiste.biz" ascii wide nocase
        $account238 = "houstondavidson@yandex.com" ascii wide nocase
        $account239 = "hp@deepsaeemirates.com" ascii wide nocase
        $account240 = "hselimoglu@bmssrevis.com" ascii wide nocase
        $account241 = "huangjianping@chinacables.icu" ascii wide nocase
        $account242 = "humbato01@rezuit.pro" ascii wide nocase
        $account243 = "hussam.odeh@temico-mep.com" ascii wide nocase
        $account244 = "hybrid@agavecomquista.com" ascii wide nocase
        $account245 = "hybrid-appsuit@alliadintl.com" ascii wide nocase
        $account246 = "ibile2@eimarwafoods.com" ascii wide nocase
        $account247 = "ihgungor@3enaluminyum.com.tr" ascii wide nocase
        $account248 = "ihshamsa@ironhandco.com" ascii wide nocase
        $account249 = "ijaz@hsisteels.com" ascii wide nocase
        $account250 = "ikostadinov@cargoair.bg" ascii wide nocase
        $account251 = "ikpc1@yandex.com" ascii wide nocase
        $account252 = "ikuku@poylone.com" ascii wide nocase
        $account253 = "ilario@sobreroartigrafiche.com" ascii wide nocase
        $account254 = "import22.export@yandex.com" ascii wide nocase
        $account255 = "imports@eastendfood-uk.icu" ascii wide nocase
        $account256 = "imports@techin.icu" ascii wide nocase
        $account257 = "info23@huatengaccessfloor.icu" ascii wide nocase
        $account258 = "info@abuodehbros.co" ascii wide nocase
        $account259 = "info@afinoxdesign.com" ascii wide nocase
        $account260 = "info@agri-chernicals.net" ascii wide nocase
        $account261 = "info@amazirgind.com" ascii wide nocase
        $account262 = "info@americantrevalerinc.com" ascii wide nocase
        $account263 = "info@amethishipping.com" ascii wide nocase
        $account264 = "info@aptraining.biz" ascii wide nocase
        $account265 = "info@chucksmode.us" ascii wide nocase
        $account266 = "info@comfortkids.in" ascii wide nocase
        $account267 = "infodec@lepta.website" ascii wide nocase
        $account268 = "info@dehydratedoniongarlic.com" ascii wide nocase
        $account269 = "info@excellent.ba" ascii wide nocase
        $account270 = "info@firstgradecourier.com" ascii wide nocase
        $account271 = "info@friendships-ke.icu" ascii wide nocase
        $account272 = "info@hajartrading.net" ascii wide nocase
        $account273 = "info@highestgame.us" ascii wide nocase
        $account274 = "info@hotelblu.es" ascii wide nocase
        $account275 = "info@hotelmadridtorrevieja.com" ascii wide nocase
        $account276 = "info@jaccontracting.com" ascii wide nocase
        $account277 = "info@legalcounselbd.com" ascii wide nocase
        $account278 = "info@marmarisferry.com" ascii wide nocase
        $account279 = "info@mondastudio.com" ascii wide nocase
        $account280 = "info.pana@yandex.com" ascii wide nocase
        $account281 = "info@pat.ps" ascii wide nocase
        $account282 = "info@peterpan.icu" ascii wide nocase
        $account283 = "info@pipingzone.com" ascii wide nocase
        $account284 = "info@primossofa.com" ascii wide nocase
        $account285 = "info@rangersfuel.xyz" ascii wide nocase
        $account286 = "info@rishichemlcals.com" ascii wide nocase
        $account287 = "informes1@maccinox.com" ascii wide nocase
        $account288 = "info@sankapatrol.com" ascii wide nocase
        $account289 = "info@sarahmarine.com" ascii wide nocase
        $account290 = "info@scientech.icu" ascii wide nocase
        $account291 = "info@transmeridian-sas.com" ascii wide nocase
        $account292 = "info@universalsolutions.co.ke" ascii wide nocase
        $account293 = "info@xopservices.com" ascii wide nocase
        $account294 = "inkyu@dubhe-kr.icu" ascii wide nocase
        $account295 = "iren159k@yandex.com" ascii wide nocase
        $account296 = "irina.macrotek@yandex.ru" ascii wide nocase
        $account297 = "i.sibrmiov@gmail.com" ascii wide nocase
        $account298 = "issac@anding-tw.com" ascii wide nocase
        $account299 = "itccoit@ite-gr.com" ascii wide nocase
        $account300 = "ivanhoe@wahana-adireksa.co.id" ascii wide nocase
        $account301 = "ivylee@bluesial.com" ascii wide nocase
        $account302 = "ivy.lim@leaderart-my.com" ascii wide nocase
        $account303 = "iykelog1@yandex.com" ascii wide nocase
        $account304 = "jacquelina.barisic@antolini.tk" ascii wide nocase
        $account305 = "jaffinmark@yandex.ru" ascii wide nocase
        $account306 = "jahbless@wonder-thailands.com" ascii wide nocase
        $account307 = "james.cho8282@yandex.com" ascii wide nocase
        $account308 = "jameshamilton7544@gmail.com" ascii wide nocase
        $account309 = "jamesmoore@ramseyjonesinc.website" ascii wide nocase
        $account310 = "jamie.swan@bethfels.org" ascii wide nocase
        $account311 = "jamit@cairoways.icu" ascii wide nocase
        $account312 = "jasmine@cinco.icu" ascii wide nocase
        $account313 = "jeff@gtp-us.com" ascii wide nocase
        $account314 = "jerryedward1@yandex.ru" ascii wide nocase
        $account315 = "jessicafaithjessica@yandex.com" ascii wide nocase
        $account316 = "jn@acroative.com" ascii wide nocase
        $account317 = "johana@qoldenhighway.com" ascii wide nocase
        $account318 = "johnsonpikyu@yandex.com" ascii wide nocase
        $account319 = "jojo@obazolu-ovim.pw" ascii wide nocase
        $account320 = "jojo@qatarpharmas.org" ascii wide nocase
        $account321 = "jplorrder@gmail.com" ascii wide nocase
        $account322 = "jplunkett@bellfilght.com" ascii wide nocase
        $account323 = "justin@allaceautoparts.me" ascii wide nocase
        $account324 = "kathrin.comanns@medoer.me" ascii wide nocase
        $account325 = "kay.john@list.ru" ascii wide nocase
        $account326 = "kelj@sunconx.com" ascii wide nocase
        $account327 = "kene@flyxpo.com" ascii wide nocase
        $account328 = "kftp@hustle360.a2hosted.com" ascii wide nocase
        $account329 = "khalid@besco.com.sa" ascii wide nocase
        $account330 = "khanh.to@goodland.com.vn" ascii wide nocase
        $account331 = "kings@dutchlogs.us" ascii wide nocase
        $account332 = "kingsley@vivaldi.net" ascii wide nocase
        $account333 = "kinlik@biznetvigat0r.com" ascii wide nocase
        $account334 = "kom.upakovkai@yandex.com" ascii wide nocase
        $account335 = "kqh@omibearing.com" ascii wide nocase
        $account336 = "k.reyes@otto-brandes-de.com" ascii wide nocase
        $account337 = "kshitij@activepumps.com" ascii wide nocase
        $account338 = "ks@koohejisafety.com" ascii wide nocase
        $account339 = "l3ebenard@yandex.com" ascii wide nocase
        $account340 = "lal@montaneshipping.com" ascii wide nocase
        $account341 = "laney@comero.us" ascii wide nocase
        $account342 = "larry@reportlog.top" ascii wide nocase
        $account343 = "laurent@aero-cabln.com" ascii wide nocase
        $account344 = "lawman7070@yandex.com" ascii wide nocase
        $account345 = "lchandra@bazciproduct.com" ascii wide nocase
        $account346 = "lcp-sb@lysaghtgroup.com" ascii wide nocase
        $account347 = "leaveboard@usamilitarydept.com" ascii wide nocase
        $account348 = "leo@wzwinton.com" ascii wide nocase
        $account349 = "lightbabamusic@gmail.com" ascii wide nocase
        $account350 = "lightmusic12345@yandex.ru" ascii wide nocase
        $account351 = "limcor@le-belt.co.za" ascii wide nocase
        $account352 = "loggers@sitechukandlreland.com" ascii wide nocase
        $account353 = "logistics@galaxypharma-co-ke.pw" ascii wide nocase
        $account354 = "logo@fendaleltd.com" ascii wide nocase
        $account355 = "logs2020@gtbenk-plc.com" ascii wide nocase
        $account356 = "logsdetails0@yandex.com" ascii wide nocase
        $account357 = "logs@s-lbeautycare-az.com" ascii wide nocase
        $account358 = "logs@virqomedical.com" ascii wide nocase
        $account359 = "lot1567@okgrocer.co.za" ascii wide nocase
        $account360 = "lo.terence@qst-hk.com" ascii wide nocase
        $account361 = "luc4smail@yandex.com" ascii wide nocase
        $account362 = "lucinedauglas@yandex.com" ascii wide nocase
        $account363 = "magagraceman@yandex.ru" ascii wide nocase
        $account364 = "magaza@sardunyakoltuk.com" ascii wide nocase
        $account365 = "mahesh@cpmindia.co.in" ascii wide nocase
        $account366 = "mail@jiratane.com" ascii wide nocase
        $account367 = "mails@tashipta.com" ascii wide nocase
        $account368 = "manan@desmaindian.com" ascii wide nocase
        $account369 = "manman@akonuchenwam.org" ascii wide nocase
        $account370 = "manofficialbless@jakartta.xyz" ascii wide nocase
        $account371 = "marbella@copyrap.com" ascii wide nocase
        $account372 = "marcel.melis@axolta.com" ascii wide nocase
        $account373 = "marianakllici@albaniandailynews.com" ascii wide nocase
        $account374 = "marine@theroyalsandskohrong.com" ascii wide nocase
        $account375 = "marisa@stemsfruit-za.com" ascii wide nocase
        $account376 = "martinez@jakartta.xyz" ascii wide nocase
        $account377 = "martinze@akonuchenwam.org" ascii wide nocase
        $account378 = "massin.madi@gl0beactiveltd.com" ascii wide nocase
        $account379 = "may.buhaisi@phillqs.com" ascii wide nocase
        $account380 = "may@scandinavian-collection.com" ascii wide nocase
        $account381 = "md@barclarysbank-uk.com" ascii wide nocase
        $account382 = "mdx@drngetu.co.za" ascii wide nocase
        $account383 = "meekmil@crawfordjamaica.com" ascii wide nocase
        $account384 = "member@gs1id.org" ascii wide nocase
        $account385 = "menelogs@artiinox.com" ascii wide nocase
        $account386 = "menu@nsmelectronics.com" ascii wide nocase
        $account387 = "m.gorecka@criiteo.com" ascii wide nocase
        $account388 = "michellej@fernsturm.com" ascii wide nocase
        $account389 = "mic@qatarpharmas.org" ascii wide nocase
        $account390 = "miguelipscc@gmail.com" ascii wide nocase
        $account391 = "milli@exploits.site" ascii wide nocase
        $account392 = "milllogs@ilserreno.com" ascii wide nocase
        $account393 = "mobi@blessedinc.xyz" ascii wide nocase
        $account394 = "mobile.mailer@yandex.com" ascii wide nocase
        $account395 = "mobite@akonuchenwam.org" ascii wide nocase
        $account396 = "mobiteeuro@jakartta.xyz" ascii wide nocase
        $account397 = "moin.ansari@sapgroup.com.pk" ascii wide nocase
        $account398 = "money@zellico.com" ascii wide nocase
        $account399 = "mor440ney@yandex.com" ascii wide nocase
        $account400 = "morrishome1@yandex.com" ascii wide nocase
        $account401 = "mpa@cairoways.me" ascii wide nocase
        $account402 = "mrlogga@phoenixloger.com" ascii wide nocase
        $account403 = "mr.mikeorigin@logsresultbox.xyz" ascii wide nocase
        $account404 = "mrmkm1234@creacionesjlyr.com" ascii wide nocase
        $account405 = "msg@acroative.com" ascii wide nocase
        $account406 = "muhasebe@primossofa.com" ascii wide nocase
        $account407 = "mujeeb@kteadubai.com" ascii wide nocase
        $account408 = "mullarwhite@yandex.com" ascii wide nocase
        $account409 = "mulualem@dssadis.com" ascii wide nocase
        $account411 = "mumbai@shreejitransport.com" ascii wide nocase
        $account412 = "murti@alvadiwipa.com" ascii wide nocase
        $account413 = "naci@turkrom.xyz" ascii wide nocase
        $account414 = "ncho@dormakeba.com" ascii wide nocase
        $account415 = "nd@pantheomtankers.com" ascii wide nocase
        $account416 = "nd@wtaxtraction.com" ascii wide nocase
        $account417 = "nednwoko@akonuchenwam.org" ascii wide nocase
        $account418 = "nednwokoro@jakartta.xyz" ascii wide nocase
        $account419 = "neo.ycwang@mindroy.com" ascii wide nocase
        $account420 = "newbrand@emaillogs.top" ascii wide nocase
        $account421 = "newbrand-file@strykeir.com" ascii wide nocase
        $account422 = "nicholas@btconrnect.com" ascii wide nocase
        $account423 = "nicolas.verbruggen@s0udal.com" ascii wide nocase
        $account424 = "nilesh@friendships-ke.icu" ascii wide nocase
        $account425 = "nisanelactricals.pro@gmail.com" ascii wide nocase
        $account426 = "nispapa@eriiell.com" ascii wide nocase
        $account427 = "ntums@talleresmartos.com" ascii wide nocase
        $account428 = "nu@acroative.com" ascii wide nocase
        $account429 = "nurifrost556@gmail.com" ascii wide nocase
        $account430 = "nursah.cinci@inoksan-tr.com" ascii wide nocase
        $account431 = "nwekeboxs@fiscalitate.eu" ascii wide nocase
        $account432 = "nwekeboxs@tehnopan.rs" ascii wide nocase
        $account433 = "nx@acroative.com" ascii wide nocase
        $account434 = "obielvosky@jakartta.xyz" ascii wide nocase
        $account435 = "obino@akonuchenwam.org" ascii wide nocase
        $account436 = "obinwerego@tvnqsram.com" ascii wide nocase
        $account437 = "obi@schrodersbnk-uk.com" ascii wide nocase
        $account438 = "obo@flood-protection.org" ascii wide nocase
        $account439 = "obuman@akonuchenwam.org" ascii wide nocase
        $account440 = "obuzsolidcash@jakartta.xyz" ascii wide nocase
        $account441 = "ofcelendin@gtelecable.com" ascii wide nocase
        $account442 = "office@conshipping.ro" ascii wide nocase
        $account443 = "office@mediurge.com" ascii wide nocase
        $account444 = "ogsteve@airuhomes.com" ascii wide nocase
        $account445 = "okirikirijp@vivaldi.net" ascii wide nocase
        $account446 = "okirinwajesus@yandex.com" ascii wide nocase
        $account447 = "olamx@obazolu-ovim.pw" ascii wide nocase
        $account448 = "olmx@obazolu-ovim.pw" ascii wide nocase
        $account449 = "omar.alhomsi@gpgolbal.com" ascii wide nocase
        $account450 = "omer@alfanoos.com.sa" ascii wide nocase
        $account451 = "omeudo@intarscan.org" ascii wide nocase
        $account452 = "omkar@jdc.net.in" ascii wide nocase
        $account453 = "omoba@eurocell.us" ascii wide nocase
        $account454 = "one@connectus-trade.net" ascii wide nocase
        $account455 = "onlineboxmonitor1@tehnopan.rs" ascii wide nocase
        $account456 = "onlineboxmonitor@fiscalitate.eu" ascii wide nocase
        $account457 = "onlineboxmonitor@tehnopan.rs" ascii wide nocase
        $account459 = "onlinemonitor4@yandex.com" ascii wide nocase
        $account460 = "operation@manex-ist.cf" ascii wide nocase
        $account461 = "operations@fakly-cambodia.com" ascii wide nocase
        $account462 = "orders@shrc-india.com" ascii wide nocase
        $account463 = "oriego1@yandex.ru" ascii wide nocase
        $account464 = "origin4@coducation.com.my" ascii wide nocase
        $account465 = "origin6@coducation.com.my" ascii wide nocase
        $account466 = "original@aydangroup.com.my" ascii wide nocase
        $account467 = "original@dadatiles.com.au" ascii wide nocase
        $account468 = "originmoney@ambreh.com" ascii wide nocase
        $account469 = "origin@panpatmos.co.id" ascii wide nocase
        $account470 = "oscar1@zeenatlnc.com" ascii wide nocase
        $account471 = "otupayachi@cognitioperu.com" ascii wide nocase
        $account472 = "ourplastic22@gmail.com" ascii wide nocase
        $account473 = "panos@skepsis-sg.icu" ascii wide nocase
        $account474 = "parisa@abarsiava.com" ascii wide nocase
        $account475 = "passjones@yandex.com" ascii wide nocase
        $account476 = "pauline.vostropiatova@yandex.com" ascii wide nocase
        $account477 = "pavan@besco.com.sa" ascii wide nocase
        $account478 = "pcs1@deepsaeemirates.com" ascii wide nocase
        $account479 = "pcs@deepsaeemirates.com" ascii wide nocase
        $account480 = "pedroalex716@gmail.com" ascii wide nocase
        $account481 = "pee@chemshire.org" ascii wide nocase
        $account482 = "petersonhouston@yandex.com" ascii wide nocase
        $account483 = "phyno@obazolu-ovim.pw" ascii wide nocase
        $account484 = "phyno@platinships.net" ascii wide nocase
        $account485 = "pin@aptraining.biz" ascii wide nocase
        $account486 = "pmuriithi@gammavilla.org" ascii wide nocase
        $account487 = "p.origin@yandex.com" ascii wide nocase
        $account488 = "postmaster@unitedparcelsservices.com" ascii wide nocase
        $account489 = "pov@rianbowmax.com" ascii wide nocase
        $account490 = "ppdata@goldenfance.com" ascii wide nocase
        $account491 = "ppuri@searchnet.co.in" ascii wide nocase
        $account492 = "practice@webdesign-class.site" ascii wide nocase
        $account493 = "pranav.patel@ultrafilterindia.com" ascii wide nocase
        $account494 = "prashant@gopaldasvisram.com" ascii wide nocase
        $account495 = "presh@anding-tw.com" ascii wide nocase
        $account496 = "presp@emss.us" ascii wide nocase
        $account497 = "princelog@mangero.xyz" ascii wide nocase
        $account498 = "produccion@servalec-com.me" ascii wide nocase
        $account499 = "proizvodnja@nokachi.rs" ascii wide nocase
        $account500 = "proyectos@santiagogarcia.es" ascii wide nocase
        $account501 = "pulsit.c@spinteng.com" ascii wide nocase
        $account502 = "purchase@djindustries.net" ascii wide nocase
        $account503 = "purchase@gomoswa.com" ascii wide nocase
        $account504 = "purchasing@siicegypt.com" ascii wide nocase
        $account505 = "qatar@continentalmanpower.com" ascii wide nocase
        $account506 = "ramkumar@advoicemediaworks.com" ascii wide nocase
        $account507 = "randy@raymond-john.com" ascii wide nocase
        $account508 = "ranger2@amisglobaltransport.com" ascii wide nocase
        $account509 = "ranger@canvanatransport.com" ascii wide nocase
        $account510 = "ranger_log@tendertradeforex.co.uk" ascii wide nocase
        $account511 = "ranger@seltrabank.com" ascii wide nocase
        $account512 = "ranger_stub@tendertradeforex.co.uk" ascii wide nocase
        $account513 = "raphael@gitggn.com" ascii wide nocase
        $account514 = "ratna@askon.co.id" ascii wide nocase
        $account515 = "razilogs@razilogs.com" ascii wide nocase
        $account516 = "reallife@jpme.org.in" ascii wide nocase
        $account517 = "receive@medicproduction.gq" ascii wide nocase
        $account518 = "reception@crestpak.com" ascii wide nocase
        $account519 = "recieve@resulthome.xyz" ascii wide nocase
        $account520 = "reclutamiento1@cosea.mx" ascii wide nocase
        $account521 = "regan10586@gmail.com" ascii wide nocase
        $account522 = "rene.urdaneta@deepblueamerica.com" ascii wide nocase
        $account523 = "reservas@pooldeexcursiones.es" ascii wide nocase
        $account524 = "reservation@flyegyptaviation.com" ascii wide nocase
        $account525 = "resultbox042@yandex.com" ascii wide nocase
        $account526 = "result.package@yandex.ru" ascii wide nocase
        $account527 = "result@scrutifify.xyz" ascii wide nocase
        $account528 = "rey@frohnn.com" ascii wide nocase
        $account529 = "rezult.origin@ljves.com" ascii wide nocase
        $account530 = "rfy_sales806@dgrrfy.com" ascii wide nocase
        $account531 = "ricardo.ospina@bnb-spa.com" ascii wide nocase
        $account532 = "rizky@rajapindah.com" ascii wide nocase
        $account533 = "ronaldo1@ecoorganic.co" ascii wide nocase
        $account534 = "root@jiratane.com" ascii wide nocase
        $account535 = "rose.nunez@yandex.ru" ascii wide nocase
        $account536 = "router11477@tashipta.com" ascii wide nocase
        $account537 = "royal@qatarpharmas.org" ascii wide nocase
        $account538 = "rpalma@ametropolis.com" ascii wide nocase
        $account539 = "rqa4@shivanilocks.com" ascii wide nocase
        $account540 = "r.tome@yandex.com" ascii wide nocase
        $account541 = "run@kagabo.net" ascii wide nocase
        $account542 = "sabera.sultana@protistha.com" ascii wide nocase
        $account543 = "saco@kennycorping.com" ascii wide nocase
        $account544 = "safaa.bishara@santemoraegypt.com" ascii wide nocase
        $account545 = "safety@rayanetech.com" ascii wide nocase
        $account546 = "saguid@jpah.org" ascii wide nocase
        $account547 = "saleem@ejazontheweb.com" ascii wide nocase
        $account548 = "sales001@cairoways.me" ascii wide nocase
        $account549 = "sales1@razorwirefecning.com" ascii wide nocase
        $account550 = "sales@abuodehbros.co" ascii wide nocase
        $account551 = "sales@americantrevalerinc.com" ascii wide nocase
        $account552 = "sales@asplparts.com" ascii wide nocase
        $account553 = "sales@bestinjectionmachines.com" ascii wide nocase
        $account554 = "sales@bhavnatutor.com" ascii wide nocase
        $account555 = "sales@empromae.com" ascii wide nocase
        $account556 = "sales@excelarifreight.com" ascii wide nocase
        $account557 = "sales@ieflowmeters.com" ascii wide nocase
        $account558 = "sales@jiqdyi.com" ascii wide nocase
        $account559 = "sales@maizinternational.com" ascii wide nocase
        $account560 = "sales@montana.co.ke" ascii wide nocase
        $account561 = "sale@somakinya.com" ascii wide nocase
        $account562 = "sales@pipingzone.com" ascii wide nocase
        $account563 = "salesteam@protectorfiresafety.com" ascii wide nocase
        $account564 = "samco@farm-com.me" ascii wide nocase
        $account565 = "sanbrith112@gmail.com" ascii wide nocase
        $account566 = "sandy@citotest.co" ascii wide nocase
        $account567 = "sanjana@legalcounselbd.com" ascii wide nocase
        $account568 = "sara@hive-decor.com" ascii wide nocase
        $account569 = "sartikah@crowncorke.com" ascii wide nocase
        $account570 = "satinder@bodycarecreations.com" ascii wide nocase
        $account571 = "satis@3enaluminyum.com.tr" ascii wide nocase
        $account572 = "sativa@hanwiha.com" ascii wide nocase
        $account573 = "sav@emeco.icu" ascii wide nocase
        $account574 = "sazzad@pacificalbd.com" ascii wide nocase
        $account575 = "sbourdais@sielupz.com" ascii wide nocase
        $account576 = "scdcytc@gmail.com" ascii wide nocase
        $account577 = "selecttools@yandex.com" ascii wide nocase
        $account578 = "selva@regorns.com" ascii wide nocase
        $account579 = "sender@flood-protection.org" ascii wide nocase
        $account580 = "send@medicproduction.gq" ascii wide nocase
        $account581 = "sepp@flood-protection.org" ascii wide nocase
        $account582 = "server1@tashipta.com" ascii wide nocase
        $account583 = "server@tashipta.com" ascii wide nocase
        $account584 = "service@ptocs.xyz" ascii wide nocase
        $account585 = "s.ewaldt@otv-international.me" ascii wide nocase
        $account586 = "shahid@onyxfreight.com" ascii wide nocase
        $account587 = "shakeeluddin@twpl.pk" ascii wide nocase
        $account588 = "shops@wepmill.website" ascii wide nocase
        $account589 = "shrutika.chaudhary@oppomobilemp.in" ascii wide nocase
        $account590 = "simon@exoticpools.com.au" ascii wide nocase
        $account591 = "simon.newton@contecs-e.com" ascii wide nocase
        $account592 = "sirohms@sirohms.com" ascii wide nocase
        $account593 = "skt@startranslogistics.com" ascii wide nocase
        $account594 = "sleeves100@yandex.com" ascii wide nocase
        $account595 = "slim1@ge-lndustry.com" ascii wide nocase
        $account596 = "slim2@teitec.asia" ascii wide nocase
        $account597 = "slimshades1@deepsaeemirates.com" ascii wide nocase
        $account598 = "slimshades@deepsaeemirates.com" ascii wide nocase
        $account599 = "slim@workpluswork.com" ascii wide nocase
        $account600 = "sly-originlogs@yandex.ru" ascii wide nocase
        $account601 = "smart-moneyfile@strykeir.com" ascii wide nocase
        $account602 = "smita.pagade@a1fencesproducts.com" ascii wide nocase
        $account603 = "smithyjazz@jakartta.xyz" ascii wide nocase
        $account604 = "sn@inpark.rs" ascii wide nocase
        $account605 = "snp@1st-ship.com" ascii wide nocase
        $account606 = "soft@rnedisilk.org" ascii wide nocase
        $account607 = "somc@flood-protection.org" ascii wide nocase
        $account608 = "sons@rebu.co.rw" ascii wide nocase
        $account609 = "sonu.hong@fakly-cambodia.com" ascii wide nocase
        $account610 = "spark@sparkintemational.com" ascii wide nocase
        $account611 = "stanbase@bigmanstan.com" ascii wide nocase
        $account612 = "stan@flyxpo.com" ascii wide nocase
        $account613 = "stan@iskreameco.com" ascii wide nocase
        $account614 = "stanleybox@yandex.com" ascii wide nocase
        $account615 = "stan@orangeone.in" ascii wide nocase
        $account616 = "stan@solartorbines.com" ascii wide nocase
        $account617 = "stan@zi-gem.com" ascii wide nocase
        $account618 = "stanzo77@suzukirmkjakarta.com" ascii wide nocase
        $account619 = "staronuegbu@yandex.com" ascii wide nocase
        $account620 = "star-origin@strykeir.com" ascii wide nocase
        $account621 = "stephanie.giet@technsiem.com" ascii wide nocase
        $account622 = "step@kccambodia.com" ascii wide nocase
        $account623 = "s.terasa@shibata-fenderteam.team" ascii wide nocase
        $account624 = "stores@inventweld.com" ascii wide nocase
        $account625 = "stu@frescnoy.com" ascii wide nocase
        $account626 = "subran.subran@xerindo.com" ascii wide nocase
        $account627 = "success@poylone.com" ascii wide nocase
        $account628 = "sujit@amexworldwide.com" ascii wide nocase
        $account629 = "sumayyah.diijlafood@gmail.com" ascii wide nocase
        $account630 = "sunil.jadhav@biilt.me" ascii wide nocase
        $account631 = "supin@daiphatfood.com.vn" ascii wide nocase
        $account632 = "supplier@americantrevalerinc.com" ascii wide nocase
        $account633 = "support@generce.com" ascii wide nocase
        $account634 = "takers@blacksea.red" ascii wide nocase
        $account635 = "team@poskcoq.website" ascii wide nocase
        $account636 = "technical@lionsar.lv" ascii wide nocase
        $account637 = "tegaworks@masterindo.net" ascii wide nocase
        $account638 = "telley_min@vectromtech.com" ascii wide nocase
        $account639 = "terry.miller@rm-elactrical.com" ascii wide nocase
        $account640 = "test@hraspirations.com" ascii wide nocase
        $account641 = "testing@bhavnatutor.com" ascii wide nocase
        $account642 = "test@pushpageseo.com" ascii wide nocase
        $account643 = "thb@tbh-tw.com" ascii wide nocase
        $account644 = "thedropboxx88@yandex.com" ascii wide nocase
        $account645 = "tim3.44@yandex.com" ascii wide nocase
        $account646 = "tina.meng@wingsun-chine.com" ascii wide nocase
        $account647 = "tou013@efx.net.nz" ascii wide nocase
        $account648 = "trirek@trirekaperkasa.com" ascii wide nocase
        $account649 = "ts-wire@bigmanstan.com" ascii wide nocase
        $account650 = "ttkgalen@ttkplc.com" ascii wide nocase
        $account651 = "tt.swift@yandex.com" ascii wide nocase
        $account652 = "turkey@gfaqrochem.com" ascii wide nocase
        $account653 = "uaa@qatarpharmas.org" ascii wide nocase
        $account654 = "udug@flood-protection.org" ascii wide nocase
        $account655 = "ugobarbar@scuksumitomo-chem.co.uk" ascii wide nocase
        $account656 = "urc1@emmannar.com" ascii wide nocase
        $account657 = "urc@emmannar.com" ascii wide nocase
        $account658 = "urch@damienzy.xyz" ascii wide nocase
        $account659 = "uz@cairoways.me" ascii wide nocase
        $account660 = "uz@obazolu-ovim.pw" ascii wide nocase
        $account661 = "vael.habbal@momrol.com" ascii wide nocase
        $account662 = "valceejay@marejgroup.com" ascii wide nocase
        $account663 = "valentina.marangon@gruppodigitouch.me" ascii wide nocase
        $account664 = "val@sirafimarine.com" ascii wide nocase
        $account665 = "varahi@varahi.in" ascii wide nocase
        $account666 = "v.clemens@slee-de.me" ascii wide nocase
        $account667 = "vicky.br0wn@yandex.com" ascii wide nocase
        $account668 = "victormuller10@yandex.com" ascii wide nocase
        $account669 = "vipa.agraindustry1@yandex.com" ascii wide nocase
        $account670 = "vip@qatarpharmas.org" ascii wide nocase
        $account671 = "wale@flood-protection.org" ascii wide nocase
        $account672 = "wanto_tiono@cbn.net.id" ascii wide nocase
        $account673 = "warehousee@climasenmonterrey.com.mx" ascii wide nocase
        $account674 = "webmaster@mercananaokulu.com" ascii wide nocase
        $account675 = "wells@estimx.club" ascii wide nocase
        $account676 = "wetground@poylone.com" ascii wide nocase
        $account677 = "whbr.svc@oppobihar.in" ascii wide nocase
        $account678 = "wintom@wls-com.me" ascii wide nocase
        $account679 = "wiz@metalfabme.icu" ascii wide nocase
        $account680 = "works@americantrevalerinc.com" ascii wide nocase
        $account681 = "wpollczyk@yandex.com" ascii wide nocase
        $account682 = "xiao.wei@luckyshippinq.com" ascii wide nocase
        $account683 = "xmoni@tashipta.com" ascii wide nocase
        $account684 = "xmoni-w@tashipta.com" ascii wide nocase
        $account685 = "xmweb@flyxpo.com" ascii wide nocase
        $account686 = "xuly.donhang@bnfurniture.net" ascii wide nocase
        $account687 = "xu@weifeng-fulton.com" ascii wide nocase
        $account688 = "yg@cairoways.icu" ascii wide nocase
        $account689 = "yosra.gamal@csatolin.com" ascii wide nocase
        $account690 = "ysalgado@montacargasperu.com" ascii wide nocase
        $account691 = "yyaqob@trevisqa.com" ascii wide nocase
        $account692 = "yys.nam@hanwiha.com" ascii wide nocase
        $account693 = "zafar@guddupak.com" ascii wide nocase
        $account694 = "zaid.alyusuf@gpgolbal.com" ascii wide nocase
        $account695 = "zainab@almushrefcoop.com" ascii wide nocase
        $account696 = "zeco@obazolu-ovim.pw" ascii wide nocase
        $account697 = "zecospiritual101@yandex.com" ascii wide nocase
        $account698 = "zhu.china@yandex.com" ascii wide nocase
        $account699 = "zlogs@zolvtek.com" ascii wide nocase
        $account700 = "filelogger@yandex.com" ascii wide nocase
        $account701 = "weng.zheng@yandex.com" ascii wide nocase
        $account702 = "harsahad.alkaabi96@gmail.com" ascii wide nocase
        $account703 = "sales@flexi.co.in" ascii wide nocase
        $account704 = "storeglis@lordshotels.com" ascii wide nocase
        $account705 = "solo@enpar-de.com" ascii wide nocase
        $account706 = "figure@alamitec-ma.com" ascii wide nocase
        $account707 = "aishah@ninamaju.com.my" ascii wide nocase
        $account708 = "priyzaharacor@gmail.com" ascii wide nocase
        $account709 = "onyekachi@alna-hdaz.com" ascii wide nocase
        $account710 = "morgan@sanrex-sg.com" ascii wide nocase
        $account711 = "udobi@sanrex-sg.com" ascii wide nocase
        $account712 = "schw@totallyanonymous.com" ascii wide nocase
        $account713 = "olu@onwamarch.xyz" ascii wide nocase
        $account714 = "p2@yomning-food.com" ascii wide nocase
        $account715 = "nairojob@jbrosford.com" ascii wide nocase
        $account716 = "yaski@onwamarch.xyz" ascii wide nocase
        $account717 = "komang.an@ktmindonesia.com" ascii wide nocase
        $account718 = "tarsuavm@deryaelektronik.com" ascii wide nocase
        $account719 = "susanna-lax@pegasuswwusa.com" ascii wide nocase
        $account720 = "noor@cobrauea.com" ascii wide nocase
        $account721 = "trade2@forestco-tw.com" ascii wide nocase
        $account722 = "guydubemslogs@tpczj.biz" ascii wide nocase
        $account723 = "obi@gpbocsh.com" ascii wide nocase
        $account724 = "makesalelog3@market2sales.com" ascii wide nocase
        $account725 = "paki@tpczj.biz" ascii wide nocase
        $account726 = "law@galaxyracks.com" ascii wide nocase
        $account727 = "comercial@raposolda.pt" ascii wide nocase
        $account728 = "doggy@more-money.site" ascii wide nocase
        $account729 = "whitemanpool@yandex.com" ascii wide nocase
        $account730 = "lucky@sonofgraceoffice.website" ascii wide nocase
        $account731 = "ashwanisharma@indicaindustries.com" ascii wide nocase
        $account732 = "russia@kpti-tw.com" ascii wide nocase
        $account733 = "ud@wirelord1990.pw" ascii wide nocase
        $account734 = "omoba@coniketransport.com" ascii wide nocase
        $account735 = "prince@coniketransport.com" ascii wide nocase
        $account736 = "xmoni@nxgenbiz.us" ascii wide nocase
        $account737 = "farmerbro@pachetel.com" ascii wide nocase
        $account738 = "ikenna1@teijim-frontier.com" ascii wide nocase
        $account739 = "maxwell@tigasinarmandiri.co.id" ascii wide nocase
        $account740 = "major@cnvester.com" ascii wide nocase
        $account741 = "sales.del@macwinlogistics.in" ascii wide nocase
        $account742 = "rejuvoffice@rejuvilab.com" ascii wide nocase
        $account743 = "cs@hzqiyoa.com" ascii wide nocase
        $account744 = "info.center247@libertynationallb.com" ascii wide nocase
        $account745 = "luga@cmis-sa.com" ascii wide nocase
        $account746 = "logs@tshukwasolar.com" ascii wide nocase
        $account747 = "bbl@galaxyracks.com" ascii wide nocase
        $account748 = "ok@achievemormoney.com" ascii wide nocase
        $account749 = "support-EU@datacity.ro" ascii wide nocase
        $account750 = "largerreport@starlinkz.org.ng" ascii wide nocase
        $account751 = "georgereport@starlinkz.org.ng" ascii wide nocase
        $account752 = "jack@stagaleather.com" ascii wide nocase
        $account753 = "pinaki@goodearthimpex.com" ascii wide nocase
        $account754 = "scala@victoralifts.com" ascii wide nocase
        $account755 = "contatoexportacao@germipasto-br.com" ascii wide nocase
        $account756 = "admin@jomac-ksa.com" ascii wide nocase
        $account757 = "okok@whitemoney1.com" ascii wide nocase
        $account758 = "xmchinamade@testproeg.com" ascii wide nocase
        $account759 = "hk@florideie.ro" ascii wide nocase
        $account760 = "carol.finance@coastalpetrol.com" ascii wide nocase
        $account761 = "me@coniketransport.com" ascii wide nocase
        $account762 = "digidoctorau@gmail.com" ascii wide nocase // TA505
        $account763 = "hrsimon59@gmail.com"  ascii wide nocase // ShadowPadV2
        $account764 = "mene@testproeg.com" ascii wide nocase
        $account765 = "winn@accauto.co" ascii wide nocase
        $account766 = "josh@accauto.co" ascii wide nocase
        $account767 = "divi@accauto.co" ascii wide nocase
        $account768 = "ach@accauto.co" ascii wide nocase
        $account769 = "mailduplicate@yandex.com" ascii wide nocase
        $account770 = "yumi@jljjmetals.com" ascii wide nocase
        $account771 = "admin@adipico.com" ascii wide nocase
        $account772 = "jason.samtani@rxcleco.com" ascii wide nocase
        $account773 = "mibrahim@hffiiltration.com" ascii wide nocase
        $account774 = "mrst@mrst-kr.icu" ascii wide nocase
        $account775 = "noor.akbari@petrolnas.icu" ascii wide nocase
        $account776 = "contabilidad@idolz.pw" ascii wide nocase
        $account777 = "ashfaq.ali@nationalfuels.pw" ascii wide nocase
    condition:
        any of them
}

rule INDICATOR_KB_GoBuildID_Zebrocy {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"l6RAKXh3Wg1yzn63nita/b2_Y0DGY05NFWuZ_4gUT/H91sCRktnyyYVzECfvvA/l8f-yII0L_miSjIe-VQu\"" ascii
        $s2 = "Go build ID: \"fiGGvLVFcvIhuJsSaail/jLt9TEPQiusg7IpRkp4H/hlcoXZIfsl1D4521LqEL/yL8dN86mCNc39WqQTgGn\"" ascii
    condition:
        uint16(0) == 0x5a4d and filesize < 8000KB and 1 of them
}

rule INDICATOR_KB_GoBuildID_GoStealer {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"xQV-b1Fr7d576TTTpbXi/gq4FgVQqMcg--9tmY13y/76rKNEUBENlDFDcecmm_/mbw17A_6WrROaNCYDEQF\"" ascii
        $s2 = "Go build ID: \"x4VqrSSsx8iysxVdfB-z/gIF3p7SUxiZsVgTuq7bN/93XHuILGnGYq2L83fRpj/eoY6nTqwk1sdMHTaXzlw\"" ascii
        $s3 = "Go build ID: \"BPRThIYWbHcZQQ4K1y2t/2mO0-FjLC50P0QZuMTgC/9i6TYw_akiEF9ZPN0s3p/s1XoqXr7EyXMDVw5TTP3\"" ascii
    condition:
        uint16(0) == 0x5a4d and filesize < 8000KB and 1 of them
}

rule INDICATOR_KB_GoBuildID_GoldenAxe {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"BrJuyMRdiZ7pC9Cah0is/rbDB__hXWimivbSGiCLi/B35SPLQwHal3ccR2gXNx/hEmVzhJWWatsrKwnENh_\"" ascii
        $s2 = "Go build ID: \"5bgieaBe9PcZCZf23WFp/bCZ0AUHYlqQmX8GJASV6/fGxRLMDDYrTm1jcLMt8j/Wof3n5634bwiwLHFKHTn\"" ascii
    condition:
        uint16(0) == 0x5a4d and filesize < 8000KB and 1 of them
}

rule INDICATOR_KB_GoBuildID_Nemty {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"R6dvaUktgv2SjVXDoMdo/kKgwagwoLRC88DpIXAmx/eipNq7_PQCTCOhZ6Q74q/RHJkCaNdTbd6qgYiA-EC\"" ascii
        $s2 = "Go build ID: \"vsdndTwlj03gbEoDu06S/anJkXGh7N08537M0RMms/VG58d99axcdeD_z1JIko/tfDVbCdWUId-VX90kuT7\"" ascii
    condition:
        uint16(0) == 0x5a4d and filesize < 8000KB and 1 of them
}

rule INDICATOR_KB_GoBuildID_QnapCrypt {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"XcBqbQohm7UevdYNABvs/2RcJz1616naXSRu2xvTX/b6F3Jt1-5WAIexSyzeun/MpHqs5fJA5G2D9gVuUCe\"" ascii
    condition:
        uint16(0) == 0x5a4d and filesize < 8000KB and 1 of them
}

rule INDICATOR_KB_GoBuildID_Snatch {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"8C2VvDTH-MuUPx8tL42E/PWF9iuE2j_Zt0ANsTlty/c64swZ5TtuaIpHuEFmga/6sS0KWNryc-YAduDnWWO\"" ascii
        $s2 = "Go build ID: \"UBrfJ_wztDfCHWakqvlV/LhzfkJwvKFrNhKCHtU9_/sveCupt8GVbvu6WZiyA-/GcimfL_TPl6FTPPriBDr\"" ascii
        $s3 = "Go build ID: \"5zCy9jt7UZaIs5YPk4tt/1Yt6v7gCpDG---pRFyW-/7729nLSeKJik31ftz_Ve/Z5EVG3lWak3ynxNrJ4ih\"" ascii
    condition:
        uint16(0) == 0x5a4d and 1 of them
}

rule INDICATOR_KB_GoBuildID_GoDownloader {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"1OzJqWaH4h1VtrLP-zk8/G9w32ha7_ziW1Fa-0Byj/gLtfhbXZ6i_W0e5e_tFF/ekG0n9hOcZjmwzRQnRqC\"" ascii
        $s2 = "Go build ID: \"kKxyj14l4NhGbuhOgzef/ab_yr_pUn6q2idYdoBhn/hFAjO_Yxc_rN6mHFuHM9/SmS3qmOyJBc_4xV_qg3B\"" ascii
        $s3 = "Go build ID: \"MiW7XJnQsBXxlBHro8GW/HMqQknRgJg-mCXomgFRt/88ccKMrfA_s6AcOJs3aM/jSUAU_l3RrMzlV6ANEYE\"" ascii
    condition:
        uint16(0) == 0x5a4d and 1 of them
}

rule INDICATOR_KB_GoBuildID_RanumBot {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"hOhuOA4W60aBBRoFQTDA/dl9DuLAgEcabYGK6ZT2t/ECsse3630jV_957OqqK3/ZRA_JRPFzxutK16zlEcM\"" ascii
        $s2 = "Go build ID: \"NivDrAudWE-E6xtBXeww/3pv6fDzDqt4v0YxoTkPt/8vd79TNE-9Bt38ftxf_V/_GNqnqEUsRf-WTSmn8dM\"" ascii
    condition:
        uint16(0) == 0x5a4d and 1 of them
}

rule INDICATOR_KB_GoBuildID_Banload {
    meta:
        author = "ditekSHen"
        description = "Detects Goland Build IDs in known bad samples"       
    strings:
        $s1 = "Go build ID: \"a3629ee6ab610a57f242f59a3dd5e5f6de73da40\"" ascii
    condition:
        uint16(0) == 0x5a4d and 1 of them
}