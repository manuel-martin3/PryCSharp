-- --------------------------------------------------------
-- Host:                         PC\SQLEXPRESS
-- Versión del servidor:         Microsoft SQL Server 2014 - 12.0.2000.8
-- SO del servidor:              Windows NT 6.3 <X64> (Build 9600: )
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para NORTHWND
CREATE DATABASE IF NOT EXISTS "NORTHWND";
USE "NORTHWND";

-- Volcando estructura para vista NORTHWND.Alphabetical list of products
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Alphabetical list of products" (
	"ProductID" INT NOT NULL,
	"ProductName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"SupplierID" INT NULL,
	"CategoryID" INT NULL,
	"QuantityPerUnit" NVARCHAR(20) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"UnitPrice" MONEY(19,4) NULL,
	"UnitsInStock" SMALLINT NULL,
	"UnitsOnOrder" SMALLINT NULL,
	"ReorderLevel" SMALLINT NULL,
	"Discontinued" BIT NOT NULL,
	"CategoryName" NVARCHAR(15) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS'
) ENGINE=MyISAM;

-- Volcando estructura para tabla NORTHWND.Categories
CREATE TABLE IF NOT EXISTS "Categories" (
	"CategoryID" INT(10,0) NOT NULL,
	"CategoryName" NVARCHAR(15) NOT NULL,
	"Description" NTEXT(1073741823) NULL DEFAULT NULL,
	"Picture" IMAGE(2147483647) NULL DEFAULT NULL,
	PRIMARY KEY ("CategoryID")
);

-- Volcando datos para la tabla NORTHWND.Categories: -1 rows
/*!40000 ALTER TABLE "Categories" DISABLE KEYS */;
INSERT IGNORE INTO "Categories" ("CategoryID", "CategoryName", "Description", "Picture") VALUES
	(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          )  BM˜)      V   (   ¬   x             ˆ  ˆ        ÿÿÿ  ÿÿ ÿ ÿ   ÿ ÿÿ   ÿ  ÿ                                                                                      Ppp                                                    %67wwwwwwSS                                                   45wwwwwwwwwwwwww                                                  !awwwwuuu555%wwwwwwwP                                             Awwsv7cwwWgwu'wwwv4a!                                                      P6wWuqpP   pqwuwwwwS4                                               W50             wwwwG                        !                       45    e45wupGttp  wWwqq                AGq5u  w0                      AvWw  gwwwwe`@@746@ $        @     Gvww 7wWwwwSr                  vvGg  @ WtpAgGt!@P CA@40 VQ Q 0 !pp7wwwwWwwq1wwwwwwuwq               G@Dq twwgwwv t%$ wwwGdgvu `% swwwwwwwttw'WGw wwwwwg3p0              B`  wBtwvwwwwugwwtdtefvwwfWFwgWSPqfswws7FwuwwwwW'vw Qwwwwgw`q1A            t@@GvwvwvpggwvtvVsGWPWg7VdtgWwrq%!gqw3w7wgwgugGewWq!7uwwwwgwS         g wgGwgvwwVwgwwww$wg`gwtgGGGggwVRVSww7dwwuvuwwtwwwwvww@4              we@f`PwvwewwgtpwGwwgGfFwsvttvwwwgw757wswGwwwwwtwGpqwwvwwv1qsR             0vwWggupvtwwGtwwttwpGgwegtgwewwwwwwwwww7fwwGetwGwwwwwvvwA7q                WD%geav gg GpGgpgw  GwGsFVDgEgvvwwwwwwwww7Vgwwwwwwwws wwwwwwwSR          wwq!RP0g wwGgBpG$wvWudp vswGgt'wwwwwwww6wwwwewwwwwwCGwuWwSwvvvwrw1             qpp @F wFvtpwAgt6Vww@wvtFVwgwwwwwuwww7Gguqaa$400wwwwWwu!  P         ! %gPpC@g  @vpWWwwgw wtGFFegwvwwwwwwwwwswgwa   7wSP1www7wswPp !         0 gwwaePG`G`tdwdpVVwgpwduttvwwwwwwwwwss7Gwws5wwwwwwwwWwwwwwgA A          wtA@ @gvvvwgwwdwuggwtGptfFvGwVwwwwwww7777vFwtwSRwwwgwwwwwcesSSQ00 0           aGvvtd`@@@@fgvvwwTvwpFdFDDVwggwwwww3ssswgwwgt$Gw7wq'wSWWu4$ @          0 P Ff@  45! egwgwpvwCwggwvwwwww77737VGvWSwpwwwe%'s 0         P  F  %45     t  wDs777wWgwwwww7777w7egWwww71ggpwwwVqw0   !          t                 wwwssswgvwwwwwssss3sVwgww7wwwqwtpRqvs@0            V`   su``             sww73777wwGgwwww73sSvfwwwsw7wqgpw57wWG51           0 e@    T         w7wgswsss7wgwwwwwgvFteeugGwwsw0wvVT5'5w       0p@ f       @             wwQFs73sswwwtvwwwwttdGdfgvwwww'vs7CWGssA C    P  p    gB            wvgww7sw773swgwwwwwgdVvPutwvWa WsWGwcw5RpR P!  p!e   @    gv@gvF@ ACAwwwgfvss73sswwwvvwwwvVGgGFdftwvu'a #1!'!a aAsVw  W G@ G@F   FwpPGwvqsW7Vvwvvw7swssswwgwwwwwedtgeGuvwqvptedts  PRqappwqswt 7p  vg`   @v wpgwwwgggggg3s37777wGgwwwwvvwGBFvtvwwgvwga1371%0swwww uwp   `v  d  dtg@wwwwvvvvvsw7wsswwwvwwwwwgGFvtgGwwt6pS2SRRq53SSCACqaq0wqwwww 7w vvgpGDf@ Gd wtwwwwggggg7s733ssswgFwwwvTggGtvtvSua1w5su%4stp5010 Bwwww7w Gwwpt`pFDD  F@pvpwwwwvvvvvs7sww77wwvwwwwwfVVeggvwupV1S4sps!6CCCCww7www@%w7p 'Dp @    d d g`wwwwggvwgw3s33sswwGgwwwwtgegDdtwgv4wqru7WwuwW5qqqqqqt3aacwwwsW7@7w4 F``     @ `vtwwwwvvgfvsw7ww777wwGgwwwgVVtgtgewq73Sw7wwwwwwwwwwww7uw7W7ww7sw GwsP tF D      Gw@ww fvwgv3333377wwfvwwwwwftvVFWGg`` 53u71wwwwwwwwwwwwwww7wsws7Sww@ qww  f@$d@     dg Gww wgfvfwwwwwsswwwwwwwvwtFFueggwSSsRSqwwwwwwwwwwwwwwwwSww7Sw7p vssP   GFdfVFdD @d  wp ggvww33333777wfvwwwwwgwwfvwegwqq1u!p77wwwwwwwwwwwwu7Sw7Swsww7 ww @GvgvGfvvgFv   w  vvgffwwwwws7wwugwwwww& wa557wwwwwwwwwswSwwwwwSw7sStp  PpDfwwwvwwvwwvVf  ggvww311 wwwfegwugp@@PQ@wwScSqsSqwwwwwwwwwWuwwwwwwwwsSu7w7   w`@@@@@Fggwap p  q      WwvwwvG$ S wq0u57wwwwwqssww7w7wSw752RSvDd&W @      @@ vw@ D  wu u        sGvgwted    0RQ50u37wwuwwwwwwswwwwswwSup55141q7153  FD   D    7p     w41         WwwVv` p   @D!0R153q5ww7w7swuwwwW7Wwww52P1aaqcRW%p  g  B@   Rsq      uw         SwveDt$@   @100rSSw7wWwWwSswswwwwwwp543C1q1s7  g    1u`       wq! 3uFgGFWp S455u7sssSww7wwwww7SwP3S5a410p0RSppC7          w   dsssvtVFwwwwsWsQ74511psswswWww7wWsusW7Www43u7ssg0q1cRs17  ssRq5t            F@   Fs7774Fdwwwwwt 777457sVSsSuwsuswwwwww3SswSWrwSqqcssWw  57wp            ` @gasssttWwwwwwpc 1!111s7w7www7wwwwwwwwwwu7w7wsw757sWGsswawqgwsW             @   3s3FFswwwwwt w373 Sw7wSw7wwwwwwwwwwwswwW7w7wwsgqw7sqgSSC75%w7                   s77D377wwwwp t 113173sWu7wwwwwwwwwwwwwww7swu7W7776qqe75rsg7GSsqt          F        ss6Cw3swwwwt0    !7377wwwwwwwwwwwwwwwwwWwsswsuuusS'3SSWSW77uv0         $@   @  73us3733wwwp          pGwwwwwwwwwwwwwwwwwswsuwSussswwwSW'6s77sSW75p         @`    @@s737ssw77wwp       d7wwwsuwwwwwwwwwwwwwsw77w7www775qqu%sG7!ws@          dF@     C73s37373s7wq  G4 ewwGqwuwwwwwwwwwwwwwsuwWw5w5wwWwWsww7w77Wwqwp     f  d Gg@     ss773w3ssswt wv    @swwwwwwwwwwwwwwwwww7sw5w7ww7sw7swSqwSWW757q      @@ F@`F      73ss737777wp  twB     CWwwwwwwwwwwwwwwwwwwWwwwwwwwwwwwwwwwsw77uwwp     F  `F       s7373ssssswv     P6wwwwwwwwwwwwwwwwwwwwswwww7wwwwwwwwwwwwwww7sww          @   @@  73sss777777p    wsWwwwwwwwwwwwwwwwwwwwWwwwww7wW7wWwwuw7wwwwwwwW4        @       3s73733ssswu     wwwwwwwwwwwwwwwqwwW7Ww7wwwsWww7ww7swSw7w5sW57W7sp       F @``      c73s777w773wpF   wwwwwwwwwwwwwwwwsw7wswwswww77u57Su7wwwwwwwww7qwP          D@D @    cs773s33ss7wtt    wwwwwwwwwwww7WswwWwqwswsWwwww7wwwwwwwwwwwwwwwwwp@          f`   C733s77s37wwpv @@wwwwwwwwwwwwwwusW7Swwwuww7wwwwwwwwwwwwwwwwwwwwww           @D@    sss73s77wwww`tf wwwwwwwwwwwwwswwwwww7sw7wwwwwww7swww7wwSwwwwwwwwP           F`    cs73s73swwwwptdp wwwwwwwwwwwwwwwwwwwwwwwwwwqsqwwwW7swu7wwwwswWw77          Dd  F     3ss73s7wwwsu`v wwwwwwwwwwwwwwwwwwwwwwwwwwwww77swsW7u7w5sww7wWwr@         `d        s77ss7wwwwsvtd @`WwwwwwwwwwwwwwwwwwwwwuwWqs757wWquswSsu7wwWwwwwwP        e@        3s337wwwwwq`ggGggwwwwwwwwwwwwwwwswwww7w7wwusussw6777Wswsssswwsq          F         7777wwwwww7pVGddawwwwwwwwwwwwwuuwwwuuuw5w75775w7WSWcW3WswWwww7wwP       @d`       3s3wwwwwwwq`dv@ wwwwwwwwWwusWwwwuuw7suwwuswwWw5ssw75w7W77Wwwsp        FvFVTd      s77wu7wwwwwtGDFpwwwwwwWwuswsW7qw77wwsww7ssssw5wSSsCpsswWWw757wp      gdt&f@      s3wpttwwwwwwegd'fwwuu7wWw75wwwWwwwuwwwu7wwwuwWwwswwWw7uwW777wwuwp      t`@@        wwqqaswwwsvvfVFGwuswwWw7Wwwqw7wwwww5sWwwsswwwsqsW7w75u777www5w7sp @     fBF        www vwGwwwwggggG@Wwwwwswwwwwwwwsw5swsww7wwuww7wwwwwuw7wusSu5w5www      @@d D       w7AGugwwwv$vvv`wwwwswwwswswwSwwwwwwwwwwwww7wwww7Sg7su5sgvwgsvsGq@$      F@ f      su wruwww @vgvqwwwWwwwwwwWw7wwWwwu7qwwwwWu555wwwWuwwwSWSsWWsW P        @@vDd    ws@WWwwpD vBVwsw7Wu7W5swwww7sw7w7wwwww7wwwwwwqwwwwwwwswWw7uww0   @          g@    ww%wsgww @ ` ge7ww7ww7w7wwwsW5wwwwwwwwwwwWwwwwwwwwwwwwwwwwww7sw57p @      @  @@      wpRWewww @@WswW7wwwswwwwwwwwwwwwwwwwwwwwwwwwww777u7wswVWRwwP          D$$@ d    wr@wWgwp `  susswWu7Suswwwwwwwwwwwwwwwwwww7wsw75wWWwwusWSss7qss p        FFD  g$@   wuVvWwP D@@d@GwswwwswwwwwWwwwwwwwwwwwwwwwuswww7Wsssssssw3wu5u7uw@          @  @d   Gw@wWww @BFF7Wwuw7wwwwwwwwww7wwwwwwwwwwwswwWsWW7WWWW%3rsCrw0  @          F F@   w%%gww GB@CswswWwwwwwwwsw7wwusWwwwwwuswssswssww76scrsssSV7qu           F      wGwwpv eddwwwwwwwwwwswswwwWqwwwwwwwwswsWuwSwuqsqu55qt5%7sssqws p          @`      www5pG`FP rwwwww7www7wwwusW7wwwwwwwwwwsww7swswuwswswsww45t5gssw @@               wqqSVwF $puwuw7wwswuw5sWswwwwwwwwwwwwsWw7wwwwwww7W5wu55wswsqtu'q`                 wq57wvv d@'577u7suw7wwwwwwwwwwwwwwwwwwwwwwwwwusww7w7w7ww5wu7Wssqw @         D       wWwvt `d!CWWwuswWwwwwwwwwwwwwwwwwwwwww7wwwwwwwwwwwwwwww7wssww7Www0$                 wqtwwVvT%775swwwwwwwwwwwwwwwwwwwwwwwwwwwwwwswwuwwwwwwwwsuww7wsSwq                wuwvGg@@awwwwwwsw7wwwwwwwswwwwsu7wwwwwwwuwwwww7sww7wSwuwssSu77w7 @                wqqwwtgv 0SwWwwwwwwwwwww7wwwwwwwwwwwwwwwsssSqwwuwqwu7www7qwWwSuu5sSa  @@@@            ww vp 77sw7swWswsw7wwwwwwwwwwwwwwwwwuwwwwww7w7wwwwwwwwwsw77ssw5wS      @@         wsSwwP@Cuwusuww7wwwww7wwwwwwwwwwwwwwsswwwwwwwwwwwwwwwwwwwwWwww7sswr P@@@@           w5ww  `u7Ssww7wwqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7SsWqwW550  @   @ @ sSWwp 'swwu7wwSuwwwwwwwwwwwwwwwwwwwwwwwwwwwwWwwww7wWwwwSwSw'WcwqrRsA  @@       w557w PSSWww7wswswwwwwwwwwwwwwwwwwwwwwwwW7wswww7wwwwswwwwwSu75u'qwQsP   @   @ @  wqqwwP57wssww7wwwwwwwwwwwwwwwwwwwwwwwwww77usw7wwsWw7wwswwsw7ww7qw1647  a @ @  wSww 6wqsuwSwWwwwwwwwwwwww7wwwwwwwwwwwwWWqwwwwwsqwWswwwuwwswsSqwswvSSSq` p @@    5qwwvwuswwwwwwwwwwwwwwW7Wwwwwwwwwwww77swsu7wuwswwSu7swwuwwwwqusrSw7' %  @@`@ wSwqwwwwwwwswwwwuwwwwwwwwwwwwwwwwwwwwWqwSuwu7w7swswwwwwwwwwqsww7u7pwScwC  RA   @ w7wwwww7wwwwwwwsw7wwwwwwwwwwwwwwwwwwwwswswwswwwwuwusw7wwwsw7wwu77u7qwSuuswWv  4 wWSwwwwwwswswww7wwwwwwwwwwwwwwwwwwwwwwwwSww7wwwwwwswwwwwwwwwww7wwW7wwsw77u77570    @   w7www7wwWuuqwwwwwwwwwwwwwwwwwwwwwwwwswswwwwwwwwwwwwwwwwwwwwwwwwwwwswuwww7wuwwwwqaa!acwwwqwwwwqw7wwwwwwwwwwwwwwwwwwwwqwWswWwWwwwwwwwwwwwwwwwww7wwwwwwsw7wWsswqwqsw7SwwwwwwwwwWwwwwwww7wswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7swwswwwwwswWqwSwwwssuw7sw57w5sw77w7wWswswqqwwwwswwwwwwwwwswwwwwwwwwwwwwwwwwwwwwwwsWSu7wuww7uu5sWuwSswswSusWusWWSwqqsW5wSWSw7WwwWwwwww7Ww7W57swwSwwwwwwwwwwwwwwwwwwwwwwswwwsu7W7swww7wwwwwswswsw7ssw7Swww7W57swSw7wwwwwwwwuwW7uw7wwwuswwwwwwwwwwwwwwwwwwwwsWwwwwwwwwwwwwwwww7wwwwwwwwwwwwwwwwSww7wwwwwuwwwq7wqssswwswwwwswwwwwwwwwwwwwwwwwwwwwwsswwwwwwwwwwwwswwwww7wWwwwwuwwwSsswww7w7swSw7wwwqAwwuwW7www57wwwwwwwwwwwwwwwwwwwwwwwwwwwswwww7swwwwwwuwWuwW7wwqsqsSwWW577WSeswww77wwww67sswW7w7wwwwwwwwwwwwwwwwwwwwwwwwwwswuqwW77wuww5u75ssw7wwsw77wwwwwwssswqu3v75sSwwWwwwSwWwwSwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww77w7wW5su7wswwwwww7swuwWw75755wRCwSWsw7wqsssw7w7Sw7SwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwuqSGssssw7qswqsswwwwwwsww7Wwwwww7w7s777w7wwwWww7Swwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww77w7quuwW5w7wwuuqswwwwwsww7575ququwqwSwquw7sSwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwSG557ssqsSqqqsSsswwwwwwwwswwwwwww7sw757577sww7wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww55                Ç­þ),
	(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          )  BM˜)      V   (   ¬   x             ˆ  ˆ        ÿÿÿ  ÿÿ ÿ ÿ   ÿ ÿÿ   ÿ  ÿ       wwwww7SS171w5C0%S21sCqq57ss1qqqq!Sa1!wwwwpgeGGwegagtweew@@77sw  wwwwwqt55sSS4000!apSS1sS47Sq7qw774P1RwwweDrGgwgttvWpwvGt45uq 7Swwwwwwww1ss571pC!C10S1AqsTsSSsq1p01qwwwpfEvegGdwaGggwgAtG@W3A6wwwwwwsSqqsS7511%50qs771ss571w7775R7wwu$PttttwwwvvWwWGGtV u SQ0wwwwwww7qC5qsSF11103C51q1ssqw1qswSSqspssP1sWww4G`Tpa`G`wwwwwwvFww`Gt0 5!! wwwwwwwqsV553SqsSQSCw45wq0qsqwAq3S7wtv@`GDp wwwwwwwwufupFw`w@@0Swwwwwwwsq%13S75011143A553a7PsS1sq7pq7571st3s7www`@ dvwwwwwwwwwFGt5eGv wwwwwww55asu4qs7Rqqss5q7sW1qqsS75qsSswwt`FGFwwwwwwwwwwp@fwFw`u S0 wwwwwwwssq7RA10q`QS5u53W7741sSsssSsw7wwwpFdtuwwwwwwwwwwdwtWwp 51 ww7wwwu541a75q1c1q75171qssqq#SS555rSwwwwwwwwwsswwVtpd%gwwwwwwwuwwwRFWwwvw510wwsWwwwssPw17Q1Qa75SC0W75sw70wwwwwwwwwwwwwwe@dgwwwwwstwswwwtvwwtwq`5 75wwww550q1qssQ2C5s1q3Sq%qsPs3SW5wwwwwwwwwwwwww`d@wWwwwwwswwwwwBEwugqwAaq sWs5wwwssR%2Q5!3pq3Ss72ssW77wwwwwwww7swwwwvFd`@FG7wwwwwwwww7wugwfWvGB! 5wW77wwWa513sS75SQq11G15qaqw7Swwwww7wwww7wwwwwG@@VttwwwwwwwwwswsqvVwW7ppp! s51quwwsqsAsSSS51wc57qsqsSq7sswwwwwswsw7qq7wwwtD f@FFwwwwwwwwwwwwwugwwGGwAqa 0W7sww71151sSRGsSp7571cu5wwwwwwww7sw73qwwwpvP@`GwwwwwwwpwwssCwwwggGv!a1qq55wwq2SBSCRSS1qssSqqaqq7u7swwwwww77sw3q57wwwtDed@FwwwwwwwwwswwwwGdGtGq05%0wwwW51177u4r57773ssCSwwwwwwwwsw7u7swwwd`FFVWwwwwwww7w70wutwwdGv0! q57ws1sSS 53Sqqe1sqq5s7wwwwwwwsusS3s57wwwFT d vwwwwwwswsP wvvdpv@4 0 5%5!puwRqe51sqas7u3SsS7W1gswwwwwww7sssww7ww` @gWwwwwwww7 wugdt1 Rsww1Rw1q7qSwW7s53S3wwwwwwwwwsw7731153Swwvv@dV gwwwwssq  WfDVeegA!10 5!p1p75701sq5'57s577%5sSuqwwwwwwwwww777qs1qsw7w4Eddf@DDdwwu70 74`gFv@3R R1RqwsSPCsWp3RSs777wwwwwwwww3w7171q353Sww@ @v @gtq  dvtDV@10Rq 0p1!51q051a'3sqqqw1s@qsqqww7wwwwwwwwwsswsS3S7wwtfTpFD Dpep 0 VD@gfSq1 01R1@!qsa50CSQ51!16SSwwWwwwwwwww7753377wwsDf@@G@@  p$F@ VA00!CA0P0q5!w 51!SC@1RQp57S7w5swwwwwwssssqq3s1qqwwqE@D d`dGdTtdGdGFaq!0!1133Sq11p13S01sSwRwwwwwwwwsss7711711w7wvdf    @d d`  Gda!!!cCCA5SSsCS4R@sSSw7sswwwww757q1713Sq7w7wt    D @  FVF 01310415CR3@1%qq52qq101s77wuwwwwwwwsqsq777qq1wCSswwwfFDF  ` dBVFpQ40p !1RS C%155117 qSQ05!qc5sw7wwwwww7773s51113q77W7swWGFdF@eFD$A!01!S101141Qq@q512S ss57wwwwwwww7sssqss153SwSsWwwswwWGFDVRA5Q !!1R1RS% SacC505!1CSQaA577wwqswwwwwws7ss15175775%sqw7577C!! !0111qA!q514S551a SSsSspwwwwwww7w7773175s@SqSqsRW77Qs@ps50! 11%1q%7$0Sqq5R'qp10100p5577wuswwwwwwssW3qqq1q31s5757%pS'RQ3!5qScS10S1s551  sqw7swwwwwwsw73w31q13SSCAr1ps551pq52P00q 1C073557q11`1p10q7qw4wwwwwwwsw7s77153q$355 qpSS qCQ1q0P0Scus1! 1q7777q7wwwwwwwwwwwsw731SqtpSS!pWrSSPs1!a!1!q %103%!qaa7C151sVSwwwwwwwwwwSA0pq3 `10A00S101A!0uswsRQ5%0 51s7sW1wwwwwwwwwuqq17551q %52a1aQ1 001Ps0qp1q!5S51q55q77swwwwwwwww71 QS150 0 q!$0  Q1 000 wswqu1s1501S!053s7Sw1wwwwwwwwwwQ   3S1qCA01001 1! s7w71sS 1aSaP13Su3wt7wwwwwwwS! Vr 11! 1 0 !0 1wqwwqGR70SRS1p7!W7u7w7wswwwww5SU71Q qw101 !   07ww77s57S3151q1P05sSwsw7qwwwwwwsQ53Qq pSa0pP1  wwwwwSq1spqc1SR5#!3Cw7w7SwWwwwwwq1q15771R 1a12!1  0w7wwsqq7113500%3SW5sqswssw7www1wSS53SW11 %!RqQA!cR!!  wwswwV7qs1spqsR1sC41sswwwwwWwwwws11qswu1sqP010Cq3S1wswwss10!! wwww731551p11qs5%wwwe!'ww7w1q5545575uq1 Q52P1Q1swWu%5w001swwwwus5sS1sCSqsq7CSpP @@www7q715wwwS7P  7Q1Gq7wuq4      Au11010Q  wwwwwsE3551%537SC!5517wp   wwwsQqsQSwu5s1 S527wwC@        SQA wwwsw53W1sR3Asq754SSwG gV wGw5772Qu7Ww1w5 1sQgwqa@         0 wwwwww4311q531q04177ww@dVUpGwu1SQwsqq qsww          0wswww7qsSs0Su77S1qwuudgGgefugw7Wuwww7s  q7wwQaP          2r   wwww7wqs5414131qqqp50qsw7wwWG@VUgVpsswCWW  wwwwsW4044  P      ! ! wwwwww57SsSCSSS75CSSwwwp `G`fwg@swwww1su0    wwwu50QA   @p       P  wwwwwssSp730571q7R1sw77wwwtvPFGFVwwwwwwwwwwws     wwusS07Au51s     q q wwwwswu7q5sqa73S5Swwwwwtd@veGwwwwwwwwwuu        wwwu5wWP1RW0p      1 !   ww7WwssCqqqu53Cqsw7wwuvpfpDebWwwwwwwwwwwsp       wwwwsSpwWuav5q       S!   www7wwsS3Sas%773sq57wwwwuPFVDvvtwwwwwwwwwwwq0   wwwSWwSq'B p    0   7WqwssSCq531Qqs57w7wwwGfGFwdGGwwWwwwwwwww7 0   wwwwww5t %      ! 0  w77ww7Rqq2S577770swwwwwwu$$FGegwwwwwwwwwwwwqA   wwwwww0ap     S1 qw5qwwa171qasSSSsswwwwtvTGgDdGwwwwwwwwwwww  wwwwwupWAAa` q    Ap 0q   77wss471q7sssw7wwwwwwwwFtD`Fwwwwwwwwwwwwqp    wwwWwW50RC 4    q 5qws7SSsSq1a71qsw7wwwww`Beegwwwwwwwwwwwsq   wwwww0W%%@ p!     P71   77wW75!5#s5ssqw7w7wwwwwvPFT`FFwwwvuwwwwwww71 wwwwwW0pP P    01   qw777sSWQqs455777sWswwwwwugtfDewWwuwwwwwwwwP    wwwwwuqS0@     1    7sSW577s3q3ssusw777www7vVGE FFuwtwwwwwwwws10 wwwwuwwP4RB     p5!  71qsssSqq451s7SsWwww7swudpDewwwwvVwwwwwu  7wwwwwWqaRR        sSw3Wsw5571s3Ssw7sw77777su7wwDtvpFwwwuwwwwwwwq0 wwwwwSuwA@        p 3   1q5s1w7R1q53qssqqwwSqswvvt`D`DwwwFwtwwwwwq1 wwwwwwuwua41     !!    w3s5ssw7173SSsscW75777sS71wuap FVwwwwWGwwwwwq1  7wwwwwwvqsQAE        q   5sqw1wsSqa537SSsssw51sq7wVTT  FwwwtpwWwwwsS7wwwwwwwSWWR      !   s57sw57sSSS73qsSsssSw1sweg   @wweeewwwwwu11wwwwwwwwu65!A 4         1   qwS57sssqps75qu7777751ssqwurVP tgwWwwgwwwwsq17wwwwwwwwwwWWWP                7s5sw7ww715qs73qsssSSsw1573wg  @ wwvwwuwwwwsSwwwwwwwwwwwW571           1   S53Swsq50S3S577777w7wwpa@t wwWwwGwwwwu17wwwwwwwwwwwusGu7wqt            0    5sc5sW7s'77753qqssSws3sswqa@G7wwgWFWwwwsSwwwwwwwwwwwwwuwWv             1    3qsw7ssqsSSSsG777wwwwwu swwwVwwwwwwwwwwwwwwwwwwwwwwww             0 !cC57sw7'3s7Sssswsw7ww3q@ 77wwwwwwwwwwwwwwwwwwwwwwwwWwwaB                q1sSswssSsq747w777sssw77777wswwwwwwwwwwwwwwwwwwwwwwwwwwwwP!                0C57ssS56s573Ss3wws7773sssssw777wwtt$gwwwwwwsqs0!7wwwwwwu454              1sassusu3SCSsS7w33ww3sss73s773swswwV Pwwwwwwwv  wwwwwwSRR%              ! 015w773q2377s377s373373s773w7sww Gwwwwt      %wwwwW               as5s157wqR5s3w373337377777sswsw7wwCWwptwWwww        SwWwwqaqC               ! 1Ssqsss%33s3733s73733s7s7737swwqwwPwWGww       7wWu7P                1 5sqq%57s50Ws773333333ss73777wswwwwuGW%wwpGwp         WwgwWqpp!             ! 1SS477s3773s33s333ss33sssss77wwwww4p%twwp         wWWwwQ`               0100qq543SSw71qss3333s73337737777wwwwwwwGSRuvWw         PWwwu5q%%A              sww323#3#7333377733ssssw7wwwwww W@w        A 7wwww5q                 0 0q054Cpqw773333333333333ss77777swwwwwwsurW@G         uwuwWSPQ             SQp1s373s333#333s73s3s33ssssswwwwwwwwGtg gwp         t4www7SP              11!!0CSg3w73#33333#33333s3777777wwwwwwwvtv@B@ GGu        WWpWSU1AA           0Rp173s32333#33333333s773ssssw7wwwwwwugw GtwvpW      vwwwwsG        5      P5!pPSs73333#3233323s3333s77777swwwwwFFDd tpwPP qauewp WSW1aS          pq%732s1323233333#3s33777773s77swwwwweg@  tv@ uvw Ae Agwwwuwwwqu5!@    7     BA3SQ0!0s3223333333333#33333333w3w777wwwutt  eepGVR@WGpWwwwwwwWq41   t0    tu0qA2s33232333#23333s73s7773w3swwwwwBFt G  dpGv wutwGtWwwwwwwwu4q1   R   utC1000322333333#333333333733ss3sssswwed@@@ GD Atw$tvwgwwwwwwtsSCQ P5p    d$@133233233#333233#337377377777www@  g    pGwwWptuwWwwwwwugWup Q! 1P    p @a23332333!332332333733s3sssssswwDG   @Ad`gGGwWUgwAvwpwwwwvVtgSA0 aC4   @  F@! 3203321333#333333737777773ssw7tgg@F  dF@gVwtwwguwFuDtwgt$gtrW%1CRPq     d' G!01!3332332333333#33337333333s773wdD @  @  FwwppwVvwugwweut%dwVpW5pWqqA    F@gg@ 033123323#33323733777777777ww@@   F@ pvwCDuGtCGtuvpVWt dW7wSC !G0      D!0322333333333333373s33s3s7777d    `@B @ggvtw$Wptwew@gvG@Acquu% sP BVE  e !031123#33333333733s3ss773sswwE@ D @@ DwGtuww@P`@wDwGFWeGG`GvDWwwR 5FtG@  F023s333#23#233#3733s373sss77tfD      FgvvvwgpgT$wGrPFVVwe@G`dSQwwwwwp TpG@  G  12333333333333333773ss7377ww       @  vtwggwvWW`vTwd Fp@ wwwwwwwu v     @vF s303#21333332333733737ssssst@@     @dt GvvvVWeedvEeged@ud%g@p@Gwwwwwwww@ dv T De 033331323#21#333s3773ss3777wp        Et gdrG Ag@t $GVpBGGgwwwwwwwwv pDF  @03s#33333333333s33s77777swe@    @ F F @ @ Tpp@` G Gdd G@ Cwwwwwwwwp@pGpt t  t!33173#333333#3333ss3s3sss7wd    @ t `6t @vdt v@E`tepWdtTwwwwwwwwp@D td@Ft`sq323#3#377373373w777wpF@  @ @@  @@gD gdG@RG  tfEdwBwwwwwwwwp ppFp@t017p2233333333#3733ss7377sst       tVr@`  @dpgve`edd @$pDewwwwwwwwp@F Wp` @ g@q13033333333333s373sss7w@@ @   F@Dptt@ed `E@Edte@t@dv wwwwwwwww@ gAGp`@`0p2173323#2#3373s3ss7777w7t   @  @@ p Dd`pvVGP ` @GD G@Ge wwwwwwwwt    GF@d@@10s3333333337333s33s3sssw F `@  pFF@Pade@V VD@Ftedt @dwwwwwwww@ B  v  C@ 17SS7#333332333s7777777wwp @d   D e `F t F eDd Fppdpt@dp@wwwwwwp @ w gD@D0s1'3#23#2337333333sssswFd @D e@` d`FGG@P  F FG@ Dt@dF@$R@d wwwegD @@GwpGD`Vp SSs33333333337777773sswwD    vv@GFT  tdGFT@tpE Dg@@Fte@Gd G@egvVVB@d `wwDg@1'1533333333333333333sswwt  D@ dd FFFGggfte`@@F vwgggwv FF@efvddddD @@@Gw` @`                à­þ),
	(3, 'Confections', 'Desserts, candies, and sweet breads', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          )  BM˜)      V   (   ¬   x             ˆ  ˆ        ÿÿÿ  ÿÿ ÿ ÿ   ÿ ÿÿ   ÿ  ÿ       30sW7ww       `` R  1pp@u7cu5qrQ!q5qp57  R  p  Cagwww33sqqw777w  0Wsw        P 3113pPsC @  aat3QCVSuqw1qwqp`@vwgugpd%47wwssWS777SSs7311#Ww  Cq vwsgwwq1SwswpCSapqqwsV7775cwqw7tsWwqw5cw gwGgwsu1373Ssq77S110057P wSGqw171q3wwwpsGrQawwwwsRWWw5swqu7S1swq`'wgwww65g7su33qq575ssSw7q01p1g sgwvw31Q7wwwwpwvwwwwqu7su7sWwsW7W5wwVwwvwwecWwgu3u573sqssS7sw111011111qpGvpwsSS13S1wwwwcwqwqwwwwwsSW7wWww7wsS55Ssw7wwwwwaw7SW3S33S77S77q15!13!17 77wq111qwwwwwwwwwwwwwwsSSw7wwwwwWs6Wwwwwwwgwtvs7s73SswqwwS1q30GvWg317wwwwvwww47wwwwwCuwwsWwwwww75u0sWwwwww`qww71sqs73S7ss771105S11sCwww113q51Swwww57wwwwwwwwwu7sqwwwwwwwww7wwgwwwwwqs13s3qsw775sw11231 'qs137wwwwwWSwwwwww6Ruw7WwWwwRWSqqww56w%5%ag75531q77qqsu711!111q1  `Ag111q11wwwSSsw6SWw7su7RvwW7w7swwsgWwqwwwvR57533q33Ssu7777s0101'3S11q11qw77w5qu7sRvWvRt7sw7wwsw7ScqwwwwSRsS1ssqq3qsw1qw71!0111151` vPw1qS1wwwqqcv7wvwSqssaacGwWqwuwWwugWwcSa47G3S71353ssssS1s13 %1q31q1q1wsWw7u7SCSswvuue7SW67wswsw5w7w6wwwgvCqs3s1ss53Su7q3S7101!ssq114vwSSS15sussSSu7wwVwCRrSG445vwSuw7WwsWwqpqg1q1s571s3s3q73111!3P0qe1111S11suswuwwst7w77wu6sCqwsSww7Wsswwwwwwwww6SS371ss57113!50033S11!agssSs11Swswwssqu7qwwwwwrSW464wwwwwsuwWwwwwwwwwW733171s13311133Squ7wqq1111wwwwuw7qwwwwwwwv4wWswwwwwwsw7swwwwwwww7w1333sS13311!w3114s111qw7wwSq3q1117wwwwswwwwwwwwwu5wwwWwwwwwwwwwwwwwwwwwwww3q5573111311wq111s13113www1s11wwwwwwwsqwwwww7w7777ww7wwuwwwwwwwwwwsWwq133s1w3q`q!00SC7www111qwwwwwwwwwwwwsWw7wwtw7wqsssuwwwwwwwwwwW731175113wgp 15131w7u111517wwww7wwww555wswwsw7usqwwwu7wwwwwwwwwswsS11113s111q`ww  rC7117qww51q7qwwwwwwwu7www7wSSw5qw7wwwu7ww5wswwwwwwwwq313311gpwp    7113SS7wssQ51611wwwwwwsqsusw7w777qs71w7Sssw7ww7wu7wwwwww73133153Sww44     11!qsWq1q113Swwwwwsu7wswqqqqq7SSW757w77w7ww7wwwwq1s301113w7qwpSp    77q11q1q17wwssW7w57q7777q353r1qsSswuwwwww7wwwwww31W1s44A  q5151577S51q1Swww7wW7uw7swwsSS3S7575777wsqqswwwww13111s3sWSCSc11q733151cw7wSwws1751!11qqq1!31!wwSswwwuswwww131 01qs11u%u1s1SS7q551s1S3wsw757SSqsS31111w5sswswswwq1111q7711ssq7w1sSsQ3SWwWw71s31111su7swwsWsws133131311557sq1!q17q1537q1q71773qs11! 13q577u0wws11313113swS10ww711Ss1q7qq1Wwq1   !wwsw0sw313q11q1P11p501w511q1q11qq1511!1q11s10 1sw5wWq3q3111RRS53s7711111!11! 7w7sqs753533P1551sS531151151q713!!qssw7we1qs535130s1!3SSSS3q5511111557Swww013S3Ss11!7113Q15!3S1qq313!1  1Ss7SpRq133S3S3s3Q1qrSSq1q3Q503s1qs1111R  !p01!53swsqG1131s57711q33311q37qq1111111 1031ww21113113s01!53111q%135171551 111151wu113171q57A1!1111SWsSq11S1! 1011s57ps1111qs31s7SS1q53S!1137swq13011111151q51q5115s1sw31!1!sw103!11sa`3s53113S751s3qs11 11  31qswpwwWu11pp`pp  s1SSQsq51sWs7110   51wWw7sw7wwwwwpSG%51s171SSs1wS1Q 1  # 1wp7wwwwww7wppw%wwwa40Rw555571sq7q7w111311    qswpwsuuwWwwwww6wvqwu sSsq1qw5557171s1 03017swwtwsw47Ww%wwwwwvp6W7u757SsSss17u1q  1 3qwsuwwwSwwwgvwgwpwSsqq7Sw7qqq53107wQ  3  757wwwwwWwwwwwwwwwppw5577ssw51qw773110s1   1!17u'wswwsWwgvwwwwwpRS75773Sqq31311Wq  p    3SwutwwwwSww%pwww%1qSssssqswSWqssQ113q  1 1!1#ww7WwuwwwwrWCe1q77qsu557v77300 0Sww7wwww%5 qwSCSSs5swpquss11  00q7wwwwwrBWv46q%151qswWWssu111111qwquwu5w5u4qwwSSw7sw7sSWww111 01wwsCwwwBacCpvrqqwwwwwwg7sqq111wwwuwwwuRWwwww55vwwwwwwqsW5ss     !swwwwwwWac'wwwwwwVwsWwwwwwwu7w5511      17sSwqquwwRWPwwwwwsswwswwwwwwswsw31!    0a!q011qwqwww'ww'wwwwtwwwwwwwwwww57S1  1q1%1wRW7wwPwvWwwwwwwwwwwwwwwww7sq7  01u7wwWwww'57wwwww7wwwwwwwwww57Sq5q1!    10!!54!7u7SwSWvWCGwwwwwWwwwwwwwwww73555 11 5!Sp03wWwwww57t7wwwwwsw77wwwwwwwWqq1ws311Www711a560w7wwwwCGAg6Ww'Wwwwwwwwwwss17111sw7w1SS65qs1q7wWwwwwt746uerw7Wswwwwwwwww77151 w7wWs 1!3C7!pswwwwwAAasswvwswwwwwwwwwwwwq1111ss117sw'1 1q51S!1uwwwWww46!agVu5wwwwwwwwwwwwqssS17wu711wq1su!qsq1q11Sq377wwwwwAaRPqcRw7wwwwwwwwwwwww110sQ3S553pSsq57uS0WwWwwww!aRwwwwwwwwwwwwwwwwssWsQ13S051w'w7wq%77051!17wWwwwwwRPu4wwwwwwwwwwwwwwwwwW37s51A0!%Q7sS10Sww5!1p!7wsWwwwRvsGwwwwwwww7wwwwwww7qq1u111R1!Q1%Q4ww1Sq1qR1q3WsWwwwwu4st7ww7wswwwwwwwwwww77553q3111S51S7www55wvsuwwwwwwwwwwwwwwwwwwws0S1!1!1%15 1Q1q0101%wwwWww7stwcGwwwwwwswwwwwwwww7wq11S11!11170501wwwwWwwuw7W7wswwwswwwwwwwwwwsS10!!!0wqss1011!qwwwwwWwcW'Wwwwswwww7wwwwwwwwwwq11q117sSq!q0!0u!1wwwwwww7WrW'wwwwwwwwwwwwwwwwsw7151001!wwq000s!sWwwwwwwwW'u5ww7swww77swwwwwwwswSSqqp1wwqWq01sqq7wwwwwwwrW'cSwwwsw7wwwwwwwsw7qw77SsQ 11w7170SQ17101wwwwwwuwu5Wwww7wwww7wwwwwwwwswww 1wsS1Rwq121CqqsSwwwwwwww'cswsw7w77w7wswwswwwwsWw11q1%5007w11!!515!0!130q1wwwwwwwwWwwwww7wswwwwwwwssssw7wq01qw1Rs!0P1S7q7wwwwwwwwswwwww7ssw7wswwwwwwwww3wwS11!wqs1011q011!wwwwwwwwwwwwww7w7w7wswsw77w7777ww115SQs!r%0!7wwwwwwwwwwwwwwwwsssW7wswwww7wwww7www!110q7!7q5%5!0q1q0175wwwwwswwwwwwwww77w7swwqssww777qwww1W7sS5q1sW1111RQW7wwwwwwwswwwwwwwwsssCw7swwwswcwssswwww11sW551!0w1qRS1QpsR1sW773wwwww7wwwwwwwwwwsw55wwwwsW7sw77w7ww1wws5551!  1w50500153usWwwwwwwswwwwwwwww5ssswwwwwwwwwqsssw1wwqss51sSq0p01 P1qR!51p7S511aqS1swwww7wwwwwwwwwwwsw'77wwwwqwws77wwww1sw1sS1w1!!SS131swwsw7wswwsw7wwwwwwSW545ww7wqqwRsswwwwww1S1sW51s1Aq011!Sqw557wwwwwwsSww7wwwwwwwwsw77'7747uwwwqsswwwwwwww1sS755500!57qw7qq7www7w7wwwwwwwwwwwwwwpwsSCesw7SW77wwwwwwww17qswSSSsQ1q100qqwSqw3Swwwwww777wwwswwwwwww7s52wwqAw7'7wwwwwwwwww3SSsq77w0001sq157sw7wswwswwwsww7wwwwwswwsssv3SSQw0PsSswwwwwwwwwws7557Ssqsq7703qw51qwW53SW7w7wsswsswwswww7wwwww7w451r7'w541swwwwwwwwwwwwsSSsSqwSw1105WWsSSSq713W73q1wwwwwwwwswwww7wwswwwwws67557swu577wwwwwwwwwwwwq17qqwq7575sSCSq7w777577wq3Rwww7ww77swwwswwwwwww7wwwqpscW502RV77wwwwwwwwwwwwwwQ77swqw53W51qqqu5757SqsSwSWwqsqcqwsww77wwwww7wwwwwww7ww7ww7%7#cSS517wwwwwwwwwwwwwwssSSu1w7SwsWwssSqsSu777357qsSqpgRBGwswww7sw7wwwsw7wwwww7www7qw7%!cwwwwwwwwwwwwwwwwuwsw7w1sQ757w75u77757SWS131ss $sCwsswwwww7w7wwww7ww7wwwww77wwwwwwwwwwwwwwwwsgwSSsqsSqwww3575qqw7s17   t4w5wsw7sww7wwswwwwwwww7wwwssswwwwwwwwwwwwwwwwwwsGW77pqu7577usWSqsswss5551!at!0    7sqw7ww7wwwswwww7wwwwwwwwwwwswwwwwwwwwwwwwwwwuw4rwusqwSqsSSs73qsSu1qqusss54q  BqbG677cswssssww7www7wswww7w7wwpwwwwwwwwwwwwwwwwswSWwwwwpsS77SsW57w773517 pqBS`  wqw7swwwwssw7www7wsw7wwwwswwwwwwwwwwwwwwwwwwvqwwwwwP@`1!1qw7qs1wq11414t54AawrvSccqw7777w7w7wwwwwwww7w7wswwwwwww7wwwwwwwwwqgwwwww'7Wgsw1`7cCC@4w7vwa qa pwW77qwcugRqsSwwswwsw7w7w7wpvwswwwwwwwwwwwwwwwwwwwwwwRVwSg151w`rwwt4wgwwtvpww7gwarr3w7777swwwwswwww7W7w7aswwwwwwwwwwwwwwwwwwwwwwwwwsWu'wqrSpqusugcrSw4wwwwru4wwvwwp7wWsssR5#swSwswsrwsSSww5wswsww7wwwwwwwsw7wwwwwwwqwarWwwwvppwvwwswVGwwww SgewwwwpP327Cppsw5ws67wsww46wvp vw7wwwwwwwwwwwwwwwwww7wwwwAv'pwgw0pwswgwC7'wwwwQ$7vwWwrwe05777Swqp7t7sSR swswwwwwww7wwwwwwwwwWwwww6!GwwSW@%%wwv4PPCw`qw'P  43 55677u7wcGv7vp u'7sw7w7swww77wwwwwwwwwwwa 'c   %v   twg`6 SG   c407 qpwu%57 swwwwwwwwwwwwwwwwwwwwwwws u%4 0CRCpPpWg`  P 'pC@@QCppPC7@pwrsCvppp Cw577wwwwwsw7swwwwwwwwwwwww wrRawg @6Ww$cg7# rpRW  w0ppqcp`  SgwwswsswwwwwwwwwwwwwwwwwwwSu`!qvwaaS'vpwag'pvqPp%%rW%pP@p40wgwppg777swwsw7qgwwqqqwwwwWwSWwwwRRRP``qaapR!cWp4rWwwwqawwww% p0pwp qaawwwwwpsswwwwwwwww77wwwwwqwwwwwwwwwwwwwwwwwwsW5wwwwwwww5wwwwwwwwwwwwRWw4                á­þ),
	(4, 'Dairy Products', 'Cheeses', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          )  BM˜)      V   (   ¬   x             ˆ  ˆ        ÿÿÿ  ÿÿ ÿ ÿ   ÿ ÿÿ   ÿ  ÿ       wwwwwwwWswW7w7swwwWwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww44qat65psSCeqqsw#W  wwww7ww7ww7e7wusww7Su7wwwwwwwwwwwwwwwwwwwwwtvW%!$4wwwwwwwwwwwwsWw7St6%426W'wwwswwww7wwwwwwuwuwwsW7wwwwwwwwwwwwwwwwwwww%$  @`@     wwwwwwwwcSG6Spw5'WwWww7WwwwwswwsuwqwqssswqwwwwwwwwwwwwwwwwwwwwwpRC @              wwwwwwqwgsqr7pRprqsW5gswssWwWsWw7wwwwwwuwSwwwwwwwwwwwwwwwwwwwRQeA @`                  wwwwqqugWWs7g4sqwwwwwwsWwwwswwwwwwwwwwwwwwwwwwwwwwwwwwwwgaA B                      wwwww7scpu5%%asWsuvsWwsWww7WwwwSqsW7wwwwwwwwwwwwwwwwwwV   p @ @                    wwwwww7vww7erWrswwwwwswwwsW5swwwwwwwwwwwwwwwwwwwwwvSawwwwe `      @@                   wwwwW7vqqpu7wwWuswswwwwwwwwwwwwwwwwwwwwwwwwwwwwwww%wwwwqww @    @                  www7WuwwwrqqwssWwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwVu7wWgwV $qB `@@@@@@                     wwwwssppuggwtw'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwWW%6Ww'uw  d%                             ww77ug7sqsSw5wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwV7cWaggWwwp  P                              wwwwqt4wwwSRqwwwwwwwwwwwwwwwwwwwwwwwwwwwww7CWcW7WagR u`@         @                    wuswswwguwwwwwwwwwwwwwwwwwwwwwwwwwwwwwvSt5t4wpwu!a%pCBF  @    @@                 Gsw4ucwpqsswwwwwwwwwwwwwwwwwwwwwwwwwwwwwQaCBCe%'wwV @4  B           @@             wuw75awwwVwwwwwwwwwwwwwwwwwwwwwwwwwwwv64'RVwWwwwwwp    BR   @    @@ @             ssRV'sSwwwwwwwwwwwwwwwwwwwwwwwwwwuAC@VAgGwww45v    u$@ @ @      B$             wVwsaWwrWwwwwwwwwwwwwwwwwwwwwwwwwwwwpsc@p1gp% wur%   R   @@ @   @ @          sR56477wwwwwwwwwwwwwwwwwwwwwwwwwwg%FC @CCBuq PrQ    p         @@               wwWCStwGgwwwwwwwwwwwwwwwwwwwwwwwwwrCRt!$ BB $ ABp` RG4    B           @@@           qr56SqsSwwwwwwwwwwwwwwwwwwwwwwwwtw4%@  C`t a%0Ca    @d            $        vwRSwwwwwwwwwwwwwwwwwwwwwwwwwwwwe74qrBB$ 0C@VB@C4    `            $           sPw%4455wwwwwwwwwwwwwwwwwwwwwwwwsFwCB@ @ 0e!`@      !`4   %                     'CCSprwwwwwwwwwwwwwwwwwwwwwwwpt556 ``4@pCG    @ BAC@    ee                qCcRw5wwwwwwwwwwwwwwwwwwwwwwwwSGvQ`a @rE$ P@B        00P`    aa`                  4qqwwwww7w7wwwwwwwwwwwwwwwWwg4w$$ @pE%!`  @      @ @ p    BG @      `@         aRpw1gwwwwwwwwwwwwwwwwwwwwww7RWwRFPcG%$ @@@        @ @@!%      G $     !@        VuwwwwwwwwwwwwwwwwwwwwwwegwA`u!VaRCC             @5s@    P              %5surwwwwwwwwwwwwwwwwwwwwwu7wv$tp%arV% @Dd                 qg   RB   @t  @      rScurWwwwwwwwwwwwwwwwwwwwwwvVqgP2DpvWVRP                 ae  `T`         Wrwwwwwwwwwwwwwwwwwwwwwwwsqgude&E!wqa`p!e%gGt0                pw  4a  p       pprWu7wwwwwwwwwwwwwwwwwwwwwvVSRSRGwCCAtpu57S                 pPw@ F Sd       7w7wwwwwwwwwwwwwwwwwwwwwwqst$BG5e447Cw6vW0                  rRWww  @d7@       pquwwwwwwwwwwwwwwwwwwwwwwwwvVSCCAe 4w6tsCt5qwwA                    1wwwBwt      %$'7SwwwwwwwwwwwwwwwwwwwwwwSstp$0GgpW4wSvwqw0                  4!wwwu  Vw     RSuwgwwwwwwwwwwwwwwwwwwwwwwvWC CA1wsewqgWww                 0 awwwv `  BV    aRswwwwwwwwwwwwwwwwwwwwwwSct%$$!GWe%6Www'sWg                 !7www p    B@   aCWawwwwwwwwwwwwwwwwwwwwwuu%BPRRu7VSrW5wWsW0                      www w        %0  !awwwwwwwwwwwwwwwwwwwwwwrwr%%%6t54uwww'wwA                   www         p@4Wwswwwwwwwwwwww7wwwwwwwwuwBRBVwvwrsGwwGw                    !www@        CC@444wwwwwwwwwwwwwu7wwwwwwwp%$%%cWRWWwuwqw0                      !www           pSscwwwswswwwwwwwwwwwwwwwwqg&4sWcwruswwwtq                       Wwwp          aa%5wwwwwwwww7wwwwwwwwwwwwwvqAaA`aug5rtswww0                     'ww            wv7wssW57W5wwwwwwwwwwwwwwu4"PrApwCwWuwuuwwP                 $      !w`           g45uwwwwww7wwwwwwwwwwwwwwwwgE$%qvSg'qwswsp                       @@p   @  @   ww7sWwwwwwwwwwwwwwwwwwwwww0pbPBQgewWvqgWWp                           v w p5%%4wwwwwwwwwwwwwwwwwwwwwwwwvV%%$5cRpwwww'wq                         R@ a t vSw7wwwwwwwwwwwwwwwwwwwsuwu0t CF5'WwWu5wpp                           %$   p p  wauwwuwwwwwwwwwwwwwwwwwwwtqgsweSAe$Vu'gwguwp                        aB          'wwwwwwwwwwwwwwwwwswqvtwwp$6R`t6Wu7wwrWs                               %WpRwwwwwwwwwwwwwwwwwuwwWwea@VAae%'ewuwwq                        Vp`    swCR  a5wwwwwwwwwwwwwwwqwwpspRuaw4s`V%vSV4wwpp                     !a     47wwwwu5wwwwwwwwwwwwwwwwwwwuww %6gaaBRAe%wsewq                        6         $447v0qwwwwwwwwwwwwwqwwwwrGWWwrP64%$6RRWwww                      @@              W'wwwuwWuwwwwwwwww5w5wspQ t0e5$PpABRAae%GC                           `            tw7Wwwwsw777wwwwwwwuw5vwwRPpGw@rC@RVsqw3                      @  p          wvwwwuwwwwwswwwwww7wwwqqat5aFW$`PRVV6ss                       uw  7@     ww%wwswwsW7Wwwwww5ww7wp sBp5%seppR@ $45qs73!                      wv w  `  u  t7V7wwwswsW77www5wwwvSp5%a`p'%$%%`pCAGsw6                    www w@ p v wt!guwwwww7sSWwwww7wpu4 `!rRPWwRR@pp`@t47332                 7wwp w  gp w WwBV!wwsswwqssswwwwCwwwAw0%aAe%%Ru%v@CGCBww720                  7www   p w 'wpVswwWsSsQqu7wwwpPSw644A`put4444ppV7sss!!                wwwt0   W  waeww0Wsw6447wwwu0'wprSCA`46stppaa6abRRC@a%asw776              wwww        uBSgpV7WsqrsSpswwsaAwwAA A'' @RU5%4`RP$7sw7371             wwvt    @p%vwsG6wwWuwCAwwpRWw!qaew'40@ %45! v!ag7agSB3swsv1!            7wwww     @ Ru4pCGqr57scwsswww%'uvPqwwPA%5B R@R!GPpwwwws3s3s73         wwwuvp   !Ae'RC%cwwwu5usuwRwwRWww7wqq 0 PvpPGw%7!a!%'Agwwwsww7w7rs3      7wwwww W@  `  V4Ru57sSw75wsww@0wgqwwwrQA wwwwWa$pA'wuswssw373sss2P    wwwwvw '   t uw gRwuWguwsuwSwGvqqwwwsq 7@Bw@!w7rp`  0@wWswsW73wsw77#s341  7wwwvWvWP  w w@$RwsS57qsqwwswswu5wwwwweuqv0qA5aCCC 7wuwwww3s3ssw7733# 07wwwwwwW`p   w@0PWs %WgwqwtwqswwWwwwwwwwuss@ AvQ%CB%4 7wW7qsw7w7w7733sscs73wwwwwWwrwp7  w  &wt  cW57wg57uwwwSwww7wswtp 0 wW$4  W%swW7wwwSW3w3777v7733swwwwwwwGuw     w Qwr 4rwqwwwwwwwswwwwwuqwwWp u  a ww7u55swswswsss3s3w77wwwwwwwwwwp      $7t CuwwwqsW57wwwwwwwwww7Qs@  v0 7pp@@ p7w7wst5577777s7s7wwwwwwwwwwvwe     GC@t7wwwwwusWwwwwqwwwwwu5gr7   t05 7B Puvwwsrqsssss7s7wuwwwwwwwwwWp      0v twwwwwwwwwwwwwwwwwwwwsC  S@  `1 4 w7wSwwSRw77SCwwwwwwwwwwwwwA     CA VswwwwwwwwwwwwwwwwwwwwR4P7p       qswSuqrq6cRs0w1wwwwwwwwWwtwwr`  `  p t6  twwwwwwwwwwwwwwwwwww$A5pr    p pwW767SssSqSpWwwwwwwwwuwwwuu     G  t7wwwwwwwwwwwwwwwww7SwwR$wrww        p  7Sct5cSqR1pq%715s7wwwwwwwwwwwwpav  w  w $7  Vwwwwwwwwwwwwwwwwwww!CA PCAp `     u'5sw577VSSRSC1pwwwwwww7wwwwwvC  w G@SWp 4swwwwwwwwwwwwwwwwwsSAcP40u!B %  `     0sqwSSAsQ3W6551t1wwuwwwvWwwwWwpt  wp wp$vq CewwwwwwwwwwwwwwwwwWvrPwawBCq `       psRq'776S%541rRCwwwwwwwwwwwwww@w  wp wpWv 7wwwwwwwwwwwwwwwqswat7 0@pPpPa  % w57SRSaq53S1rSww7wwwwwWwwwwt0     wp`wu BVwwwwwwwwwwwwww7wwpqqp  u !a ! aA%!sG57qsSCRWG1ppvwwWgwwwwwwwvWs       '7v !awwwwwwwwwwwwwwwwqq $6  pPuuv@ptWcwrW437u1w#RwCwwuwwwwwuwwt0       P'  RVwwswwwwwwwwwwwWqg S     0`0$As wt47Wppq#RqSRpwwwqwwuwwwwwwwB       p0 5wwwwwwwwwwwwww7wqa  P$a p 5@0$5$wwSpsq17Q5r5qq5wwwWvuwwRwwwww      V acswwwwwwwwwwwwuwwq` ! 0 aar@pA awwwrSSRVQsCa1sQ!!C%wsWgwvwgwuwWuvr      p   twwwwwwwwwwwww7w   qa  pww7qap717%0w%#qs5wwwwuswqww7gww w   '    Pwwwwwwwwwwwwww7w00 $%      00tewwwwwwSqsgQ2Swww7swWwvwwwwwtu`  p p  $$wwwwwwwwwwwwwWws@  004 4P 4swwwwwqps15'7R16qcQwwWwwwWwWuwwwgp  p  Gt  swwwwwwwwwwwwwsu4    C!!w P1wwWwwu5w1GRQap1saa6wwwvWwrwwwwwws@  wp  7R `twwwwwwwwwwwwwwws     541qsA!Gqwwwwwswq01ccsaAwwwwwGuvwwguw T0  7v  ww PwwwwwwwwwwwwwusW     !SSV75w5ww77w7wwwpqaCRrP7wwqwwwwwsGwwwp    w w `pwwwwwwwwwwwww7ws        5155rqw7wuwwqww1ap7swuwwwgwwwu7wWsWww       w  pwwwwwwwwwwwwwWsP      !3CW'57sWwWwswwwwas!cWwwwwwwwwwSGu7wewwwwvwa     p  $  wwwwwwwwwwwwwwswp       1p1qwWqsssuwwwwwSWsswW7wrwwwwsvuwwv7Wwqw       0R0`wwwwwwwwwwwwwwSs        !0557sqw5uuw75wwwu!sw7www7wwuwwwwuwwuwwvqwwa`     $At#wwwwwwwwwwwwu7wp         aRPsu%w5g777uswwwww57w5swwuswwwwwv5rv7wwwwwwp    $  RP4Twwwwwwwwwwwwwww      1470SSsVqus4wwwwwwqqw5wwwuwwwww5wwwWwpwWgww@ g C@ BpCwwuwwwwwwwwwww4          5#35sw757suwwwwwwwww7wwwwwwwwwuwuwwewwsuwpwp uw Rt0Rww7sSwwwwwwwsWw         1ArQ#P57RW7wwwwwwwwqwwwwwqwwwwwwwqawwwuwwpRw 'vtwV wG%uwwwwwwwwwwwwswp        007Q75#pq77SuwwwwwwwwwwwwwwwwwwwvW'wwwwSgwwpwRwGwaewppR7swwwwwwwwwwwwS          QqqqpaSW7WqsCwwwwwwwwwwwwwwwwwswu7Wwwwwwwwaec@wwD%wRCwpp'wwqwwwwwwwwwqssP        1##5a0qS17wwwwwwwwwwwwwwwwwuwwwwwwWwwwwp!Gw!wawe$wwwwwwwwwwwwwt5!          a#Q553tw3SwwwwwwwwwwuwwwwwwwwwwuwwvwwwwV!B!BPwwpppqwwwwwwwwwwww1p        RQ56SE3cWwwwwwwwwwwwwwwwwwwwwwwwwwwwWwwsC42R Rwwwwwwwwwwww!a0C     q51p5uqq5wwwwwwwwwwwwwwwww5wwwwwwuwwwwt CCDp% Ra`$4wwqv7qwwwwwwwP5pR0  Sq5u541!4S57wwwwwwwwwwwwwwvuwwwwwwwwwwwwwwpp44CPCaBpawwwwWwqcwwwwwu5a%  qg553asW5qwwwwwwwwwwwwwww77Wwwwwwwwwwwwww a`4 '0a%qvww7wwuwwwwwwwwRp5cRVw#Ru47WwwwwwwwwwwwwwsWwwwwWwwwwwwwwwwtw V0`%wwwwwwwwwwwwwwwwww0pAawwwwqqq5%5sSsSqqwwwwwwwwww7wwSwwWwwwwwwwGwwwwwwvw`AGwp``wwwwwww7wwqwwwwwwwwwA0wwwwwwwwwqqp%47wwwwwwwwwuwwwwuw7Wsw7wwwwwwwwGwp%pw$0w`aBwA`Raww57wuwwwwwwwwwwwwwwvwwwwwwwwwwwwwwq'wwwwwwwwqwwwwww7w7wwwwwwwwwwwwwwB@Gwu$4w4wwwu77wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwWwwwwwwwwwwWwwsVwwuwwwwwwwwwwwww7aa wpRCwv &57wgwwswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwSuwwwwwwwww7wwwsSwwu%wwwwwwwwwwtvw%%w@Pwuwu1wwuwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwggwwwwwwWw'wwwwwwwwwwww`w!`Rw4 2@wwww7wsSwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwu55grwwWswSawwwwwwwwwww   ` @@'wuwww7wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww55uswwwwWwwwwwwwwwwwCCCC!`pa$wwwwwswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwswwwwpswwwwwwwwwwww  @$ `B   ww                Ö­þ),
	(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          )  BM˜)      V   (   ¬   x             ˆ  ˆ        ÿÿÿ  ÿÿ ÿ ÿ   ÿ ÿÿ   ÿ  ÿ       wwwt Cs@t77777wpCpwwwwwwwCwwwwp S@@g5wwu t  @ P BP  wwp B7777sww03w0ssrP 3t0  7777w7vCwwsGsswv7wwwwwwTwwwww@P%swwPSPp P     ww7ssssw3p@ @@pq!Cw776r  swwwwww7w@D'Cs7wwsCAwwWwwWGpwWwww@P wuwwp@aC@       ww  wssw7ssw @  777sSas  77ssssu @@@E7tww777wwwgwwwwwwwwwwp GpGw7wwp        wwp777sw77   @@@qsssw7774  wwwwww6D@BG77wwwswwWwwwwEvwwwwu wwSwwu e   @    ww3sssw3sw @  cw7sssss   @@ssssw7p www77swwwwWwwwwBwwWuwwwwWwuwwvs@      wwv7777sw0!@  @77777774 @@  wwwwsu6RD@@@G777wwwwvugwwwu4uuww7wtwwwwwqVPCQu       w Cssw  0@  ssssss7r@  sssswcE4 BDswww7swwuwwwwwwgRpw5wwqw7wWuwwww@ 7q      @Gwpp3sw"Ss70@ 7ssssv@ @@ wwww67D@CwsswwwwwwwWwwwwWwWGw7wwwwwsqwww@  u1v       wq 73Q'7s3Csa`77w7sP` @  @ss76Sw7ss@@w#ewsswwwwwwwwWwwVwwWwwpWvwwWww P sWq @     w@63W0 as7p 7  @ wwwe47cwsD'7wwwwwwwwwwwwwWRwswwwpGwswww0u7P        ww @ Csssp7#q`'7s73s44 @776@Cgw7ppw74Stwwwwwwwwwwwwewu%%wwwquu@wWww@ 0ww       wwSw1  7s ss7` S6`%cR  3Pwepsw7psww$7wwwwwwwwwuwWgwTWwwsv w7ww W7w    P     w4q7R77737 3@@737%447 @C@GVpwwssRPwu'wwwwwwwWwwuwV7wwwwwq@@wwsWwpSqWp       4 sCQ P! w77w77sp  qw70ssp@D'`7777wwwsFVWwwwwwwwwwwueTwwwwWw  wwwu qg7P         Wu3WPq0cs33s4 @@63Cw750@ `Gwwww7sstauvwwwwwwwwwwwqcw5wt'p@Awswwwq1qw        @ P%q0Sqww2@   CT0w3sr4@D@Dcssw7swt4ugwwwwwwwwwwu7VWuwwq@t u57wwsu          sAP4 3p @#swsss @@Awww7wwstCGVWuwwwwuwwwVtwwwwww7C@twwwwwwwwp          w75At0u!    @ Cs77777@DD@@w777w77wagCgvwwwwwwwuegWwwwwww@Rw7wwwww    P   A7uwRqA7!w@@@77sssss@ 7cwww7wwRWEwWWWwwwwwwwwqwwwwwwu5@C`@wuwwwwwq P%       AgRqPpwPq0@  @ sw77777D@t@sT$7ssrwwrVwgwwwwwuwwWVWuwwwwwpq@Tw5qwwww P     GW5PQA@qpqq1 @73ssssv0 gw6SGswwW77wuewwwwwwwwwvwwwwwwwwwwaw7ssSWww  @@  pwwW0%Sw 6 7BSsss@t@w77@t2wqcgwwwwwwwwwwwwuwuwwwwwwwwSSuwWewwu7www5      B wPSW1AA6P453 p '7723gsww4 GvwwwwwwwwwwwwwwuwuwwwwwwwwwwwsWww5www P  V   W4!VQpsRps70BSw5#sWw7w77swsSDwwwwwwwwwwwwwwwwwWwwwwwwwwwtpwwswwpP  @   PSuaS4q5177sR@70BPs#swwwsw7w$@erwwwwwwwwwwwuwwwwwwWwwwwwwwwQwwu7ww   0@w6SPs1qqAwSC73ssC0@ 077w7sswsw$DRwWwwwwwwwwwwwwwwwwwvwwwwwwwwPgWswwwq P@ qAu w1A%pRW7q$sws67r@ @CCqwwwww7p@@t@ewwwwwwwwwwwwwwuwwwwuwwwwwqwwpW'wwwwwRP  qpwPsS4e%SSCR7s7   4ss777qt$CGGwwwwwwwwwwwwwwwuwwwwwwwwwwwwqwwwwpC  s  4p5`sAPQ1p1ap  wwwwwv7t@dt7wwwwwwwwwwwwwwwwwwWwwwwwwwwwvWwwwwq  PT   @@qpSC5gWv557q    @w77ssqae%4dwwwwwwwwwwwwwwwwwwwvWwswwwwwwp@wsWwwwq@       wRqa qSqq  pW44 @  3wwwwV7ssdBSwwwwwwwwwwwwwwwwwwWWqtwwuwwwwwuWwwwwp @P  @'VSA5@PqpqCA $  swssqsaswwSTGwWwwwwwwwwwwwwwwWvwewCGwswwwwwwv55Swp@     Tse5DC151  7 @763wwvw77v7wwrWwwwwwwwwwwwwwwuwwVT5wwwwwwwwputp @p@ P@qEwsawu@s@3`0 pBqscSwvw7sGwwwwwwwwwwwwwwwwwWwwVwwwwwwwwwt0@q!t  P ppWQsA@SA501Bw Sw 0v@DvRswwwwwwwwwwwwwwwwwwwwwWwuacWwwWwwwwpCTwqsS@ PR pWqD pasS014wAC   4w33 @@BCwWwwwwwwwwwwwwwwwwwwwwwwwwwWwww7wwwwu7wp7wWw7wPRS3WPu57pBV5@0S wv@D@7wwwwwwwwwwwwwwwwwwwuwwwWWuewwwwwwwqwwwwuwswt Wpu%Awr@QqAq% @BP7PA@  76S@DBDww7wwwwwWwwwwwwwwwwwwwwwwwwwswwwwwwwwwW755wpvuww45pQAv4qA0AA   @ sss @@@V7ww7wwwwwwwwwwwwwwwwwwwwwuewWwwwwwww@%wwWvw7sWAGswwwQ@C$QAq5Q % 1 77 @DBD$7w7wwwwwwwwwwwwwwwwwwwwwwWwwguwwwuwwwwVaA@pvWwwwqACAS0Aqq0 QAsq@ @r@WsvwwwwwwwwwwwwwwwwwwwwwwwwwWWwwwwsWwww aaa@D w51t7wwuwACAqaA  G@ P72@Dst5'7wwwwwwwwwwwwwwwwwwwwwwwwwGWwwwwwwqGPpa PegSSCSWwwpCWp q @1 A@ $  r@wswBVWwwwwwwwwwuwwwwwwwwwwwwwWwuwvwwwwwwpCCCw57u7wqqwwwu54Fs 0P  @ P05swsuaawwwwwwwwwwwwwwwwwwwwwwwwuwwWwwwwwwuA@@P@Aeqqe7wwwu57wwqqPqpR@  0sr wswswswwwBWwwwwwwwwuswwwwwwwwwwwwwWuwwwwwwpp44%!wSwSSqwwwwwWwwww5SpPAq350swswswwwatvwwwwwWwuwuwwwwwwwwwwwwwwwuu7qwwpA@PWAgu53WwwwwwwGewqp%54a7  ss2 wswsww7$Gwwwwww7qwwwwwwwwwwwwwwwwwWwwwwPgwG0w%wqwpwwwwwwwwww54wSQ@@t  @P  42Pswsww7tTeuuwwwwuww7wuwwwwwwwwwwwwwwWwGWWW5psTW575w7wwwqsGwwwSPww1@PP   !Cswswswwse$wgewww7wuuwwwwuwwwwwwwwwwwwwWw%pw%gWGwswwSwqsSqSwswuwW5wWwww@W a q w7swswsVRWtuwwwwusWw55wwwwwwwwwwwwwwwwwWWwWWSwWwwvW5w1uw7wwwwwwww50 Q  73swswsvswwugwwwwuwwwsWwwwwwwwwwwwwwwwwwwwwww7u3aww3Sqwwswu5wwwqswwwqu7W@  w77swswqwswwuwwwwwwWsu7wwwww7wwwwwwwwwwwwwwwuwu1qqwW5swwuwwwwwwWVWW41@P@  rsswswCg'wwwwwwwwwssWwSW5wqwwWwwwwwwwwwwwwwusswq5wwsusA77qsqqwwwwwquA@CP 67677swpSWwwwwwwwwwwWws45wwwuqwwuswwSwwuw7ww5u5qR5wwwSu7pwWuww5wwwww5 R507 sswCd6w7wwwwwwwwusw7qwswwwwwuwwwWswwusWs1sSqw7SwwwswSsSwwwwwwWWqP 1 r@ 77p@@DwwwwwwwwwswsCWwwSWqu557wwwSwSwspqwqqqqqu75qwSwWwSRWwwwvqwqWw0s1 prdtWwwwwwwwwwWw555su1qw7wsSwwu7wSuu70111wswwwQwwu7755%gwwwqwPw7 WQ7r0 4 @@DRBwwwwwwwwwu7usSww5su5qwwSWsuww57wS1S0qwuqqu'wwwuuwqSpwwwwAD50 us753p  @Fuwwwwwwwwwwu75wSWqR7W5557swSSWwqu3qq0sP1QwqsSwqGw57SsqwqGWuwws Asss6   Dt7wwwwwwwwwqwuwSws1qqqqqaquw17u7sWqu77wwWw7Sw1uwsquwqw%7wwwAsss6  @Fc@GwgwwwwwwwwwqwwsqSWqwWwq51wqwS5qqqww7Su1qq7WW7qu7wpPTu5wwwqq777S  @ u%7wWwwwwwwwwwwu57wsWqw57su57w5us3qwwwswW7wwswWw1w7wwgwwRWRWssp    @c@Rwwwwwwwwwwwwquwsqu557SSusp1Ssu1wW71q5SSp1wwu5qw3SW55ww1770G7sww5 Psr P  u%wwwwwwwwwwwwww5uqcWwu57S715777W51wwwww5u5q7wwu7WSSP Cw7wwwq@S 7673   Rw7swwwwwGwwwwwuqww555q7w705wSW5w5571CqwwwqwswSSSwW3u51@ 7sA'7w642C3Cs@ wwwwwwwwWwewwwww5qwsaww7SsuwSSSSq51u71q1qq151swwwwqwSqcwwwSsWSSB7ww7wwsP C730 777swwwwwGgWWvwwwqw7WwsqsW7710Su5150sQ1wwwu5557wW75q751  Ssssw7w4  7C' sCwwwwwwwwVvwuwwwwWW7usWwWswWQsQ5151%7A11177wwwsw7Ww7WSwQsS7777sw6@  3Rss7wwswwwwwuuvwwwwww5wsSww5qu7531q0155q1wqqS!wwwwwqu5qswwwswSw sssss770  @@@#773wwwwwwwwwguwwwwwwW555Qswqq751QSSSS55!wwwww7wswuwwu7SCq s'7777sBP@  ssscsswwwwwwwwuwwwwwwWsWsqsqwSq2SQ15q15SwwwwwW7qwwww7qsqR P77700 @  777777wwwrwwwwwwwwwwwwsWsWSQqp5wqww55aq1SWwwww7qwqwwwwwuw51sp 7723@  wssss77ww7GGwwwwwwwwwwww757501wwsswS1qqq10q057wwwuw7wwwwWwsqsSA70 7%$rs7 ! 77770wrD4VWwwwwwwwwwwuuwWWCSqWwwwwqqaqsq0517wwWwwwwWwwwwwqwSQ!sr 0 '3s@ 77 0sw0 7GCG'wwwwwwwwwwwwsu77Wswwwqu71%w5q1q30usW7wwwwwwwwwwwu1W3s72 @a70CsP7723D4dTuGwwwwwwwwwwu7WSSqa55awu7sSSQ5%q5qsw7sw7wwwwwww773w77   CC3sc  3r rCG%gvwwwwwwwwuwwwSswqsSwqSSqqQ70S7q!53SquwW777wwwwssWWsWw3sp    @ 7w77p  3dTtVuwwwwwwwwvwwwwWSW5q51w57A75SSu57Wsswuwwwwwwwuss33w7  @@  3s3ss7p @s%qegwwwwwwwwwutwwu757WsqqSuq7sW51%17Sww77Wswuu7Swwww7uw7w0p @  @77sw7sp @    tVwrWwwWwwwwwwwwwwwusSswu5511543SSW%q5wSquw77swuwWvu3s3p0q    !#s73s7   @@ qetwwwwwwwwwwwwwWwwwwu5wqsQ3SSW#q3SU051715svsSwwswwSWu7Cw7 swps2P !777ssw1`    wrswwwwwwwwwwwwwwwwwSSSwW3Q1u'Q5q3SSwwSSwuwww7w55u04 0s470 r@ 2770`    7twwwwwwwwuuwwwwwwwwqwwwsqu5CSRS7SsSSspwqw7wwsqsqqqwssws0 ss sw  ssp%3 sswwwwwwwwvvwwwwwwwwwswQwWSq51q554555553Wqwue57WwuwswW5s@7#0p72p  74%67  140wwwwwwwwgWWWwwwwwwwwWWswwq55sS1%571qp4qwqcwwwwSsqu7qs7qsw5  P073s044 Rss !r  wwwwwwwvugggWwwwwwwwwwuqqwq55!qqSSq1wq4qgSSu77WW7q7uqvsp 0ssssss0  7%'7  wwwwwwwwVwWWgwwwwwwwwSw7qsSS571%GSqwW7qww7wWwursWw7qw55s@7777770@   `R3sr wwwwwwwwwVwewwwwwwwwwwwwqqtqu57SSQ51a3ugv7WWsasuucpqsSRSw77777` @  w772wwwwwwwwuewwwwwwwwwwSquwSSwwsS7RqSWsWAussqqswwuwWsSWSRRu5su7v7777773     s7ssss`wwwwgwwwwwwwwwwwwwwwwwwwwwSuwu515q1q1qwWswSuugww5%7wqeu5%55qs77p4@ @ s7s7770 ww44wwwwwwwwwwwwwwwwwWqqu1uq7swW51sWwwsusCG7qavWWwup146!rw7Rssp0 @ s3w3w3s@ wwugGVwwwwwwwwwwwwwwwwwww7u07Suqq7qwwqquwWuGwv7wSCWqWVqu5PsCsp!c7701B3w3G   w4$4uwwwwwwwwwwuwwwwwwwwSwqSuswSS57wwwwww5sCqwquww5w5p RCAq%t555 3s w  C7s02B ugedt6GwwwwwwwwwGwwwwwwwWwWqq%ww557wuwuu%5vuwWaqwsqwww%'WRsSss ag7 770  3aq1 $PGE5wwwwwwuetwwwwwwwwwSswSSqw7wu7ww7wwaqwppwWupspSR5p PS!uaqapP007ss` 4 7#r edw4dvwwwwwwwwvwugWwwwwwwwu5squ7wwWWuwwwSAWCGuww7swW51RSSA%WS0@CCw77752  @Ss1PG7u4wwwwwwwwWGgTwwwwwwwwwsW77WwwWp%gwwWww5545suwquwWqaeP1454445t41S 73ss3s@ @  4 cw4wCGwwvwwwwwwwutwwwwwwwwugwwWwwwwwWuwwWRRW5puwawsqwSq0@SRQ rQR51R577w77w    @ @37uw7wwtwwwwwwwwCwwwwwwwwwuewwWwWwwu6uwuwswSRWwwu7Ws@ S@rSPP5%7Q%!03s3ss1  @  @33wwCtww7sqwuwwwwwwwwuwwwwwwwwwewwWwwuwuwww5wStw4upW7  SA440qAPq7w75`     7w3w77wwwwwwgGwwwwwwrwwwwwwwwuwwwwwwwuw5wwWwSWSAu7wQwC@  4!aaqA pq%'77@   73#stww7wwwwttwwwwwwwwWwwGwwwwwwwwwWwwwwwwuw7qwsWuw7wu  Ap  Qq@7rP73   6777wwwwwwveE47WwwwwwwwewwwwwwwwwwwWwwuwwwwWVqucGWwewS@  GpPapqe  01%0g6p  srs  0  3sw7wwswwu`V6GFww7wwwwwSewwwwwwwwwwwwWwuuwwwsWcu55qsGwt  SeP!APuQs@77702p  7 wwswww66VAdswwwww6FGVWwwwwwwwwwwwwwwwwwwWquwwwU557Pu6wq  RP 1q%   7 w10   wwwswwGW4d4Cwwwwww6u5t5gGwwwwwwwuugwwwwwwSwwwWwu'wGt4RRSSQaVAA  4P   sw2sc1   swCww7sswPD7V4wwwtuwFVpwwwwwwwVWgwWwRTwwwqw5wWSW7W4WvRQaru @  Qqe    77s773   wst77pwwp77wasCwwww75uaGwwwwwwwwwWWgWwsGWww7uwv7gwwWw5sPqquWR@P  P   cw7ss7    Cww`G77wGsstFww77ww%GwwwwwwwwwVwgWwuwpuqtuwSWSWqw%%vWugVqaa51!@  P 0@ 73ss7p    t7wp@agsCswwsqspewwwtw7swSwwwwwwwVWwwwuwrwsCwwtsWquww5qpVa@Pp A  700@7 rw77s     wp77ww77wtFV'ssswwwGgwwwwwwwwwwwwwuuuut1Ww5wwPuw5wWSSRW S@ 3s@ 1q  w7    wpt@D$'w77ww4Pwtw7wwsWwuwwwwwwwwwwwwwwwSWwwuwvWw74wSwu%e%Pt4@e g777#@@'3prs  p @@Swwsw7w`pd47wwwswwtrVwwwwwwwwwwwuwSe%sWquawWSVu%wSupqCpSvP@ 0@sss  s@57 t@`DT7sswst4tDGw7wsww6uuwwwwwwwww7wwwSAegwevusWWwwRW5q @@ @@7w777sw @usrc6 `7g7ww5cC@BBF77w7wwwEevpgwwwwwwwwtuwwwwwqqAAAGSWusrRwuqeqwRW  73ssw3@   sss`D74Cp G77rSw7@DGwww7sarRAGPwwwwwwvtwvvwwwwwwwwwpwwtTuuwsGswG!@  3sw7sst @@@@pssss spsppwBV77qwsppswwGwwug@wwwwwwwwWGWWwwwwwwwwWGWww7w7t770sw1` 7Rw777p@   777774w sw47p@awsG77BV7st7777prwwwwsu%44%wwwwwwwppppsw7w7w5$t27 C`  7sa44 @@qsssssspwsssssp 6swww5awCwwwwwwwuwwwwwwwGGWwwwwwwwGEeeFWwwwsssp   ssp1s70 sRss0 3ssssw                 å­þ),
	(6, 'Meat/Poultry', 'Prepared meats', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          )  BM˜)      V   (   ¬   x             ˆ  ˆ        ÿÿÿ  ÿÿ ÿ ÿ   ÿ ÿÿ   ÿ  ÿ       s41$wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww%wwwwwwwwwwwwugwP5wwwqvwwwv477sqrscscS773srs  $Gw7wsw7wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwvvwwgwwwRGuwwwguv777#srsqsqsw77w677s4wwwwwwwwwwwwswwwwwwwwwwwwwwwwwwwwwwww7wwwwtwww7wwwwvwwggw`CWwwug3rssssw77777773ss3qss$wswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwswu$       Aewwwwwwwu'u5gwww74ssqsss7777'7'63G73swwwwwwwswww7wwwwwwwwwwwwwwwwwwwwwwww6             @PwwwwwwwpWwwws77'677csscssssq73sv7wswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4     @A`tg@    @ewwwwwwRAgww7w777773srsw77757ssr77wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwsR   Ggw7wWsSwwwe @  Cwwwwwtwww7rSssSg7771sqsr3777sswwwwwwswwwwww7ww7wwwwwwwwwwwwwt7   w7SBG4ttwsp  @wwwww Cwwww777773sqsw67'7wcss77wwwwwwwww7wswwwwwwwwwwwwwwwwwV7   WvPda@tt C@``@t7v   Wwwwu$wwsssscsw7763ssss35'5sswwwwwwwwwwwwwwswwwwwwwwwwwwsww  w0RPp   @%%u4  SwwwS@wwww7'771sssw7777W3sscwwwwwwwwswwwwwwwwwwwwwwwwwu44wp   wupG @ @ @ @ @@@@e$w wwwtpwwsw57rw6773ssss#w7773wwwwwwwwwuwwwwwwwwwwwwwwCrCw%  wrRB@@ @    @      @ PA$w  wwwtGwwsss3s7676SsCsws7777wwswswwwwswwwwwwwwwwwwu764gP  Gu        @   C@wp www www7'w7ssSs677737scsCwwwwwwwwwwwwwwwwwwwwqv7%wtwp  wrRW @  ``ptT$ @   @aaw  Gwwtww7ss73qssw777'w%777swwwww7wwwwwwwwwwwv6%4v4sp  gtP@@   WGWWuwWwwWwwp@   @w wwwuGwww7Sw'7'3ssss3g76WGwwwwwwwWwwwwwwwwwSSu6g5gv  GqC@ @$VSSwwwsu'cwwuwt    @CCp Gwwp7wwsw63sssw773qwsVWrswwwwwwwwuwwwwwwsSrp6WcVRRq @wVD @$W77erW0WwWuuwWwwwv@ @ Pw` wwwAGwwssw7771rRu6rW'75wwwwwwww7wwwwwssC`qgSdt3cw  r4 @ ewpqawW5Gaw47w77vw7wt   @ CAp@wwt4www73ssscs76qw7wecGwwwwwwwwwwww%%47vqds2VWt w@@  GSRWpsRwpwu%%rSuuwWt    BW0wwwwwwww75%swGw7pw777wwwwwwwwww5!7V7gt7s5eww  wt  @usg!qevSwsSsW5wWwwww`  @t wwpwwssqcsswCsqgrsCGwwwwwwwww7qcvV%pu'Cq%gwgv w`D VSCWSpqg7S45%wCrw7wuw@   BP7`www www77Gwswewsww77wwwwwwwwPsuvw'rWwtwvp pV@  Wpq%47asCW%4ww551e77ww   @w WwwwWwwww7Wssru7w#ws7wwww7s'4rwv1!qwGwVvww  wa 4wVV@sSG5cCWRqpsCw@   C@7 wwwwwwwwg656Ssg7Ww7www744vwG7AacvvVwfwGw` u$ @ SG14sw%4qr7rq%45tqagu   Gp wwwuwwww7www7ssw3sw7wwrpsww4t674wwwggWgwep w S@  GwCRCWPSSCcqrWq7pSRp7`    w WwwwewwwwwWw77w77w77S7AwGFqcCGggVugWgWt7  wV@@@ 453V77w0Wqw5'Gwwwwuw   P`@wwww'wWWGwwssw7w7sswrpw`rscwwwWugvvvtr7v p   wt1ppupq@s'sSe61qqCWwwwuwwwt  pwww7WWwww7Www7qcv5v7Awg40pvevwggwggu77F WU`  wRpwSSw447wW1qwwWww    @Gq wwwwwwwwsu7wsw7wwsWw`qagwwwgGtvvwW6477p sA`  EvCSwpu%77a7w1cww5w6Cagwp  w wwwwwww7 ww5g7sswwgagwvwegwvwweg4qcGtw w   7qc441pSqRSVSV5swpSs7ww    @pwwwwwsPq@Pww7wwtrsqwugGVVwggrp75'6u'c Cpu`@ TsWCRRt40677!wS%!uw%471rSCauw@  4pwwwws%  wwuav5wagvvwwgwvV5CvtwRts @@  cqu1!sWsQqqWw3SWsq55!RW477sp  @ApwwwupRCGp www7swwwwuwGggwrW1cw4ew%2340@  uw'e45!v527gsu446Wa%7%!sCrRWt   B@q wwu! Wu wwwwwwwvvvwwe'0g@ve652S3p wG  RSQsCRQrU05%54ssSWw1t0qqpSqS7wP  w WwwV%u%wp wwwwwwwwGwsCRprG5g7%2a!c760 sB  uersuqa4rW2WWw'1q%wCSRps6`  `S 'wwqaCwrT7twwwwwwvwt4saCusFsBS73a3s t%@  @SqRW04%5w0%7quwawv5%%5$6SAqswP  g Wwwwt5GwRWwwwwwwwwws3s%'tbVq41'3rsS773@qD4 AtV5!wSRG5sqqcwsq7wqqaCSSC`Q'5wp   B0wwwq`5wt0wpwwwwwwt4adwV7W!&ssc73'3ps0r@   tsusRPqq4s'VWuw%6446U7%qpst  @TPwwwwWCGwGwPwwwwww3sWsds@!cq71s5sSs37 uG  Ce%7vWCqucWswwW7SSqq2PRsu     wwwwwwpWw WwwwwwadbVS43773s'2s#63sss Gp`P  @`GSu!qwgWR1wwSqgwcpSCesSqss5p  t'wwwwwtvWu wpwwwwwWsW3%#ss'3s53ssR71s@p$  t0t7Upw75wwwww!a575u%%%%%wp  Cpwwwwww5waGtwwwwwbV pss6'3a73s5371r3 u% @  pWqqGgprpSSCCusWuwSuqv5'p753Rt   @0wwwwwwtVwtw wwwwwW3ss7573s72s63csr770rC@  GgV7qqw6Ruw75wwwwsw1t5wPppRP5w   @$Pwwwwwww%wwpwwww p33a2s63cs72S75#3qs pT  5qwCAce5qWsV7wwwSVS!sq'75'wp@   PS wwwwwwwTgw`twwwwss63w1s3q73s35727 p$@  GvWAsWsUsGw#W7SWwWsv77cV47SSCSpwp   'Gwwwwwwwwwuw wwww333ss3r73ss63s'2qw3pw  @4qsrS%7W45%A%sww7wwqwSW5sRqappww@   PW wwwwwwwwaGw@wpGwww6s67C73c'3ss'3s73#0 q`d  G6WpSau'uws7Su0qwwqwswssCw7Swqu    3 wwwwwwwwwwwpWt7www3s3q33c1s63s71sssrp7P   Guwau0Uwe5t2RWwwwwsvW%u7pqaguww   @@4 wwwwwwwwwwAwwwwwws663w77#s3q7'5s'3c32 G@`@  r5swp52SrsW77wwwSsScu7www04    q wwwwwwwwwwtwpwuwww3q3r3ass'073s273a72ss p @ W wCS4u5uwwvwwwwwwWwwwwwwCS   pwwwwwwwwwwwPwt7wwww63s737sss'771s73s5 p`T  wqe'upsSwcsesSSWwwwwwwuswu0t     wwwwwwwwwwwpWwGwww73r3c3Sc6'3S1c63s61r' 5  @ WqpusPw%7wwuwwspstwWC    Pq Gwwwwwwwwwwwwww7RSgss7673ssqc7'3s7416Sp W$@  u wp%7wwwwwVwwwwwuwVww5%   @@ q wwwwwwwwwwwwwwwwcwwW3c7s3q37373sq73GCc'W pS@ 7Sw!0RPqqwu67wwwwwwwww5 @   $p wwwwwwwwwwwwwsCsWwwws7r6567'sss#a%G25uqc 4@  GppqpA!057wsSuwwwwWwwwwwwRQp   P wwwwwwwwwwww7wWwgrs73s3s3s770rVR6V667@ w p   wWRSRRwSwwwwwwwwwwww%6@  @@ q gwwwwwwwwwwwSGwwgw57Vr6s563w7350vwwvww5w7 Ct`@  Gqaqp 57guwwwwWwuwwwwwsSq  @ @Cp wwwwwwwwwwSsgwww7%www3s7#3s44&w555swuwws@7 P@  w0wwuu7Wau7GWwuqEsWwwwwwwt   @  wwwwwwwwwswWwwqauwwvws53ss47%aCsqcSCrsuswwwwp W$  Wuw6t!sCV7wwu4sWwwwwww  q wwwwwwwqcSe6wu47wgwvww7#43CpC#BV5'757susw7ww pA`  wuwwuwSWGw7W7u5wuwwWwS@   7 wwwwwwwwwwwww'wwwwwwww3s3aar6qG75w7Ssswrwwwwwp W$@@@ wwwWwwwssw7Gwu5WWwwwwWt@ PBq wwwwwwwwwwwG7Wwwgwgwvw43@rRW4qc sqsw757ssWwwww@SA`P wwwwWwwtsGSwu5Suwwuwwsa @wwwwwqewwwwwwwwwwwwwwwS73a7%'!cswg63Csaw7swwwwp@w wwwwwuwwu7wWWRuwWwu7qwu Aa@q GwsRVRSWwwwwvwvwww567G@rrRV0ss7Rw377sqw7wwwww wAB@ wwwwwwuqwwwwwU5wu6WWWSG%sv P07Wwwwwwww%vwww7%5%#aw4wwSss77wwwwwwt rAB@wwwwwwwwutu7wwU5wwt%`Sp     @AA%7wwww7wwwwwrR3qw7#sw7w500tqepu77wwwwB@WQd4  Wwwwwwwp RWWwagWw@w P       RRuwwwwwwW%435%sss3s77sq0cw7777rTwWwwwu we@E%%t4RT @4WwwwWQwwPG@Ww       wwwwwv7ssw377rsw77RP4771swwwpwWwwwt w@R@        PsWWwqwwTpp7           0q!Wwwwu77ssssssc57CS1%75CAC1puWWewwwwt CwPP@@C@    5eswwt%pRTwP          !ASP1wwssw27777773arwpCsGwug@qwwwwwwpwpAae$ @ CWWWwWV@w0        P!%www7usssssqrV%!'S GtGvWwt5 Wuuwwwww@w4Ae!$qwwu4 E7w F             !0q7sww77'770cacsWu0WwpdpGu5twpa5wwwwwwww@ ww @DDT%uwR@usu  Dq@        AaqWwssssssqg7ce0 CtGvFRWDCwwwwwwwwt  ww5      uwwt  Gw@         Sq1wwsss0c7Ccp47Cp@tw@`VW5eeq`dpuwwwwwwwww@ wwwvqcPtwwww%  Gww@   PAACP7psw7w77gw6wp4 wV wDv@@CSwwwwwwwwwwD   Aau7WwSRPp  wwwp  5% 5!Ppqsw7rs7!%%wwwP aw VwWuwetduwwwwwwwwwwww@@          @Gwwwww  pq0APp5qGwsw7wwwwwww$pwPv WaGGVvWwgwwwwwwwwwwwwwwvVD$egGwwwwwwt%0 SPqquswsss!%wwwwww5 B Bd@evtpuwvWwqwwwwwwwwwwwwwwwwwwWwsWwwwwwww4       QS1q0q5%T7wsw77wwwwwwwt6WpBECGGegvVWwwwwwwwwwwwwwwwwwG0CTwwwwwwwwA          aqSu!wswscswwwwwwwsP@ A`pp%$$`VVWeegwwwwwwwwwwwwwwue5 47wwwww            P 1qpsPswsssswwwwwwwtp t  AGgwuwwuwwwwwwwwwwwwwwwwpRq4SuuwwwwwqA          445557wswsswwwwwwwww5@@@@w GBVuwwwW4uwwwwwwwwwwwwwwww'wuwwwwR        QCSW0sw7sr7wwwwwwwwp `@ vwuvuwW4qwwwwwwwwwwwwSt4ppBsAsGwwwwwwS        A40540w7Cs5wwwwwwwwwR@ @d A@RGuwWuwu5U5uwwwwwwwwwwwSWe1utsswWwwww@   @P0ASAw7Vwwwwwwwwwwwq$`@D$$4SvSWV7CRWwwwwuwwwww sAp@qutWwwwwwwP 0  @ AA0aswwwwwwwwwwwwwwwR@ @RP$ CAeupu4uwWuwwwwwwtwwww q@0pPpsswWWwwwwppP 0Rwqwuw7w77wwwwwwwww0 @ P%$5qauqu7W7Cuwwwwwwuwwp%BPw eGqwwwwwwwwP Caa!ACwwwwvw'wswwwwwwwwwwwqt$g@DPCWRuuuuwwwWWWwwwwwP5   sG!wWwwwwwwwwqa  PR7wwWwswwswwwV7wwwwwwwwwwGwww 4UpRwwwWwwwww7wwww@0  @qGpspWsWwwwwwwwwwpqa%%%%wwwwwuwwsww77wwwwwwwwwwwq%wwwW@$SqaawuAuwwwwwwwupwwww@4  @rqG6Wquwwwwwwwwwwwswwwwwqv7sw7usWwwwwwwwwwwwwv56SPtu PBQqgW5ewwCuuwwwwwwwSWwu` 75wqewgswwwwwwwssw7wwwwrSgwwwwuswwwpwwwwwwwvsqqvwp44r paPq0uEw7wwW7wwwwwwwwsww@ rSgSAw5uwwwwwwswwwwww7swww7ww7swwspwwwwwwwRStwvwgwsPup4@%4wSsW5wvWwwwWwwwwuwwA  qG4qwt5wvw7wwwwwwwwwwwwwww7u76wwgsGwwwwwwg6wewvw7GwqGCu7300wWuuwswwwwwwsw4t as 7qapw7vqwWwwwwwwwwwwwswswW7wwwg5wwwwwwwwuwWww%4ugwwvwqsw3q5q1q5wwwuwwwwwwuwR  4uwsWqwwswWwwwwwwwwwwwswswwwqsWwwwwwsSg6vw'cawgvwvwesBW6Ss`e7Wwwwwwwwwww`R qaRWwqe4wwuuwwwwwwwwww7swWqwwwswwwwwwww7wuwwwsuvWwwwwgwWsS3wssSuwwwww5wwwwpr7asRSGvwswwwwwwwwwwww7wwwrWwwwww7W7wwvwt7Gwwgwggwww`w75cw#gu0147wwwwwwwwwwwpAqatvwqwuwWwwwwwswsw7wwrSwwwwwwwSwwVwwwwwwwgwgwwgqvrSc57qASWwwwuwwwwuw@sPwg5wpw7wwWswWwwwswwwWwgswwwwwww'swwtwt7wgwvwwwsqqgaw7SawGe!01q3qCwwwuwwwwwwwtB#e0wqCvrWqw7uwwwwwwwwwwsSwwwwwwrsqgvqg3vwwwwvwwvwWgww477v535w5757wwwwwwwwsw7pA`WS7puqwu%wuwwwwwwwwwwswwwwwwsw7WwwuwstwwgwwwwpwwgwggWu'w2Q6ws!0CSwwwwwwwwwwww571%wpsww7wwwwwwwwww7wwwwwwsv7wwgvsrWwwwwwt7wwwwwSqs'SqwsSsQqWt!%1wqwswwwwSwwsVqGw0wWwqwWwu7wwwwwwwwwwwww75wGwqqvWwgwwwwwwgww7677Wsscqc07pSgwVuuwwww7w7wwsgw7sGWsCwwuwwwwwwwwwww7rWgwww77wwwwwgwtwwwww3sCsrs75%1'57SCq51wS1%wwwgwwwwwwwwwwwqawqspwWwwwwwwwwwwwwwwCwwwwgsewvwwvW7wwwww57Cs777'w3SSCw15SSwRwwwwwwwqwwwwwwqvpwwAgu%r7WwwwwwwwwwwW57wwwwqsGwgwwt77www7%rsswssssWw07qqqprp1s51%wwwwwwqwwwwwwwwqw7qww5w7uwwwwwwwwwsrwwwWcRwwwwwwsspvwwwsGw77773csssw34w51w5uSwwwwwwwwwwwwwwwprwwqwwwwwwwwwwwW7wwwrwwwwwws%74wwrw7wsssw7cwsrss45#q0wsGsSp47141GwwwwwWwwwwwwwwwwWwqgwsvwwwwwww77uwwtw7wwwvwcwsewwsWsGswww77777776ssVCGsu0wwwwpWwwwwwwwwwwwwsu%7wwwwwwwW7wuvwwsuwvwwwsW7Www4v7wswsssVsSssqss773q7sSw05305waWwwwwwwwwwwww77wSwwgrWwwwwwu7wtwvwsRwvwwwsCw7gw7wcqwsww7ww77757757sS5sRScW!cS4pwwwwwwvwwwwwwwwwwwwwqasuwwwwww7wwwwsw7wwwvww7wRwswv5wwws7Ssssscrscrs3cs%755'1s45rSgwwwwwu7wwwwwwwvsWwwwvwwWwwwwwu7wvwwvw5gwwww57qruwWrSwwwww7sw7777777777cs1W73C!srqsWwwwu7wswwwwt7swswwsqwwwwwwucwwwwwsqwwwwww7sagwww6wwwww7Sw7srssssssss77'5!R73cw51wwwwscwwwww7wswwWwwgRwwwwwwwsswwwwu7wvwwgqpwwwur47wwwwwSswss%7575757sSsscw%u51qasw7svuwwswwesWwswwgswwwwwwwrwwwwgw7wwwwwwsv7www7r5wwwwwww7w7w7ssrscrs'6767773s3awqswwwcVwssswwSswgwwgwqwwwwwwsswwwwu7wgwgwwRwqvww7RwwwwwwrScss7sw777777ssssssss777Cwww7%!w7w7wwVqswwwwwG47wwwwwwru'wtwCvwwwwwwcu4wswCwwwwwwqcW7Ww7w77ssssss7777704rVRswCCaasws77w7777wwww777wwwwwww77wgvsswwwwwwq''w6Wsswwwwwwq77sw77sswsssssssssssssww7sw77w77777w7wsswwwwwwwwwwwwwwwww7wwwwww7wwwwww77wwwww77wwwwww77wwwwww7                ¢­þ),
	(7, 'Produce', 'Dried fruit and bean curd', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          )  BM˜)      V   (   ¬   x             ˆ  ˆ        ÿÿÿ  ÿÿ ÿ ÿ   ÿ ÿÿ   ÿ  ÿ       3'3s3ss73s!wvVw4w!&WwwvVwvwwwtpwwwwwwwwwwuwwuGWwwwwwwwww7wwwwwwwwwww7wwwwwwww!6w w  73s72373s7!sa7wvwsawrWwwgwwvwwwwwwwwwwwWwwwpwFuwwwwwwwwwwwwwwwwwwwwwwwswwwwwwwRA%vp`3's71sssr73ss07cGwgVrs7gwwgwgwwwwwwwwwwwwwWwtGWVwwwwwwwwwwwswwwwwwwwwwwwwwwwwwwwRcv733s73733s773ssswVWwWGw'Vwwgwgwwwwwwwwwwuwwp`pueGwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwpCws7s72ss73s#773su#cw'gwavw7CGwwwggwwwwwwwWwwwtwew%wwwwwwwwwwww7wwwwwwwwwwwwwwwwwwwww03s72s77#ss73ssc755'WRwwu6swwGwwwwwwwwwwWwwwtwtWFWwwwwwwwwwwwwwwswwswwwwwwwwwww7wwwwps7sw3s773'3sw7373ss1#7VVvutsswvwwwwwwwwwwuwtTgFu tuewwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww723373s3ss73237sw777sCswwvwtwssWwwwwwwWuwwu`eBWuwPGVVWwwwwwwwwwwwwwwwwwwwwwwwwswwwwwwwwwswsss'3w3737sss733rs7747wwwaewswwwwwwwwww`GVwpdeuegwwwwwwwwwwwwwww7wwwwwwwwww7wwwwww337373s3ssv37773sv77sssswvwwwwwwwwwwwwwwpRS@@GGR@CGV'gwwwwwwwwwwwwwww7wwwwwwwwwwwswwwss3rs73r733ss7#s'3ss7777swqwwwwwwwwWwWuwtdRVVdWVtvq7Ggwwwwwwwwwwwwwwwwwwwww7wwwwwww73773q73r7773s77773ssssw7swwwwwwwwwwWwwq@BP5a@D@gtGTu'v5wwwwwwwwwwwwwwwwwwwwwwwswwwsw3rs3s7#s73s7'7sss7777773sw7swwwwwwwwwwwd$ @@@D GwwFV5&rRGwwwwwwwwwwwwwwwwwswwwwwwwww777773s71s73s3s77776777w77swwwwwwwwWwwtP@BA    t@wwpGWGGRW57wwwwwwwwwwwwwwwwwwwwwwwwwws33s3s73s63s7s7s73sssss3w77swwwwwwWwwp@g  @  @wutttwebG!gewwwwwwwwwwwwwwwwww7www7ww777673s63ssss3s3sg7777swsww7w7wwuwwwwtuvEe   D WvV7etRwwRVswwwwwwwwwwwwwwwwww7wwwww3s3ss'7373737'7'73sssw7sw77wwwwwwwww@RGGu4pPW wutGu vTCGw%$gs gwwwwwwwwwwwwww7wwwwwww76w7733ssw3sssssssssw3sw7wsw7wwwwwwpD$gWGDew`@wwFDgtGed4$wqpwsWwwwwwwwwwwwwwwwwwwwww3s33sss733r73ss777773w7ssswwwwWuwwtpBPEv@G@wtD Ep@VTwvw@FsVwwwwwwwwwwwwwwwwwswww77w772s677773sssss77sw7wwsswwwwwt G@@@RFu E@@@up@d EBegGcscBVwsDsvwwwwwwwwwwwwwwwwww3333sss73s3s773s776sw77ssswwwwwww@TdBD44@WvD@@Vq@tEGu%cGGrV%cwwwwwwwwwwwwwwwww7w%!777sw777'7'7'73w3ssw7wswuuwwp @a`@@V@Dt@ww@  D@@DFTVRugse&sG5cF$0f7wwwwwwwwwwwwwww33sw!#S733ss33ssssw3w77sw77swwwt B@GA4 GPwVt@  peeGwgSq$vVtqe'Vwwwwwwwwwwwwwww%!tpw73s7w37ww777737sw77swwwWwt D4 Gp Gwteu  @tuwDeeewvRS!&vSe$cgwwwwwwwwwwwwswsw4pr703ws33ssssww77wswswwws@ dwQ  t  Fwt@t    @GwqGBVvwwvVcGtvwrspWwwwwwwwwwwwtp5swuasS#Wwssssw3swssw7wswwt4 @A` d  WwpAWp   wwvueegwwwf0rGw4 605wwwwwwwwwwswwCgRswg'33sssw7w777wsw7wwt  G 5@ D@ w`tevw     @wwwuPFTtvvvtwvS%rwVVWC'wwwwwwwww5rwt7Wwwv7u67sssswwwswwwww t@P@   Wt@VPt@  D$wvWe$GVRWgGgdgwCGecv4v2SwwwwwwwwwC547wrRw57ecqswwwwsssww7wwp  G  @v$V w @ @ WuuuW eedwewwvwwwsrtGqd6sGwwwwwwrww7Rwwtvwswww77sswwww7wwww @GC@  wTte @V@@ GwdwBPueVVwvwvtvwww'q`gwCFc0wwwww54sww7%7wqwwwwww7wsww7wwwwwp   @ @ Wpg  V  Ew`S`Gt@EdtvwdvVwgggvw Cwqcc4gwww7wsswwwwwwwwwwwwwww7wwwwwwq  @ @P@ GwtDA  @D   vqEvTVS@GpGGCVwwgdvwGGwa 6vFGg6RCrgwsw37w7ww7wwwwwwwwwRTFDdwwwwww @w wC@ t  @BPtwuDu  D wDt7'gwwewvvwwsSqdqg7$1wwswwwswww7wwwwvu`@@     evwwwv    tTt   @wwwst w  wgG4u7Vwvwwegwvtpq&gGGesC37s7ssswww7wwu%      @ @www   Wt`@D    wwAD@GP   wtwG'ag4wggVudgggrQ!44qrtvswwww7wwswwwwe  @P%eerW @Swp  Dqee`E @   Wwu@q   DwupGvwVsV6VwgggwtvwvsCs&gGsVs7vwwwwwwwu  uwwwWvwwu% w   GtG   p @dww@GP ww wVwgcWGwvvwwGGwtvcFeww7sswwwwwu  WwuwGWweuegWwwA`p  p@@A@@P  D Dw D   wwD 77vVut624'qegfvvegggaa756vwwwwwwwq@ wvVVWww5wvTuduwwA@G   @B@t@   wDged A   u@  swwwvweecSvtwwgVwwgwvSC7swwwwwww wGGwWwupVSWdWgWwp@  G4 P @G@@WP@q  u  wwwwwVVSa`vCgGwfwWGgwvw3wwwwwwwwt  twtWpwS57WDeEgwWe    P@w@@@t@gP@@@ut@ wwwwwwv7'egwat6qgwggvWggFGwwwwwwww  wwDwdRWu%40PqtPWWwwtP  @@@@@  De@e`V@  wt   gfVwgwwugSwC`vrSe'gvwgVwwvwwwwwwwp uCGDSEwWQA Vegeeeww    @  G@GP @P G@ut   TtPdegwgCwWGgRG'74gwwgwwgwwwwwwq EwVt@Eewu1Wsp@WWWWWWwwu   D  Wtq  R@7wWC@ GfFFGdtF@B@ww@csFT6sCBCqGgvVfVwwwwwwt 7vFVWwWqwSQR7wwwwwVWwt   Dts@D   DGae  DttugVVGefTdFwpCs'ettw42sqgewgwwwwww wduwuw5wUq55Wwwwwwwuww   wtDa    D wT  VvvVgFdgdtVdtB@dw`50rvgegGacCrwwwwwwwt ttugWtuwww40AwwwwwwwwgWt  GP`P   p@GP@@ GtttedwGVVfgGFtddursRV56%6GwwwwwwwGGuwwwwSQqQwwu5wW7uuww   t`@   GTpu  gGggwwvwgguttgFTd d53%#rVevVpr00wwwww wuwqwqwwwuwwwwwwwwwWt   w  `G@@ gwwwwvvwwwwgggttfVF@Gf73p0qrVagGgwwwwt wtwWwau5wwquSUwuququwwwwww   EpDa@P@@W@  wwvwgvwwvwgwwwvvvVedtas3s!vTg%6wwwwpwWwwu57www51!P'wW77SQwueuwt  D  `@w@@  wwwwwwwwwwwwgvvwwwvVed`Dd'773r1'4Wewwww GuwqqwwuwwwQW1 WwwuASSGuwwwwp  p @wT  wwwvwwwwwuwwwwwwwgggvVed`ps3733RRrVwwwu vuww5qusWwq01quw15eqqwuwWw    @@Ww@  wwwwwvvvFfVttwgwwwwwgefVF@F773qss3!%'wwww wuwu5pwsWqwvC!wwuSCwV5sGuwT  p@wT  wwwwwed@TAG@t`egwgwvVee`D`sp367773wuwp wWwSwWsVu0QqSQu5w5wwWtuwwp  @Ww@  wwwwv@Au7wsQEBFwvwetd E#7733#373wwwPwwwwPuwsuqsq!CwwqP7wwuwuwpGp  DT  wwwwd Ag7wwq5us5PDgwvdVTcs373SsS7wpwpwWW5quuwwqaqSppqqW5wSGWGqgww w      wwwwd 55w7w113S7WwwFd G3rSc3#63wPwPwwwuprSWwwqW!u  ww5wwA5u5twWuwPWp    wwwwtAqqsuwwqS%s51w@Gvuadd3373s3swpw wWwSqQusWwws0uwwww7w0wwuwWw`w   Wwww`@wssw75Q1Sw'vtgDc77373s3wPw WwwqpW7V5wwwqAqpwP uwwqWWWVwwwPWwp wwwd5wQq57wu07q!sQ11151w0gv@g@Css1c5#7w w uwWq1qaqWwuwWSpwwwusWwwwwWWwpww4wwwwA%7sSW7s11SS15w wwD`D32w7373w w GwWwWPWwqSSuquu5 WwuwW%wwWwwWwwwGwwwDSsqq13Sw!105q1177spvpeCs33s3sw w twusSW5wwQ!QCw7P5wwwwwWtuwwwuwuwwwwwtq%usCQ711SS1P755 gvD$777'73w w Gwwwu5wWwu1Q5uwu5u7wwwwwsSRuwWwwpGwvwwvAq753qS11C71501qpwp vv@C3r3327w w quuwwwwws 4wwwsWwwwwwWPASwwuwwwuwwu7Sw71%1q43QqSS1SswPtds773w wwwwwwwwwu7wWWQwvWCWwww54twwwwuwwwwD5sqp1111q!0111015w77 gt@3s33sw w@wWwuswwwq1  WwwwwwqqSGwwAAquwwWvwwwt75Sss11!7SQqs0s1uwGgcs7673wwwwwuu7wP PwwwwwtP4wu5GwwwwqWwwwA55sq!SsQCSsSSwqvD3c3s'w@wp wWWSwwww1wwwwww sRP7WuwtwwsAqs7S51sA57sq551!57wwbCs773wwt wwuSWwqq u1q7wuwWwu4Wu4WwwwuGwwT11Sq1Wqq17wq1q7sw10Swpt7333swpws uwqwww1PWwwu7wS@7SAwwuwtwwCSSq71173sW71q7Cq1q15%7w vC3ssc3wtwu wwW%ww57wwswqSp u5%wuwwwwp1ss7s1051sSq1s70WwPv7273swsww w7wwwqp5Wwwutq4AspSWvWwdwwT5!505337715SWw1AswwpR3sss7wuwwp wWWVwwqS P5sWvqq7 euqewwwwQwwaq153S1111sqq!11S55517wwQ5wwwwRe#3373wwwwp ucw7WWwS 1SuwQSssWswuwuww5515111qq71157wwwq7s5577 p53swwwww  SsQqwqGq 5q75AAwuusuuwRWwpSs1!5wSq110755111SQ1uwgB323wwwwwp  EwwCSwPS5wwwuwvwwtwT7Qqwq3q1s11w1q1Cq7BG12wwwwwu  @ Stq @G5%5q wawWwWuwwQwwpsq31170S111sss1q7u7Cw4 awwwwww   SPAw55a1wQ wWWwWvWwuwwq5311ssqqw51101wQQ57wsCCVwwwwwwp  wSeqpwtwwu5uwuwqwwUwwdwwCS55701Sq3w557S05qq15RwWw 44sacwwwwWww   WwWwQuwQwwwwwwpWu5vwwuQwwtS1q513S7751s7w111Spwsq57wPccwwwsrwwt  BVU7wwpwvWwwwwwwW5wUwupwwu%q1S1RQ51175ssSq053ww51qusWwwt5c`wwwwwSgs  W AeuwwwwqwwwwWtwwptwwVwwwpS1q1q311p11SS15115w5'5SS737wwp'sR4wswWwwqwP  u GSwwWP@wwWWwWuSWWwqaSwwwCqSS0Q577Qs17ssQSWWwqw7sSsww3wwwww7   wFWSPwp$wsqu5stqwwtPwwwwtw11151q0110sq3S0W1wqwps337wWw477wwwq@ w0 BWSu TFWuwpTwwp@wwwwPwS57q1q1!53wwC7wrs3w3sqgwvww0  u5C5$5CGttwwtwwwwwpq1114141Q!17SW0Pss77w4w777wuww@  wu5 FDDdDPQuwwP@CWwwwwwq53S1ss30555351q5731%3QWq'2ss33s3rssrSsgwsP  www51QAaSSwwww wswwwwp!1515111s1ss51q5u!Q77q1t q47sw7w777775sWsp   @Www7wwwwwwt@@ WwwwwwwwV51511uqsq1wwSwsqS5SWww3rW3r3sssss3r5'7wp    @VWWWGD@@  swwwwwwwwpW1S3SSPsS11wW3w11qaswwQ110swpcF2w77sssssw7s7%7w             Vwwwwwwwwwwps1QWw1SWsq1ws1wwu115wpw5a6%3ss777773s7ssscqw5!      twwwww7SwwwwwpG61q75551uwS7571!ww1wPag7CV7s7773sss73ssssrwwwwppq477wwwwwwwwwsw%wwwsAww3w7WwSq10sqq5w`rRRv7s7sssw72sss777773wwww7gwvwwwwwwwwwwwswuwSWsQq71C515wwq151wS50w5%'RR773sss77677w77777swwwwwvSsswwwwwwwwwwwswwq111773Sq3ws11w5577wQqGww5!ass77'3ss3sc373sss7spwugwwwwwSuwwwwgwwwwww0wsS01q1111Q51wSWw75517wwwwwww73ssssw77s77w'sssws7747sGswgWwswwvwwwwwwwwqGW511!sSS1111S1sqww73wwtwwwwww777773rs73s3s77737sssp4stwwvwwsGwwwvwwwwwt3sS11115s11q1SwsS0wwPwwwwwwssss77sssw3w7s777s3w77s3C0swwwww77wwwwvwvwq1q53s310q1q57wq1!wu'wwwwww773sss73s#73s7sss7w3ss77775#Rwwwwwwwwgwwwwp7S11!q111w171Swuw371wvWwwwwwwsss737sw7sssw3s7737ssw3ssssw747wwwswwwwwwwu551qqw73q7151qq1S1wwwpwwwwwww3s63ws33s7773w63sv3773ss73s3sssCVwwwu7wwvwv1Qsqqq3S7w1q11u1wwwwwwwwws717#3ww3sscw3sw737ssw'3s77w777ssWuwww47wvww1505SS5311w7Ww51R1W7wwqwwwwwwww63cc73w7773w73sss'73s67sc3sss777'6wwwsswwtsqsSs1151SSq1wQ%wqqsS7wwwtwwwwwwww17wacss73ssw3ss77777s7s3s7sssw77ssSsgwwwqvw`u55511517w7WsSq51wwwwwwwwwwwwccswwu%'1g773s77c3sss7s7s7s7773ss3ssqqwwgvqsSSSsS11SSS1wwwewwwwwwwwwwtv7swug3777ss3g73sw3s3s3w77'srwssssaauwwwt q511!q550sw1S50sS5wwwwwwwwwwwwsw7CGwssVq3ss7773s773w7'3w3sss77377'77767wvwpsSSSS77S1q 1qwwtwwwwwwwwwwtvwwsrRwwsvu47sss7rsw3sss7'77777w7'777ssu'5cw@w511q11s10w7qSA5q1wwwwwwwwwwww7sssw7w7sRs2r7773773w7763sssssS3ss773773sC4w0w555S51w1S1WwTwwwwwwwwwwwwwpssswssGwwue7Cssssw3w777777773w3ssswssw3ss0u Gw11113Swqs7wwwTW6wwwwwwwwwsssvwWww7sGrw7G7t45773w3ssssscss73W7773773w3773s ww5557W77w51qwwsCv4swwwwwwwwwps47277sssu'w7g7w'#S3w77777776ss7773w3ss3wssssp gs50q0wsSQ7swwWCcCCawwwwwwwsvwwwGSswwwsqaawwswwW'73s773ssss763scs#s77s377777SS1ue5qw1WwSwp cvwWww%'swwww47qew7'aqcsww7746tw7rRR3ssw7777ssss3ssscs#scs'3'7 5q17w1!7wu55wwwUu56ggw'4444wwwww7Gqw'77777wsq7Gwwwpr753ssss777773w3s3w7373sss70 WwuwWuu5wwwwwwvtGgwapsugVtwvs&qewwspwwwtwCGsswwsssCw7wuars7777ssssss3s7s3ssss737777 wwwwwuwwwwwwwGwvwvwe'qgcGwGprw7wwww44t7777%673wswptscw%%!css777777773773s73sss73s7@DuwwwwwwsVVvwvvvwvwwcCCTw`vWewwwwwwwsswwwwwsswwsww7swwwwww73ssssssssssss73s7373s73s731aCEettueeaacwwvwwwgwvwwvwcrWwvwww                ’­þ),
	(8, 'Seafood', 'Seaweed and fish', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          )  BM˜)      V   (   ¬   x             ˆ  ˆ        ÿÿÿ  ÿÿ ÿ ÿ   ÿ ÿÿ   ÿ  ÿ       !1!! 0 Q        4'Pa1aq3RRCAa!@0                      !!C%%  p0p       1!S4046CSQC5#BR`               !1AP0p04R 0s      !  10q@prSSSqsAu%467acCR5%%$p   !             0 !! CC 1!!q       p!1aa0'544746sw75%%vqq6   !  p            !BP0%Cv      0SCu qssSWsSGSSwwqt!eQp                 !Q q !!#040q        a$%!4417Cwu777wwswu7Sw7wwu2sS'@                !001Rq!7P       CQ3SCqwp7SswSSwsGww7w7SucG4qdR              QC A a%0  Cw       T06577G7ww7ww4wwwwwwwV5wwwqw%!A                !00001!!41w       SQsCSwwpwwwwwwwuwwwwu @   CqgRRA              CS % 00 4w     !@p6su7w7wwwwwwwgg%% BADt p@F A @550p!  @  0       !  001Q CRABP57w    0u5swwtwwwwwwRpTdFFvf@DdddFFCGP            0 !!A000 7Wp    esusswwwwwwww@@dDfVv @d     GgFBD !%40             0 1R$cP1CS7p   0!a45swwwwwwwttdt`@`@ @ F    @$gP@@P                !  1ap0@!Cwp  ! Gsw7wwwww' ggd   pGd  DFDd   Fdd              R1!1A1S!Ssw    41!pw7wwwwwv DFd@@@   u        d V  gD B               RP`0a a !q57w    !qswwwwww@@Ggg@   d d%gR       @ d@  Fvt           1!1!!A1 Q%7p  $! 754wwwwwdgd@   G@@www         tv gF@ Ft              R  ! p!1swp  qsSwwwRDvwv pF@@s1ww1      wwp@@   FdA!       !1!pR1!570 @0474wwDFvF  d d!1Sq310    wp   g@  g@           A  $0 !0!C3qq  aqswWudwg@ G@p Aq33q11S1          PFt`  @        $0R3 q5567 1C45777gGfvP Bv  eq37313s3ss         d FT         $0aC51%0SsQq  3SSSwtvd @g`t @GwR1533w773733         f           0Q 1a!!S453Ssp pa7577wvFw DF`  wv371ssswqs110     v@ `     @ 0!!aBSPq0S57  71sswwvwwd Ft  G'wp!1sRq 3w31w03q0   w@         0QP 53A75' TsW7wwwwFF@  d` www01 111 7w71rs010    Ft @         !01%!A61qsSs77wwwvv@  P   Wwwv13ss71 wsw1rq71011   F       B  10@q!%ssap 7Swwwwwgg td` sssw01773w0qp  3ws7!s010   g@       000%407 u7'wwwwwvt @wsw7sPws71  0  ws3s10011  t     0    1!ApCCSssc3wwwwwf@ dp1331sw 1ww7p   s    w773 113103  v@        !R '0pr7wwS7wwwwgP   S11sqsss77wsw3   CsS 3757! @wd    0  5!rQ1wwwwpsq7wwwtw`` 373770 1ww7ww      31  1177s w@f@       0  ! a#77Wwwqwwwwv e s33773sw13wwwws     13su   0F G@       5015!pq%0wssswwwvfDdas7307s3p 3psww0p  1170 77s    1   `        !!50qSwwwwwww@ d 7s!373qs0 0Q77ws3! wpC  wsqqp  0vR     0!Rq1%0uwssqwwv    ss7775!37p  10 4ww0s ww   w7771 Fv@       !!0002!CRpGwwwwwwvgv 353s35133qs0  w71w1  'w7wwp! pv    !  0p ww7wwwGv ta73s73351q33p   0 7s7S03sp 7w7w7gG@       000!0C10qp7 pqw7wwf  1ss73ssq003RSs   131w11Sww 01  ws7  d      A!   !0Pw p w swwwv@t@C3s71s313!33   01ws37www77s   d   P  ! !%A0q%7qwpwswwt   1u3S7753q000550   11w1577ww 1w0 v@     00   !417ppspswwvg t'S3s7s33q75#3S  1135773swwssq1  g`t`       % !p0s0p wwwww@ @D!Sw3773#   3ws17w777sw3 @p gA    !!   40pSw s w w77wv@   S33sss710131!11 !5#3w7wssw7s1!  dVDf    A @ @ 15!srppswwwF G@1qw73q37a7 !103537s33ss3ssr743  fBvA  `  0p41qcpuwwvt $dd773sSs3qq135!110q07ws1#ww73sp3  @e`0    P   !!qssp%`P 77wwg @`Ss3151330s1!001q1!#S0773w11120qw553   v@ 0   !!!!411 CpSp7 qswwtgdp  S7777371qs3S!37s33 1  @   P    @a3Sss0 pswwwvtF@Fe3SsS11q7312q%!1210517771!sq         0 V D0!   $41!555 p7777wv@ g  B133ss3Ss11100s#013w0         B dfv50B !sA!ss q CSwwwe` V@Dssqq17133S#313q73ww 5        t@ vCGwwwww5 `0 P!3q!p01sswwvp ` d%133sq773s3s1!1011!q31113w       V @g gwwss777w50   A4!!sBp p57wwGd  R fSSSS73s373SS1!3S7311157p 0    Fd`  $wss3sss73ae% ` q31s 0!Cqswwwg  e @3377753s731703!s3 ww3  d tDGw73s3333372a C !!!A'p@1057swv@    W573qssss71qs1711311113w7wwwr F  F`vssss77773s31 $Bpqq3Q!P  qasswwt   FFcS15373s53s31s3s1110s173wwwws11  F@ Ggwss7333373s0 0!!C4S p#57wwG`P   wSs3s73s7771!sSS111 vqwwwsB$   gwwsss7777333   ppq01q414101sSw7vgd a!'753ss1q733s33Sqwwwsw 11   aFwww73733333' fv !P6C 0SR7wuv  p AS3s3sS71sssS5113wwwpww1111 vwwwssw3sss3gvGGGgdaa@0103Qp0pq41sSw7vd G`` q#s7711s771111375ww7pwp  0 wwww7737333vvvVGgGA`7c3PR577ww@ @  0153ss3sss7357111ww3ww@  1110 1  gwwwwsssssrvvwgvvvvV$4 00341ap1aqsSw5wv`@ pS1353757777715313wwwwp    111`dwwwwwww7337wFwgwww`47q R11a07SCwswug    a3qs333s13s3S s17w      0wwwwwwwwwwwwWVRRtwvwtP@ 0q5CPRqsSsWGwd` v@ ss377577s73SS 771 @      10ggwwwwwwwwwu%  wvG 0 q5 C#SS57sssV  dw173S33S3S5311!#110 G    ` @DwwwwwwwwwwrR@@@apppawvA qq%7!a%4$ssqswstwwwD  `573ss1ss3s311 7W t` @ gtgwwwwwwwwwwDB@ RG@0  5 P0BR1q7qaqu7wwwwwwwtv@ q5733337! @`F   fgwwwwwwwwwue%`@@ACPquppt 0q3Qa550q%777wwwwwwwwwFp  qq53qqsSs33  @ e g g@BFwwwwwwwwwwwvVFe'BDpt7 P0CSCsSW4cwwwwwwwwwwwt` Cs1557333Q37 gPde`'wFgwwwwwwwwwwvEdeGFDRTRRWu  3Q#5P571sWwwwwwwwwwwwwt@D 1111qqq3 dD`p  GfwwwwwwwwwwwwGvVVF$ %'55%7t  0ps7wwwwwwwwwwwwwwwwgg`  5753S111`  `G   @tDgwwwwwwwwwwwwwwwwwtd@`@aaPgapWsAa #5r777wwwwvvwwgggfwvwtFV  q53q13 PF@      wfvwwwwwwwwwwwwwwwwwwwttRV7G%w A01qaqwwwwwwdwwvvwwGGvgvwtdwvS511q1wPdg    ffGwwwwwwwwwwwwwwwwwwwwwtSErSWwprSssswwwwgwwwwwvvvvwwgvwwtdg@sp`  `  wvGwwwwwswwwwwwwwwwwfgegwwww@e%rt5ww1qsR7wwwwwwwvteDTeDeDvwggwwFFGgu!v@ v  ggDfFwwwwww7773sswwwwww EdFGFvwwwRWGwP 57777wwGwwtdvvggFgFe'fvwgwwtvGFTggBGg@Dtdvwwwwwwwwsssw77wwwww EdDtveGGwtaepRSggwpsRspwwwwwwwwGgwwWwggtvVDG GvwgwwtwgftdeDtdvGewwwwwwww77sss77wwwwtfFggedddwwV%ww 555g77wwwwGgwwvdvVVFVDvtt gvwwwGwwwwvvrWEgw7wwwwwwwwss777sswwww FTeggfVFDFwV5pW4rwwPasp73SwwwwwvwwtvTvVGe`edFFGdD$vwwwwwwwwqwWg'wwswwwwwwwsw7sswwwt vdvvvvdtdGubStsUww 55qt7swwwvwwwGd&D$$DBG@edFvVGvwwwwwwqgpwSe7w7wwwwww77rt4wwwww@eggggdtdBFVgC7wu%!7373Swwwwwwtdf@DFT'e$B@GGe wgwwwwpupw7SVwwwwwwwwwt7wwwwp vVvwgggFDd@@w55gww 2qtstwwwwwwvFp@G t@g@dp FVVdvtvwwwwVws`wwSv5wwwwwwwwvAwwww@ggwfvtdeFDdduwCWwt!737swwwwvtd@ Dg Ft eg`dt$gdwwwww wWwwvBWwwwwwwwe!AwwwwFgvgwggvfddD`sCWwwp 00RstsqwwwwwG` dB DGFFtFBGEwPdwt'gwwwWvwtu%w77wwwwwvwwwtugwgvvgfgD    uwwwtAC77wwwwwtd@F  $fpgGddttfdefTwdwwwvRwWusswawVwswwwsPwwwvwgggfwgP      wwwr RCsqsqwwwwF@t`dD@@d@`FttpGu'wwpw7spWw'swwwwwuRwwvGegwwwwvvd      wwwA  @7w77wwvV@ d`    d$gFW$GwGwwu$wtuspwpw7wwa  wwqevwwwBF         wua   ! sqw5wwwtdD `Dt$ d`@GDG$Gtegdwwpwswqqgvwwwww4!% 0!7wVwgwT @      aC    73wwwwd BF@FfT$  edvFvVE'BVGwwwttwwwcwwQw77wsAWvvw` `R$pt!`B       w5u7wwwG@@ptfE`  FVdvGgvVtpwGwswwww7swgCww74RBwwVwp@AE$WFpp @    3w7qwwv`tt DBDdFv  ededw` dgwwtwwwwwwwe7wwa!PQp7pww@g$rBVBVAGG  p% a 0 Au7swwwuFFF `dG@F@  GFpBv4vRWVwwpwwww3s7w3t1ss7S@40! 0 WTw`vCAe t$4v   0p p 07q77w7v`G  a@@dddp`r   gFAGadvgwwwwwwwwwwwwW751u  Ascpg`V%P`vGBWBW G  %! swSuwwuGDDFD @Dd@d    7wwvttwtwwwwwwwwwswsrQswsu WVV4G$5`t$vp17777wwvF @ `t  vtVv  3wwwwwGtwwwwww7ws7wwww6w7!B !!w G`tC4RPFCVt B p C a`Su7w7w@gDd gF@`F B  Gwwwe@gGvwwwwwwwww7!7sSswSt@   pCeCGcCD$Bpt4aeds @077qwwwwF DDdFt@@wGa gwwvvwvwWwwwwwwwwuGwsu'7w   P0!CRRRp4444CCEad4pet P  4775swwDp`FPe@BFB@ddq gwwwGVtvwwwwwwwwws13W5sWwsp    4`tpVGBC@`t4e&SFVw00!qw6W7svFV$dFDd@`$RF0wwwgeewwwwwwwwwww7w1sw7qwu`  !PVRa`t4444a`VRGCGw    q@7577wwted@g`gB@dt dwp@Wwwwtvwwwwwwwwwww7wwesu7w7     !$aaeC@eaFWpGu%gu$! aP16sGw77w@v@F@@`$@Rgwe3wwwvwGvwwwwwwwwwswww5sw6w  05dadpRpRV0cB@wr  a747wwwD`D ` DD$dVgww1wwww@vWwwwwwwwwww3wwvRqaeu%aaAavBSFtRudt%%epwwu!!! r#sGsWsSwsqd $edDdd`FFDVwwswwwtggwwwwwwwwwwwwwsu7p3S7swwwwwVGCBRPa@Rc@GwC@0A0P45%57swwGt@VFD@@`dvwwswwgtwwwwwwwwwwwsww7P%%swat5`tDe%GRP `RVa@ww00@p0CsWRRww7wwvFFd@ fF  FFPGww4wvwGGwwwwwwwwwwwwwwsrRRGRqwBWBp V g$ 6wwpa4@P045%3Gqqssut@ DT @@ Df`wwwwtgvwwwwwwwwwwwwqwww0pP1!Cw57wt$B TprPRSVT www5!a !RRWqswwW6wdV`@vd  EFwwvvtwwwwwwwwwwwwswwwq%57Wp1@@@B @@$$$ WGwa Aq60R3G0pw5777W7Wf ddDBF@v@etGwweGwswwwwwwwwwwwwww2PR1pcSaw!s4  !  wegwA2Q# Ap!WG5sW'W7D@d   tDVdwwww'wwqsGwwwwwwwwwwsp4 prSRqepa  @@a%pgFWeaa`1!pR0p0a51s3V7swwG`G@  FDdGFwwwEsqww5wwwwwwwwwwp%#PSq6q!%!   BFtwRRR%000RP!aecCG5sAC57u4ud`@@ BFtgwwcww5swwwwwwwwwww!pP6%'SF   dG$ P%  !!a R0a51a%'7Sqsw6VDtdFDucWsvqssSwwwwwwwwwqpRQ@q5!sS$!Q0$Bpp0 !1a!# aR0Sae4psCqaq66ewsGeAeg657qe74qsqtwwwwwwwq0445RR0P2PB44 0C 1ppSSSsp754577w7Ru4swsCRpwwwwwwwv%5CT51arW0a0q%!1 CA04p4$%cA#p1q$CrSsCSwsqg53pG5q50q4!u7wwtwsRRSS0p0%! !p q 0C!p040  q$%5V%5%5'CcW sR4657 G0sw7wPqAp50pCC5%0aA !A!!0@ 04 q!a!A04$% a07BSsCS5%!aq'qp%7SqSaasw40F23CsRRS@00 BR a !00 Pq  q@6 pRPSaCAqa%%1asCpCRR5`rSaq qqsw3R50p0$441q!%c  !!0r P!%4Ca0C$%2!  32@qqa0qqpa5554351q07'0p1`00! q5qCSSC 04q a Q AA0140 P%! @6CCP%%%%CCpCGRRP$1pSG4C$'BCRCCBq 0 00RQBSApR4$!! 01q0q57 q50q517SSA5!01! !!0qsPq51p1! 0!  !010 !! 0CC                ”­þ);
/*!40000 ALTER TABLE "Categories" ENABLE KEYS */;

-- Volcando estructura para vista NORTHWND.Category Sales for 1997
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Category Sales for 1997" (
	"CategoryName" NVARCHAR(15) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"CategorySales" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista NORTHWND.Current Product List
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Current Product List" (
	"ProductID" INT NOT NULL,
	"ProductName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS'
) ENGINE=MyISAM;

-- Volcando estructura para vista NORTHWND.Customer and Suppliers by City
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Customer and Suppliers by City" (
	"City" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"CompanyName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ContactName" NVARCHAR(30) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Relationship" VARCHAR(9) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS'
) ENGINE=MyISAM;

-- Volcando estructura para tabla NORTHWND.CustomerCustomerDemo
CREATE TABLE IF NOT EXISTS "CustomerCustomerDemo" (
	"CustomerID" NCHAR(5) NOT NULL,
	"CustomerTypeID" NCHAR(10) NOT NULL,
	PRIMARY KEY ("CustomerID","CustomerTypeID")
);

-- Volcando datos para la tabla NORTHWND.CustomerCustomerDemo: -1 rows
/*!40000 ALTER TABLE "CustomerCustomerDemo" DISABLE KEYS */;
/*!40000 ALTER TABLE "CustomerCustomerDemo" ENABLE KEYS */;

-- Volcando estructura para tabla NORTHWND.CustomerDemographics
CREATE TABLE IF NOT EXISTS "CustomerDemographics" (
	"CustomerTypeID" NCHAR(10) NOT NULL,
	"CustomerDesc" NTEXT(1073741823) NULL DEFAULT NULL,
	PRIMARY KEY ("CustomerTypeID")
);

-- Volcando datos para la tabla NORTHWND.CustomerDemographics: -1 rows
/*!40000 ALTER TABLE "CustomerDemographics" DISABLE KEYS */;
/*!40000 ALTER TABLE "CustomerDemographics" ENABLE KEYS */;

-- Volcando estructura para tabla NORTHWND.Customers
CREATE TABLE IF NOT EXISTS "Customers" (
	"CustomerID" NCHAR(5) NOT NULL,
	"CompanyName" NVARCHAR(40) NOT NULL,
	"ContactName" NVARCHAR(30) NULL DEFAULT NULL,
	"ContactTitle" NVARCHAR(30) NULL DEFAULT NULL,
	"Address" NVARCHAR(60) NULL DEFAULT NULL,
	"City" NVARCHAR(15) NULL DEFAULT NULL,
	"Region" NVARCHAR(15) NULL DEFAULT NULL,
	"PostalCode" NVARCHAR(10) NULL DEFAULT NULL,
	"Country" NVARCHAR(15) NULL DEFAULT NULL,
	"Phone" NVARCHAR(24) NULL DEFAULT NULL,
	"Fax" NVARCHAR(24) NULL DEFAULT NULL,
	PRIMARY KEY ("CustomerID")
);

-- Volcando datos para la tabla NORTHWND.Customers: -1 rows
/*!40000 ALTER TABLE "Customers" DISABLE KEYS */;
INSERT IGNORE INTO "Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "Region", "PostalCode", "Country", "Phone", "Fax") VALUES
	('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', '030-0074321', '030-0076545'),
	('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'Mexico', '(5) 555-4729', '(5) 555-3745'),
	('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Owner', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'Mexico', '(5) 555-3932', NULL),
	('AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', '120 Hanover Sq.', 'London', NULL, 'WA1 1DP', 'UK', '(171) 555-7788', '(171) 555-6750'),
	('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Order Administrator', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden', '0921-12 34 65', '0921-12 34 67'),
	('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Sales Representative', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', '0621-08460', '0621-08924'),
	('BLONP', 'Blondesddsl père et fils', 'Frédérique Citeaux', 'Marketing Manager', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France', '88.60.15.31', '88.60.15.32'),
	('BOLID', 'Bólido Comidas preparadas', 'Martín Sommer', 'Owner', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain', '(91) 555 22 82', '(91) 555 91 99'),
	('BONAP', 'Bon app''', 'Laurence Lebihan', 'Owner', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', '91.24.45.40', '91.24.45.41'),
	('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745'),
	('BSBEV', 'B''s Beverages', 'Victoria Ashworth', 'Sales Representative', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', '(171) 555-1212', NULL),
	('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Sales Agent', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 135-5555', '(1) 135-4892'),
	('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Marketing Manager', 'Sierras de Granada 9993', 'México D.F.', NULL, '05022', 'Mexico', '(5) 555-3392', '(5) 555-7293'),
	('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 'Hauptstr. 29', 'Bern', NULL, '3012', 'Switzerland', '0452-076545', NULL),
	('COMMI', 'Comércio Mineiro', 'Pedro Afonso', 'Sales Associate', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil', '(11) 555-7647', NULL),
	('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Sales Representative', 'Berkeley Gardens 12  Brewery', 'London', NULL, 'WX1 6LT', 'UK', '(171) 555-2282', '(171) 555-9199'),
	('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Order Administrator', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany', '0241-039123', '0241-059428'),
	('DUMON', 'Du monde entier', 'Janine Labrune', 'Owner', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France', '40.67.88.88', '40.67.89.89'),
	('EASTC', 'Eastern Connection', 'Ann Devon', 'Sales Agent', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', '(171) 555-0297', '(171) 555-3373'),
	('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', '7675-3425', '7675-3426'),
	('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', '(11) 555-9857', NULL),
	('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Accounting Manager', 'C/ Moralzarzal, 86', 'Madrid', NULL, '28034', 'Spain', '(91) 555 94 44', '(91) 555 55 93'),
	('FOLIG', 'Folies gourmandes', 'Martine Rancé', 'Assistant Sales Agent', '184, chaussée de Tournai', 'Lille', NULL, '59000', 'France', '20.16.10.16', '20.16.10.17'),
	('FOLKO', 'Folk och fä HB', 'Maria Larsson', 'Owner', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden', '0695-34 67 21', NULL),
	('FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany', '089-0877310', '089-0877451'),
	('FRANR', 'France restauration', 'Carine Schmitt', 'Marketing Manager', '54, rue Royale', 'Nantes', NULL, '44000', 'France', '40.32.21.21', '40.32.21.20'),
	('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy', '011-4988260', '011-4988261'),
	('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Sales Manager', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535'),
	('GALED', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Marketing Manager', 'Rambla de Cataluña, 23', 'Barcelona', NULL, '08022', 'Spain', '(93) 203 4560', '(93) 203 4561'),
	('GODOS', 'Godos Cocina Típica', 'José Pedro Freyre', 'Sales Manager', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', '(95) 555 82 82', NULL),
	('GOURL', 'Gourmet Lanchonetes', 'André Fonseca', 'Sales Associate', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', '(11) 555-9482', NULL),
	('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Marketing Manager', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', '(503) 555-7555', NULL),
	('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397'),
	('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', '(21) 555-0091', '(21) 555-8765'),
	('HILAA', 'HILARION-Abastos', 'Carlos Hernández', 'Sales Representative', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948'),
	('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Sales Representative', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA', '(503) 555-6874', '(503) 555-2376'),
	('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', '2967 542', '2967 3333'),
	('ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', '(198) 555-8888', NULL),
	('KOENE', 'Königlich Essen', 'Philip Cramer', 'Sales Associate', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', '0555-09876', NULL),
	('LACOR', 'La corne d''abondance', 'Daniel Tonini', 'Sales Representative', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France', '30.59.84.10', '30.59.85.11'),
	('LAMAI', 'La maison d''Asie', 'Annette Roulet', 'Sales Manager', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', '61.77.61.10', '61.77.61.11'),
	('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', '(604) 555-3392', '(604) 555-7293'),
	('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA', '(509) 555-7969', '(509) 555-6221'),
	('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', '069-0245984', '069-0245874'),
	('LETSS', 'Let''s Stop N Shop', 'Jaime Yorres', 'Owner', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA', '(415) 555-5938', NULL),
	('LILAS', 'LILA-Supermercado', 'Carlos González', 'Accounting Manager', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256'),
	('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Owner', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93'),
	('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Sales Manager', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', '(503) 555-9573', '(503) 555-9646'),
	('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Marketing Manager', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', '035-640230', '035-640231'),
	('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Sales Agent', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', '(02) 201 24 67', '(02) 201 24 68'),
	('MEREP', 'Mère Paillarde', 'Jean Fresnière', 'Marketing Assistant', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-8054', '(514) 555-8055'),
	('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Marketing Assistant', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany', '0342-023176', NULL),
	('NORTS', 'North/South', 'Simon Crowther', 'Sales Associate', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK', '(171) 555-7733', '(171) 555-2530'),
	('OCEAN', 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Sales Agent', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 135-5333', '(1) 135-5535'),
	('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Sales Representative', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', '(907) 555-7584', '(907) 555-2880'),
	('OTTIK', 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Owner', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany', '0221-0644327', '0221-0765721'),
	('PARIS', 'Paris spécialités', 'Marie Bertrand', 'Owner', '265, boulevard Charonne', 'Paris', NULL, '75012', 'France', '(1) 42.34.22.66', '(1) 42.34.22.77'),
	('PERIC', 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Sales Representative', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'Mexico', '(5) 552-3745', '(5) 545-3745'),
	('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Sales Manager', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', '6562-9722', '6562-9723'),
	('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Sales Representative', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal', '(1) 356-5634', NULL),
	('QUEDE', 'Que Delícia', 'Bernardo Batista', 'Accounting Manager', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', '(21) 555-4252', '(21) 555-4545'),
	('QUEEN', 'Queen Cozinha', 'Lúcia Carvalho', 'Marketing Assistant', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', '(11) 555-1189', NULL),
	('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Accounting Manager', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany', '0372-035188', NULL),
	('RANCH', 'Rancho grande', 'Sergio Gutiérrez', 'Sales Representative', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 123-5555', '(1) 123-5556'),
	('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Assistant Sales Representative', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', '(505) 555-5939', '(505) 555-3620'),
	('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Sales Associate', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', '0522-556721', '0522-556722'),
	('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Assistant Sales Agent', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', '(21) 555-3412', NULL),
	('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Sales Manager', 'Grenzacherweg 237', 'Genève', NULL, '1203', 'Switzerland', '0897-034214', NULL),
	('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Accounting Manager', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'Spain', '(91) 745 6200', '(91) 745 6210'),
	('SANTG', 'Santé Gourmet', 'Jonas Bergulfsen', 'Owner', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway', '07-98 92 35', '07-98 92 47'),
	('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Sales Representative', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', '(208) 555-8097', NULL),
	('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Sales Manager', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', '(171) 555-1717', '(171) 555-5646'),
	('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Owner', 'Vinbæltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', '31 12 34 56', '31 13 35 57'),
	('SPECD', 'Spécialités du monde', 'Dominique Perrier', 'Marketing Manager', '25, rue Lauriston', 'Paris', NULL, '75016', 'France', '(1) 47.55.60.10', '(1) 47.55.60.20'),
	('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Sales Manager', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', '(307) 555-4680', '(307) 555-6525'),
	('SUPRD', 'Suprêmes délices', 'Pascale Cartrain', 'Accounting Manager', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', '(071) 23 67 22 20', '(071) 23 67 22 21'),
	('THEBI', 'The Big Cheese', 'Liz Nixon', 'Marketing Manager', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA', '(503) 555-3612', NULL),
	('THECR', 'The Cracker Box', 'Liu Wong', 'Marketing Assistant', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA', '(406) 555-5834', '(406) 555-8083'),
	('TOMSP', 'Toms Spezialitäten', 'Karin Josephs', 'Marketing Manager', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Germany', '0251-031259', '0251-035695'),
	('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Owner', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico', '(5) 555-2933', NULL),
	('TRADH', 'Tradição Hipermercados', 'Anabela Domingues', 'Sales Representative', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', '(11) 555-2167', '(11) 555-2168'),
	('TRAIH', 'Trail''s Head Gourmet Provisioners', 'Helvetius Nagy', 'Sales Associate', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA', '(206) 555-8257', '(206) 555-2174'),
	('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Sales Manager', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark', '86 21 32 43', '86 22 33 44'),
	('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Sales Agent', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', '78.32.54.86', '78.32.54.87'),
	('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Accounting Manager', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France', '26.47.15.10', '26.47.15.11'),
	('WANDK', 'Die Wandernde Kuh', 'Rita Müller', 'Sales Representative', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', '0711-020361', '0711-035428'),
	('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Accounting Manager', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', '981-443655', '981-443655'),
	('WELLI', 'Wellington Importadora', 'Paula Parente', 'Sales Manager', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', '(14) 555-8122', NULL),
	('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Owner', '305 - 14th Ave. S. Suite 3B', 'Seattle', 'WA', '98128', 'USA', '(206) 555-4112', '(206) 555-4115'),
	('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Owner/Marketing Assistant', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', '90-224 8858', '90-224 8858'),
	('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Owner', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', '(26) 642-7012', '(26) 642-7012');
/*!40000 ALTER TABLE "Customers" ENABLE KEYS */;

-- Volcando estructura para procedimiento NORTHWND.CustOrderHist
DELIMITER //
CREATE PROCEDURE CustOrderHist @CustomerID nchar(5)
AS
SELECT ProductName, Total=SUM(Quantity)
FROM Products P, [Order Details] OD, Orders O, Customers C
WHERE C.CustomerID = @CustomerID
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName
//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.CustOrdersDetail
DELIMITER //

CREATE PROCEDURE CustOrdersDetail @OrderID int
AS
SELECT ProductName,
    UnitPrice=ROUND(Od.UnitPrice, 2),
    Quantity,
    Discount=CONVERT(int, Discount * 100), 
    ExtendedPrice=ROUND(CONVERT(money, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, [Order Details] Od
WHERE Od.ProductID = P.ProductID and Od.OrderID = @OrderID
//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.CustOrdersOrders
DELIMITER //

CREATE PROCEDURE CustOrdersOrders @CustomerID nchar(5)
AS
SELECT OrderID, 
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID
//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.Employee Sales by Country
DELIMITER //

create procedure "Employee Sales by Country" 
@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal AS SaleAmount
FROM Employees INNER JOIN 
	(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
//
DELIMITER ;

-- Volcando estructura para tabla NORTHWND.Employees
CREATE TABLE IF NOT EXISTS "Employees" (
	"EmployeeID" INT(10,0) NOT NULL,
	"LastName" NVARCHAR(20) NOT NULL,
	"FirstName" NVARCHAR(10) NOT NULL,
	"Title" NVARCHAR(30) NULL DEFAULT NULL,
	"TitleOfCourtesy" NVARCHAR(25) NULL DEFAULT NULL,
	"BirthDate" DATETIME(3) NULL DEFAULT NULL,
	"HireDate" DATETIME(3) NULL DEFAULT NULL,
	"Address" NVARCHAR(60) NULL DEFAULT NULL,
	"City" NVARCHAR(15) NULL DEFAULT NULL,
	"Region" NVARCHAR(15) NULL DEFAULT NULL,
	"PostalCode" NVARCHAR(10) NULL DEFAULT NULL,
	"Country" NVARCHAR(15) NULL DEFAULT NULL,
	"HomePhone" NVARCHAR(24) NULL DEFAULT NULL,
	"Extension" NVARCHAR(4) NULL DEFAULT NULL,
	"Photo" IMAGE(2147483647) NULL DEFAULT NULL,
	"Notes" NTEXT(1073741823) NULL DEFAULT NULL,
	"ReportsTo" INT(10,0) NULL DEFAULT NULL,
	"PhotoPath" NVARCHAR(255) NULL DEFAULT NULL,
	PRIMARY KEY ("EmployeeID")
);

-- Volcando datos para la tabla NORTHWND.Employees: -1 rows
/*!40000 ALTER TABLE "Employees" DISABLE KEYS */;
INSERT IGNORE INTO "Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "Region", "PostalCode", "Country", "HomePhone", "Extension", "Photo", "Notes", "ReportsTo", "PhotoPath") VALUES
	(1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '1948-12-08 00:00:00.000', '1992-05-01 00:00:00.000', '507 - 20th Ave. E.
Apt. 2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-9857', '5467', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          T  BM T      v   (   À   ß          S  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ ÿ°É 		  
 	    		 š	 
    ÿïÿÿÿÿÿÿÿÿËœüþúÿÿÿÿíÿþÞÿÞþüÿÿÚÚ Ù  	     	
 	À 	    
 ¬ àààðéÊ ©Ë  à  		  Ð	   	  š ÿÿÿÿÿþÿÿÿÿü­ëÛßßßÿÿÿÿïíÿþÿÿÿþü¯š
  š       		
  š 	  	 	 ú­  °     	   	©°	 š    À ¿ÿÿÿþÿÿÿÿÿÿÏŸ¼¾ûÿëÿÿÿþýÿþýÿÏþÿù¼   	        	 À°  ° 	 ü­ É  Ë   šš	  °	  ©	 		
  ÿÿÿþÿþÿÿÿÿÿððÿßí­ýÿÿÿÿþþýïïüýïìšÀ
        	

   
   	 ù Ú š Ú Ð  	À  ° ©©°   ¬  ÿïÿÿÿÿÿÿÿÿí©ßùÿÿÿðÿÿÿÿýþÿÞÿïßù© 			       	
 š ©	  © ¬ úé©Ê 
™©   °  	 Ð 	©    ŸÿÿÿÿÿÿïÿÿþÚÞ¼ýïý­­ÿÿÿÿÿïïËïÞÛïÊÐÐà
         	    	 
      šðÊ		 	
	  °	 š 	 	ÿÿÿÿÿþÿÿÿÿý	éÏ¿¿ÿÿïýïÿÿÿýÿßëþý©

	            ©	 
  ¬°
ðð¼	  	­©	  	  		 ™	©      ÿþÿÿïÿïþÿÿêžŸ¿ÞßÿßÿßÿÿÏÿÿïïíüýïÀ Ð 	           	 
 	  °	   À
	ÀÿÊ
 	
š °	 	  °Ð©  š ÿÿÿÿÿÿÿÿÿÿÐùéðûï¯Ëþÿßÿÿÿÿßúÿ¯žûÀ©À 		 	               
   °É
 ð°ð	À  °	À °
Ð °	šš°	  	Àÿÿÿïÿïþÿÿü©ÏýýÿßÿßÛïÿßÿÿïÏÏßïÀ	 ©            	   		¬ 
  Àœð Ú  		ð¹	À	š	 š   š  š	ÿÿÿÿÿÿÿýÿþéœðý¾žúü¾žûïÿÞ¿Ûÿÿÿðþß
­ 	         	      š    

úÚÛ šÉ   	 
	­ 	 ›Ë	É  šÿÿÿÿþÿþþþÿÚËÚßûßŸýýýýÿÿÿïÿÿïÏ¾Ðé œ               	     š   °Àœ ý©šÉ ©
©©	­ ›
Ð© 		
  ½ÿÿÿÿÿÿÿÿÿü	­í¯éï¯¾¿Úýÿý¿ÿÿÿüÿé š   ©       	     	 	°    ° 
ÐúÞ¹é  	 Ð°™© ð	 °™    žÿÿÿÿÿïÿüÿÀðÚüùýŸßŸùýýþÿÿïßíÿÿïÏþÞž	             	    	œ   ð 	  ýºÜ­© ©   °	Êœ	š °	
ž   	ûÿÿÿþÿÿïïü	­	­ëïéïËïŸ½ÿÿÿÿÿÿÿÿïð   	        	    	 š
  	  
Ê
úí«ù­© Úœžš™©É©™	 		™    ¼ÿÿÿÿþÿýÿËÀðÚžÛýùÿûÿŸíÿëßþÛÿÿþÿÿì	¬°   		         	           Ðý¾ÚÏ¼¼º	  		¬›©ž
š	 ¼©    ›ÿÿÿÿÿÿþÿ žœ¹í¯ÏëÏéûÏßûÿÿÏÿÿÿÿÿà	                    š		     ÿéý¼ž›É ™ °›š	™À š		  	ÿÿþÿÿïÿü© °ÚÛß¿ý½¹ý¿Ïûÿíý¿ûÿÿÿÿþ 	          	  
Ð  š   š	ùÿëëëÚÛ­Ê	À¼°¼› ©		°    ¹ÿÿÿÿÿýïÊœ­­¾¾ÚÛí¯Ëü½¼ýÿïüýÿÿÿÿí  š                     ð  Úþ­¿Ûß­
°°	Ð¹   	   	ÿÿÿþÿïÿÐš °ðýùÿí¿ß¼¿ÿÿ¯ûÿûûÿÿÿÿÿà                   	     
ššùÚÚü¿¼¿Ÿ	šœ¹¹	°    ¿þÿÿÿÿïà		­ËÚþŸÛËéÿÚÚýùýýÿÏŸÿÿÿÿÀ 			        	    	 	©   	àþ­­ûðÛÚð¼	 ¹ 	  	    	ÿÿÿÿÿïÿ	
É­½¯Ûþ¾ÿßðÿÿÛÿïûÿÿïÿÿÿþ°  
                 °  	 š   ©ðß¯éëëÛé°°¼	Ðšš	© °   	 ›ÿÿÿïÿýü 
ùï½¾ÛýùþŸûÛïÿÛüÿŸŸÿÿÿý   	 		             	À 
š   	 
œþ Ðý¿¼œ­¿	 ™	¹é °			     ïÿÿÿïï 	¯žÞÛüûþŸúßïßËÿÿÿþùÿÿÿþ 	    	           	  	   °ð  ýÿ¯¯í¿¿žžðºšÚ
œšÐš	 	       	½ÿÿÿïÿþ	 ©	ðûûý¿Þÿÿßûß¿ÿéý½ùþÿÿÿÿÀ                 ð  š			­   ûïßý¿éé©¹½	ÛÐ›		 		   ÿïÿÿÿí ¼½­íïÿÿŸÚÿŸþßŸßïïÿùùÿÿù°    	            	 	 	  Ÿ
À   ¼üð¾ÚÿŸšßúš°	é©©é 	       ûïÿÿÿíð	 ›ß¿¿ËßþÿÞþß¿þûùûßþÿÿþ                  	ð   	¼© °		 ­	úžÉ¯žð­ºÐ½ùÉð°™š
	  	    		ÿÿÿïþü °àùÿ¯ßßÿúý¿ûß½üùüÿß¿ûÛÿÿýš  °            Ë  	 	 	éà 	   ÿËþÚù¿ÚÛ¿°™ÚŸË 	      °ßÿïÿÿð 	Ÿß¯ëßýÿüÿÿþ¿ÿûÞ¼ùü½­ÿúÐ                 Ð 	 °	ð°		þ¿Ë­¾ð½­©ý¼Ÿ ¹ 	š    	    	¯íÿÿïÀéùûëßÿûÿÿÿ½éÿßûß¾ûÿÛÿÿ	                ¹©  		 úÊ  °°à ðð¾ßï›ÊÚß©©©	ž™°¹©  	       šßÿýïý  ð½¯ÏßÿŸüÿéÿÿÿùëýÿ­ëý¼¼¾žðš  œ            		 
  	úÏí¯Ÿž½¹©½½½°¹©	Ð°	 	     		­ïïÿï 	ðùûü¿ïÿùÿùüùïý¯ÛýÛÛÙùÿ               			œš àÀ
 °ý°ððûéËÏžÚššÛËšÚ		© 	  	     ›ýÿÿÿÀ	¬½¯Þ¿ýûÛÿýïûÿŸ¯ßðùëûïï­­¾ 	             	   °«Ð
°éðí¯žž›¼¹ë½½½°šÐ™	 	        	 ÿþþð  ÛËß¿ß½ïÿûÿÞßïß­­þŸËÛÙûÐ½  Ë            œ© ©ÉÐ
  	À°šÀð¹­­¿Ë¼¹ÚÚš½©°© š       ¾ÿÿÞ	°ûûíëÿÿÿÚßß¿¿½úÛÿ­¼½­¾ùÐ	 	            	  	™©
	œðÀ¬û	­©ý¿Ëž»›ÛÛ¹	œ		    	    
ßíþð 
ŸÏÛßßß¿ÿÿ¾ýüúß¼šÚÛËðù¼¾šÀ ¬            š	 ž	 ¼©  	 	ý»	ð°¹¼¹Éé°¼¹ËÚ›	 °         ©úßï éùúÿ¾¾¿ßÿÿýþ¿ß¼ÿí½­¼½¯Ðù		             	 	ž ™	É  
šžûÍð¾›ÛÚÛž›½­¹	»		 			      		íþÐ	­¼¾ŸÚßßÿïÛÞÛýü¿ËËÚÚÛž™¯Ú °	            	 ©°		°šÚ    ð›©ù¼»é»Ëù°ù­°		     	      žžùà Ù­½ý¯ÿ¿Ÿûÿÿÿúûü½½­­¬½­¼ùž	               °  °š        ©ÿ­œ°ù­»ÛŸ¿šÛ¹šš °	      ¹éï ššÛËëý½ïÿýÿûÿßÞŸËàùéÛËŸ©š   Ð         	  	©	   				  	 ùú»ÛšÐ¼¹°šù©¼»ËÉ	            žœð	é­½žŸëýÿÿÿÏÚûÿúý½­¾œ¼°ð¾ž              ©	     
 
 
  	  ÿŸß¾›ù¿›žŸ½›ÙË°        		ë œðþ½ûßÛÿ¿ùÿÿßËÏ©éË		   š        	 	  		    	   	­úÿúÛÚÛðùéºÛ¾š°Ÿ›° ›    	      ÚÐÐ šÛËß­ûïüýïÿùþ½ùðððÚž¼šÚž	              š š           	 ùëÿð½©ûÛšÙ¼ù¹›	é    	       		­  ù­½­úýÿÿÿ¿ùþ¿ÛïËÚÐððžð™	          		      	     	 ©½¿ûßŸÿŸûÛëÛ¼»Ÿ¹°			     	      ž 	¼¿ûß¿½¿ÿÿþÿß­¼¼¼ºžžðžž                	        	©ËŸþ¾ÿ°úŸ¯Ÿ½ðú›šž™©© 	  	       	É	¬›žž¿ÞÿýÿßÿýëßëÛËÍËÉë©	 Ð°	         	  	          
ð¿ïùù¿¹ÿùûË¿Ÿ™ùéž          ¬  	 ùéýý¿ßÿÿÿŸÛýþ¬¼°© ž	©           	         			ùùûïÉù¹¿¹ùé¿©Ÿ™		   	        		 	 ÙŸ¯¾ÿ¿ÿÿÿÿïúùþùéžœ °ž	  	            
 	   		  
°		¿¾¿ýûþ¿ùÏÛùúÛûËÛ©­°°°	 		  	          šÚÛßý¿ÿÿÿÿÿÿßþŸ Ð©ÐË	 °	                   	  	­©©ŸžúžÛÛž»¯š½¾¹°Ûš™É	 	   	       		  ©ðûËýÿÿÿýéùïðððÞšÐ© ùé 	                    	  žœšùééùÿ¯¾ý½ý¿Ûùûéé°½°š ©		         
 œšüŸý¿ÿÿÿÿÿÿïùý­­©¬žœœ 
	            š 	  	 		  	 °¿žšÚðÛù»ëúÛ½«Ÿ›ž©	            		  ›é¯ýûÿÿßÿùùï¯ÚÚšœ °© ½	              	    š	
œð½ ¿­ÿßŸŸ¼¿Ûéé¹©Ÿ°© 	            °éÿÛÿÿßÿÿùïïœÚÛÏ©Àžœ
 š            	         	 œ°šû	ð°ÿ¿¿ëûÛð½»ÛÉð°°Ð°	 	       		 	©É½­¾Ûÿÿÿÿþùðû½¯	àÐ©àš	É           	     	    	½œ°ðžù­¹ÿËŸùëÛÛí°»	Ÿ				  	  	         šÚÛßÿÿÿÿÿßŸ¼Úðž
Ð	 ÐÐÐ
	          	 	 	     			

šœŸÚú›Ëéðùþ›ÿùëÛ¾¿›ù	ð°šš            	  ŸŸ¾ûÿß¿ÿŸ¾ðùË­ ÐÐ
Û
	           	        é	©©­	ü¹Ëé¯ŸÿšÿŸ½½ðð¾Ú›Ë™ 		 	   	   	    ðÛßŸ¿ýÿþÙÿË

ÐÊœ                     °	
œ°šÛÚðÊŸ°Ÿé©ÿÛþžŸ»Ÿ››É¹Ë 	
 	 		      	 	©­¿¯ÿüûü½¾¼¹é¬œœ°©©	
         	      °	 	 	½©©ÐùÿÐ¾šÞ½¾ùûûéðü¼š°©œ		          ûÏßéûþÛý­žÚž	É°°œ                       °ËÀ¼¼½¯Ÿÿ°½½¹ëý¿­½¼››¹Ë™Ú    	           šÙ­»ùÿÿŸ½ëÛé©ÉÚž°	 ðÐé               	  
éÉ°½¹éþßÿÿð
ÚÛÛëßŸ¯ûËËùð™		 	 	        	­ŸÏïŸŸÿÿŸðßž¼¼°	©­	 © °               	    		 Ÿ
ßýÿÿðÛËðùŸ¾ùùù¿ð¹	 °	 	  	 	        žšðùùÿÿýÿþŸ°ý	éÉ Ð 	 À                  	Úš™éù ùýÿÿÿ°°¿¾úÛÚûËé©ëœšÙ© 	  	        		©Ÿ¿¿ÿÿÿýùþßð½¾	 É Ð°	 ¬ 	         	    		 	  š œžšž½ºÿÿÿßð­ðù½¿¿Ÿ½›Û©	 	   	         ÐùéýÿÿÿÿûÿŸ¼½ëÉðÐ¼	   	©
                  				©­ÚßŸÿÿÿð©úŸËÚÛéûéé©Ÿ	›À°š		  		       °­¿¿ÿÿÿÿýÿíÿÛÞ¼½­	àœ  š  À               	  
 šŸ¼½¯ÿßÿÿðŸ	éé½¯¿Ÿ››Úðš ™ 	            	ÛßÿÿÿÿÿÿÿŸŸ­½ßšÚé©°šÚ        	       ¼ððÙúŸ½¿ÿÿ°žžš›úùùí¿­­©™©Éš	°	  	        		Ÿ¿ÿÿÿÿÿÿÿýÿïßþ°ý­ž©    ©                	 
  ­©é«éýûïßýðð½¬ŸŸ¿»ËÛ›œ¼° 		  		        ¿ÿÿÿÿÿÿÿÿÿùùúÛßšÚÏ	­© ž			À	
             ©	 ÐšÛÞšûžÛÿÿð ½©ûËí¼ûù¯Ëš›			  	         ™ùÿÿÿÿÿÿÿÿÿÿÿßü½éù°ðœ¼	¼ à
Ð          	      °Ë½½­ëŸËà šÚÚ½»ûŸŸÛŸ½Àð ©  	       ¿ÿÿÿÿÿÿÿýÿýüùëÛÚßÍšÚÚ	¼©                 	 ° ðšÞšùëþ°	­½­Ÿ­ððú›Ë¹	°™©  	         ½ÿÿÿÿÿÿÿÿÿÿÿ¿¿Ý­í°ý°­	¬šÀËÉ 	À           	  
 		 ¼°»ïÀð 
Ûéÿ¿ŸŸ­½°°	 ©  °      	¿ÿÿÿÿÿÿÿÿÿÿýýý¯ùûÏËÙ­ÉÊ
 ©               		 
	œœ°ððš°ý¿éÉ ½¾ŸÚð¹ð»éŸ	  	 	      ŸûÿÿÿÿÿÿÿÿÿýÿÿËÙþŸ½ðü¾šÐ¼°  	               œ«ÏÉË
Ú°À°©ééûûÛÞŸœ›é°°©	©  	      	ûßÿÿÿÿÿÿÿÿÿÿÿý¿þùðúŸ›É©Ë  šÊœ 	            š
 	 šœ¼¹ËÀ°°ý­ðÀÛËûÚùë›ð™ 			        ›ÿÿÿÿÿÿÿÿÿÿÿßùëüŸžß	ü¼šÚœ°Úž™àÐ	 œ         	    	 	  °ËËž©žššð  °ÚýÿŸÛéùÊ™©É 	 	       	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿßŸðù©Þ	­­¼Ÿ­	Ê	­¬°            	  	   ðéðù°ððð	À¼šŸ¿¿ûéð¿›™ Ð°š 	      	½¿ÿÿÿÿÿÿÿÿÿÿÿùéùíÚ¹éé °šÚœžÉ               °
 	 ›ÊÊŸ° ©
	éËßŸ›ÐðÚÙ	 		   	     ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿž¿š½œ½­©é©ËËšÐÚ          	  
	 Ð½
¹à¹ð¼ð œ°Úž¿¯½¿¯	©°°š	       Ûÿÿÿÿÿÿÿÿÿÿÿÿý½­œÐð	é¹
ÐúÚœšœ©            	       	À©ÚŸž °¾üÀ¼¹ùùûËÛÛŸœ        ÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÙ©š			ðÊÙ¯	éé­ žžš	é          	   ¼°Ð©ù­­	°¬°Ú¯Ÿ¼¼¼°ùé­©	© 	      ½ÿÿÿÿÿÿÿýÿÿÿÿý¾œÙÐš 	é°­	éžžÛÉ©Ééà
                  	Ë	Ú¿ °°ðÐ ð©úŸ¯¿Ÿ¿ŸŸ¼	       	ûÿÿÿÿÿÿÿý¿ÿÿÿýŸÉù½©ÉÐ ÉÀðžŸ	é ¼¼© Ð        	     š šÛÊž	é  ŸË ™éËùý­½°°¹é		         ¿ÿÿÿÿÿÿùûÿÿÿý½ÿŸÐÙ	  š›Ë		ÚËËÊ            	  	© é ùééðžðÐ °ð
›ùÿ¯ûÚùùË›Ðšš		     ýÿÿÿÿÿÿÿÿß¿ÿÛÛ™Éé		  	œ½ðùéÊÚ  œ             	  	 °™žžž©  ° žžéúÛùú½¾šœ°¹			        ûÿÿÿÿÿÿÿŸ¯ßý½ ™ùË¼ž			 ©
ÛËÛé­
              		
šð¹ ðÉ Ú 	é¬šŸ¿ß½úÛß›œ° 	       ›ßÿÿÿÿÿÿÿÿÛÿ šŸ¾ÿþùËà    ù­¼¼žšš°          	  	   	É	­­œ	  © ÛËÞ»ÿ½¿©°™«	©	        ÿÿÿÿÿÿÿÿý­­	 ™¿ÿÿÿšÿ	àð    ù­©©ÉéË¼
           	  	 ð°ÚÐðé  ð 	­­é¿¿ýùëÛŸÙÚ      	½¿ÿÿÿÿÿÿÿûÚ  ýûý¿ëÉéà    ­¯ÛÜÐ°šœ©
œ           	    Ú	© š  Ÿ©	©¼ùúÿŸ­û›Ðº™©	        ¿ýÿÿÿÿÿÿÿŸùÊÐ	­›Ð°	   šÚ«ËËÉéÚÐ©é            	 °©		Úž    é ©¬žùûÿÛÿÛ­é¼°©       Ûÿÿÿÿÿÿÿýÿž™™ 		 	 	    É­Ù­ š©©É Ð              
 	¬° É   	°© 	 ¿žÿÏ¿ð½Ÿ¹½	      	ÿûÿÿÿÿÿÿûðÿÿÿ™		½™É 	 šÚÐÛ
Ð½¼žœž

         	   šÛ	°°É žù
šÚÐ ûŸ½ùÿúù¼°½½©é	       ›Ÿßÿÿÿÿÿÿýÿ½¿ÿÿß™¼šÀÉÀÚ	Ð¼½ 
š	œ             ° 
Ë  °À	  °ð 	©¬žÿûþŸ½¼¹Ûš       ûÿÿÿÿÿÿÿÿŸúßÿÿÿÿÛÛÉý©É¹­­° ­Ë	ùÉééà©¬         	  				­¼É©Ê
ËËð
 © Ÿ­ûûÛûÚšÙ­¹©		      	¿ûÿÿÿÿÿÿÿÿŸûÿÿÿÿÿýÿß½àÐ °ŸšÜ°ð °™ÀÐ°               šš	
šÐ°Ê ° °Ð °ÿÿ½¼¿œ¹ùšÛÐÐ       Ÿýÿÿÿÿÿý¿Ûùý½ÿÿýÿßÿ°ŸËË	žžššÐð»	é           	 	©éÉ	© ÀÊú ©À¿ùïÿðûÚšÛ›š     ›ÿýÿÿÿÿÿÿÿÞ¿ÿÿÿÿÿûÿÉé½¼ž	 ÐÐšºÀùéžš	 °   	          š¼°À	©­úð©
 °° ÿŸŸ¿ÚŸ™­­°š       	ûûÿÿÿÿÿÿÛùðùýÿÿÿýÿÿžŸ	
› Ù½
žœ°ðË	­           	 É		© Ð¯ýûÀú©­	­ëÿëß¿ð¼››½©		      Ÿßÿÿÿÿÿÿß¿ß¿ÿÿÿÿÿý½	ðÐžœÐ°Ûý			©Àž ¼   š          °ðž šßÿì°°
  Ê	½é½ûÿ›Û°ÛÐš      ›ûßÿßÿÿÿÿýúÛü¿ÿÿÿÿûü¾ž  ¹­°ðœ°ðË
œ Ÿ 	 	      	 	ËÚðšÉ¼ÿþÛÊË °ššðððûÿúžŸþ°Û©¿ž		     ½ÿÿÿÿÿÿÿý¿½¼›ÛýÿÿßÿÛÙé  Ëœ»ËÉÐÉ Ú 	À	
        	  ©ËÀ¼°ß¬°¼°
 	Ÿí¿ûùû¼°™	       Ûÿ¿ÿÿÿÿÿýùûÉ½ÿÿÿ¿ß¿ùž 	°Ðœ¹É½¼¼­©¼	é
ž	À 	      		¼œ¼Ëðéùàë  ©  ðšðûÛËŸ½»™ÿ°°™	     ›ÿýÿÿÿÿÿÿÿÿ¹ËŸ½ý	¹ý°ù   	 	 ùžž™Ëœ	°	é           žž°	­©àÊ
		  šš Ÿ­¯ùÿÿÚÐÿ¹	       ½½¿ÿÿÿÿÿÿý½¾œ½ÿÿùŸŸÛÐéššÛÉùéËž½°°Àð©  Ë	ð      				é©¼¼¼°°°ðšû 


	¬ž	ÿý¾Úûÿ¿šŸ¹­		    ›ÿÿÿÿÿÿÿÿÿÿß›		ÿÿÿÿÿÛûÚÉ  ŸŸ½éÐ¹ÉË		ÊÚà	         °šž¼¾šÚË
 
 ©  š	 šúÛ¿ßûÛùùé	      ½½ÿÿÿÿÿÿÿÿ½ýùùÿÿÿÿÿý­¹¬°Ðš½¼¼šÚŸËšœ°°	à			àð       É	ËËÏœ°š°ð



 °	Ÿÿß¿½þŸ¾Ÿš     ÿÿÿÿÿÿÿÿßÿß¿ŸÿÿÿÿßÿÍ™éË œžšÛÛý½ºœ°œ	à© š	    	 	 šÚúÏ
  
 °	 
	
ÚðûËúÿÿ½½½¹		©    	ŸŸ¿ÿÿÿÿÿÿÿßûýùùÿÿÿÿÿÿÛ›œ°	éý­­ËÉÛÛ°°°Ð©	éÐùà    	 	©­©¬½­ð°ð°¼¼°ú



	
°šÛÿßÿŸûúûð°    ›ýÿÿÿÿÿÿÿÿûýûÿÛÿýÿÿÿÿþÞ™­Ú©ûÛýùþ¼¼›ÉÊœ  ©        °ÐšœÚÚÊ éééê	 
  
¿¿Ÿðÿùý¿ÛÉ     ­¿ÿÿÿÿÿÿÿÿýÿýûý½ÿÿÿÿýý½àš	­©ðÚÐ°ð™Û°Ë
œ 	      šÙ«Úü­ ½»¯ßð   © š	©à°¼ÿÿ¿¿ß»ù°š		    ™ý¿ÿÿÿÿÿÿÿÿÿßýÿÿÿÿÿÿÿûÚ¬É½¿ßŸþžù­ 
œÐ¼°     °¾Ð¿ 
°ðÐê°	   š 	 ÿûÿÿß¿žÛË    Ÿ¿ÿÿÿÿÿÿÿÿÿý¿ÿûÿÿÿÿÿÿýéÚ	œœ»ÿž­«Ë	ŸšÛÉ	ÊÀ	  šÐ     š	ù¯ÀÐëÚšÛ¬¾¯½Ë      °°é ÿùÿ¿ûû¿šÐ    ›ÿÿÿÿÿÿÿÿÿßÿÿ½ÿÿÿÿÿÿÿÿ½­ž °œùëÛý½ÿùé­šÚ	š ° Ú    	 úÚÐ°©	 Û	 
¼°	 š °šÿÿûýýûÛšš		   	ŸÿÿÿÿÿÿÿßÿÿýÿýÿÿÿÿÿÿßËÚ	¹ËËùéÚßÚ¯žÚéé É  		 œ   	 Ÿ­¬ °°ðš à¼š     

š °­ûÿßŸ¿šÛÉ    ›ÿÿÿÿÿÿÿÿÿ¿Ûßùÿÿÿÿÿÿÿÿ½­¼°°žž½°ù­úÙé½žšÚÐ°    	©     °ššÊÀðÉ­

é
		©	 šÚÚ	½ûûûð¿û©   œ¿ÿÿÿÿÿÿÿÿßÿÿÿÿÿÿÿÿÿÿßËÉ ›éùÛÏÚß©Úùéé­	©  	 œ    š¼¼ 
	 °
°	©ž	 
  


 ëÿÿÚŸ™°ù    ›ÛÿÿÿÿÿÿÿÿÿýûýÿÿÿÿÿÿÿÿùšÛží°½©Þ½žšÚ¼žš    ©à     ùËÀ  šÉ­¬ © © °š	  °é	¿Ûÿ›ðÛž©	   	½ÿÿÿÿÿÿÿÿÿÿýÿý½ÿÿÿÿÿùïð°Ð¬½¹¾ý¯Ú™ëÚÛÞ©éÀ   				   	
¼ 	  ¬ °ššš°Ú	

  °Ëœ©
 ÿ¿ùé¹éš 	  Ÿ¿ÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿù	©ÛÉïÉÐ½éœ­¬¹éË	©    À    š 		 éí¬
À©
 	
	© °
œ ËÛÿ½¹¹ 	  ÛÿÿÿÿÿÿÿýÿÿßÿßÿÿÿÿÿÿÞœðš
¬ºÐ›þËÚšËù½¼¼¼žœ    
œš   
›
 Ëš

šš	©Ú © © 
	© š		ÿÿ¿šÐ¹™	  	 ¹ÿÿÿÿÿÿÿÿÿ¯Ûëßßÿÿÿÿÿû ÙÊÛÍ­¬	›Éí¹ËËËË	é     š    É©  
š 		¬ž
 ­   	àêÚš	  Úßù¹	¹­°  ™›ÿÿÿÿÿûÛéý¼½ß¯¿ßÿÿÿÛÍ°° °	©ÚÛÊÀ© úœ¼½­úœž   É°    °À¼	   °š °ð  ê	 é
ÚÚšÿ¿¾žšœ›	    ›ŸÿÿÿÿýýÿŸÉ
Ùí¿ÿÿÿÿûÀ	ž© ¹©ÛÉðœº    °É   	© ° 	 	
œ°      
šÊš©© ËÛýù™		¼š   ™ðÛýÿÿÿÿûðü½ÉšÛÿÿÿÿü¼¬		œËÊÀÀËž¼ºÉëÉÊ  ­
œ°  	  Ë	Ë ð	 © ­
É
ð°° ° à°é©žšË ½úÿ©°°››		  ™©¿ÿÿÿùýÿ›ÚÐš	ŸÿÿÿÿÚÀ  ž
Ð °°éËºÐžœ  œ°  šÊ	é­  ššÐ
¼  
	
é
°ð¼¼šÛÛÚÐœ°¼	  		©ÛËý¿ÿ¿ûËÀ	 		­°ùÿÿÿýùÉË	     		àÐ¼°°   
    ©½  



 © ©  Ë
	 

	 šÐ°
ÿ¿ù›		Û	  		©½¿ý¿ß		à©À°Ð¿¿ÿÿÿ¬   ÚÐ°     ž›ËË   œÐ  	 šœ œ¾		 ­É°°
	© šà«É©ðððÐ½½¼°›	© 		¹›ùûÚ°ž  Ð	É
ÛßÿÿÚÙ	à  À   ðé  	 ©	   	©Ë      
© 
ð	© 

  ÀªÐ©ªûûŸ ›    šÐž½½ 	ÿ À 
 	ûÿÿÿÿ   ¼        	àž°ðš   	©    	 ž¼ð©   
ë 	é  š ©  °šËÙ¼°ùéÿ›°Ÿ ð		¹™ž½ ›ÿà 
Éà	 ŸŸÿÿýý 	©  ï
      	 Ÿ	Ë   Àð   Éð­  ° °© é  ð
 °  	 °°ªËËûùëù	 ™	   ¼¹ûé  œ	à  	 ›éÿÿÿÿ		 	       šœ ¼°ËÊ    š   šüš
    
 	 	  š   	
¹ÚÛÛÿ½ð™ 	©		Û	ÿ       ¼ŸûÿÿððÀ        	ÀË	Úœ°   	 	   	¯Ë	 	 
š
	 
úš š ©   Ê °«­ºý¿Ÿ©	 	   ÙÛŸúÿ     Ÿ›ùÿÿÿÿ œ ž      
šœ¼¬©ÊÀ    œ	
  °ù 



 		      ž
	  °
	 šð	°»ÿùû	°			©¹ýù	éÀ 	  ýŸÿÿßéÀ		  	  
É©™Ë°    ° 	   ¯ É	 š


š © ð°
  °

 
  
ššúßùûùð 	  ùðŸûí©	©	  	½¾¿ÿÿßëÐ°ž
œ	 	à  œšÀðÊ¼­     ­  Ð   ©     š
    š
  	 °	©©­	ÿ¿ÿÛ			 	
™	ŸŸ›ý­ ¬		ºÛËßŸŸÿ½À		  	©	é©›¹Àš     	©à 	 ¼  š  šš
    ð š	© ©	     °¿ùûÿ¹ 	 ™  °™Ùÿýëûÿ™¼°Ùéù¼¿ÿ¿Ï­   ð¼ © ÊÚÐð¬ÊŸ      Ÿ   	 š
 

š   © °  ­
   ðÊ  š  š¾ŸŸÿÿ½ú™  
™›™¹ûßŸŸïÚž¼›ÚßùùÚð	  	©ÊÛœ¼­šÐž °         	 ¼ 	© °   ©
  
 š°šš©Ë© ©Ê  	«ûùÿ½› 	
		œß½½éé	 Ÿ	é­¿Ïûéðð	    ééÚðð­ÉÚÀ          © Ê Ë ®	  š šð   
ÚÐ   œ  ššž¼Ÿ½ÿûð¼›  ™š›	½©œ°š  	 Ÿ›ß½¿¼ŸËï	 	   	 œšÐ¼°          ¼ °°°Ê


    ­


 ®ššš
š  ©¾ÿ¿½ÿ›  É	¹	ž¹	ËÉËÉéÛÚßßÿßé½™ËË 	   °Ðð¼¼ÀÚ          Ë
 °   °¼
É   š° š 	  ©à°šðÛÿÿûÿÚÐ¹  šš™ËšÙËÉË	©¿ššÛý¯Úùü¾úÚÜ°ðÚ	É É©Ð°       	 	 šÐ °°ðÚ   šÚ¼


š
 °š
À
À©ûý½ûù¹	  ¹	Ë™¿¹°ùÉ¯ÚýÿŸùëý¿ß»Ûß½»ß­¾Ÿ
ßéðð­          
Ð 
 °  ¬°à©  ð© ° °
 ð  °À°ðŸýûÿ¿ß
š  	œ	¹­¼ð¿ž›ý¿Ÿ›ÏŸŸ›ßðüýéÞüðúÙéù¼½ðŸ	Ú            
°š š	
šœ  
  
š
  

šš
š
éúÿÛËûÙ	š ›Ù™›Û™ùðÛýûÏùïýïðÿÛûþ¿ŸŸëßËéàð¼­          ­­ °Ê š 
   
	 °Êð°  °š
°  	 © šŸ¿¿¿ž¿É	  ™°°°Ù½«Ë›žŸ½¿Ÿ¿Ÿ¼ý½ðþÚðÞ¼ùýÿùùéé°°          © 
	©
 ©  
	¬°Ê¾  ©

 ° °   


­ÿýùÿÛÐš š™¬	™ÛËÙ¹ùÉùûÛÛËùûúß­ëÚÚßÛý¿¹Ûü¾žžžžœ          	¯	­ 
 ©© ©	 	

 °
Ðš	  ©© š  °	 š›ûÛ«Û¿š	ž™½©©	›ËË›ùéúý¿ËÚÙùß½¿ÿ¿¾ÛÏÏïËéùéééÊš           ÚÐ °©
Ê


   	

º 
	   
 
      ¼Ÿÿý¿Þ½°	 	©	Ÿ›	éù›ùé›Ý¹é¼½¯ž¼ŸËÛÞß­½¿¿ÚÞŸœ¹À          	© š 
  °  © 
 Ë©   š	   
	
 	Ëÿž›ùûÿš	Ÿšš			Ÿ›Ï¹ÿŸÛÛÚùûëŸí¿½ÿëÏëËß½­¼ºÊ          
žžšÉ© ° 
š
 ©     ¼š
  š    © 
   ›Ûÿý¿½½­	 ¹ûš™½½	­¹ïÛ­­ùÚßŸïŸÏß­½½½ûéêÛËÉœ          		  °   °  	
š ©  	 ð  

       ° 	žÿûÚ¿Úû™© ™û°		©»ÛŸ›ÛËßŸÿùíùï¿¯ßÞÚþžÛÝ¼¼ž
           
ÉË   
 ©   
  š
 › ° © ©
     
 
	©ÿ¿ËÿúÚ™ ºŸ ™ùÚÐžžœ½½©éÿûÿŸßÛúûý½ùí«ËÉ©À          		ðº  šš	   
	

   é    
 ©
 	
	


	  Ûýûý½ùý½­žÝ¹ù™¹ù›ù¼¹ù½­½ùü¿ûëüýý¯ËïŸÞžžÚ           ŸÀ°
   	


 	 	  ° ¿
   
	   
 	   ¹ ¿ÿûÿ¾ŸúÚ¹ºž°°¯¼©¼¼ûÛË¼ûÞŸßÛÛËùýÛééùé¬
          		éÊ



  
   ©   à 	 ©  š	   
    	 Éÿ½¼¿ý¿½½	é½û	š™œ¹	ºŸËÛ¼¼ûÏ½ûü¿¯þÿÏþ¾ŸŸšÐÐ        		¬ž¼   ©        
š¹      °   
    
 ÿÿûÿðûËÛž›Ÿšœ½ž›ÚžŸžÛÛýûÚüûßùùùðùýï­ùí ©          © À°°    °    š
š   Ë	    ° 	 	  š °
	 š¿½½¿ÿßš¼¹ééùé©©	­™©ððù¼½¯žý¿Þ½ÏïÿžŸœúÚžÙ          	À° 
     
 ©    °
 ¼      °©        
	¬ßÿëÚÛúýùðùûË™½Ÿ	¾ŸÙ¼½¾ŸëÚý¿ß¿Ÿý­ïðÿŸ­é¬°	       š ¼    š  
	  

š
 © Ú  	       

 	 
	 ¿Ÿ½¿¿ÿÚ™©°ùùéËéÉ½éðùý½ÿŸéúýüúß½ððßÉ           © š  
         
°     


š
	 	 ° © šÐÿÿËÛß¿ïÚÛ¿šÉ¹š™	š½žŸžðÿéþßÚûßËúŸËð¼°        	É
ÐÊ    
š     	


š
 Ï	    	    

      
½¿ùë¼ùûý­¹ÚùšÚÙ ž™½
Ûœù¿ùÿŸ¾ýü¿ùüýéü¼ÚÉé         
©	é 
  
	
š
	    °
 

š

   © 
š 	©­ ¿ùÿŸÛÿðûÛË½¾›šÐ¹ É ¹­«žßùÏïÛÚÛü¼¿ž¾ÛÛ­š        	ËÀª
 	

	
    




Ë   
     
  ©   š   	éûëü¿ŸÚÚûËùùé		É°éÐÛœûžûû¾ÿ¿ËßùïÙðàÐ¬	     	 °°šÉ	 
 ©
 	 °©  	   ¼©  ° ©
  	  

š  ©©À›ßßŸ©úûÿ½½½©™ð° 	©°ûðûÜüúßžÛÿëÏ½¯¬      	
	ÀÚÉ

 °

      		  °°°     ©
     	    
¿¿ûÛ¼½úÚûŸÚùé Û	 	 É°¿¿›ß©ùü½ßžÛÚÚË›       Êš	 Ð¼  
°©	
š



š  Ë
  
  
      ©   
	Ëý­üûÉúý¿Ÿð¼ššŸ  © 	°ÚÛÉùËÏ­ýï¯Þ¿í¼ùéðÀ 	      °  ž 
š   
   	   

° 
 
 ©   	  
 	   © ¿ÿ¿¿©ž½¿éþ›ý½­  › °ž¼úÛÚÚùùëÚÛí¼½
    		© ©
© ° 
	 œ°	  °  °  °Ë  š  ©  

  

   	 ù	ÿýûÞùËËß›ý¹ë
 	  ÐËÉË¼½½žýïŸ
ÉÊ	   
  	Àœ
ž °
š	


	        ¼
    

 	 
   	    š à½ûËùúù¿¯ý¿ïœûÉ    	©œ¬­­¯ŸÚÙ©ðððÙ
     	É
©	éÊË    	  
š


š


  š
   	 
  
 


©  ššÿý¿ý¾ŸÛËéùëšœ 	     é™šÚÐð­¯ÞŸ
É      š ° ¼¼©   © 	 ° 	   	  š
à  
  ©  ©
    ©     
	 	ßûëÚýü¿ÿŸ¿½	
  	 ¬¬ššÛÉžŸ    				 ›	 
š
  

 



  
           °©   °     »ßý½¿¿ý¿ÿËÚ°¼	        		ËÉÉ žœ	 à      
Êž
°ð¼

    
	 	 	 
  é    	 ©©     
 	  	 °
 °ËûßëÞÛëðûÿýù °	 	       
 ð	©àðé	     			°ðù   
 © š    

     ¼©  ©        



 ©
  ÿûß¿½ÿßÿùûéé	                   	 À¼°	é	 ðð ©     	     



	 Ë     





	
        
šŸ¿ûËÏŸÿŸÿŸ™à		  	                	
	›	ž¼¯	   
   


	 ° ©     °   
   	 
	  °


 
	 ýÿÿûé¿ÿûËûË	                        œš  ©©­Ù¬ 
	   	 	    	 © 	  Ë  

	 °    ©  	 
  	


		¯½ûßþÚÿÿÿß¼¼°                         	éÉÉÀšÐ¬ 
   š


	 š
  	  ¼	      		  é    
	   
  šŸÿ¿ûÛÛÛÿÛëÛœ	                    	
šºš¹éëÚœ
      	 

   

   É
  

  °  ©
š 	  
    	
 	½ý¿ÿü¼¿ÿßûËÊ  	                  š	ÉÉÚÜ°      
  °	 °©     º ©
  	 	À 
  ©  	 	

š
 
úÿü¿ûÿÛÿ¿›		                      ð°ðù¾½»  ° 
 

	        °©   Ë  	
	  
 © ° 
š


	    	 Ÿ¿¿ÚßûïßÿûÉð ©                   	 Ú›ÏŸÉéðÀž° 
 ©  

   ©       ¼

   	   	    ð  	 


š 
 Àýÿ¿¿ßûÿùÿ¿	ð		                 žð½þ¹éð¾›Ê¹éÊ
      	  	 ° © Ë   	 ©
É    
š  °  °	  
	
šÿýí¿ÿÿÿðü¿                      ©žÛéùüÜð© 
š       	 


 	   ° 
  
	 	 
 © 	   



  °é¯ÿûéÿûÿÿÛÉ­	                  ÚûÞÿ­ùïÐú
š  
  	      	

   é  
	  


 
  



š 	 
   		¿ýûÉïßÿ¾½°ð© 		                «Ï¹ùúÿžÚÿ    
 š       

	  	 ž   
 °	 

 š
	   
  ©
š	  àÛÿü¿Ÿ¿ÿýúÛ	À	                ÛÉß½ïïýðÿ¿Ú ©  	
 

 
    
   é


 

 

  š 





	
	     	Ûÿü¼ÿÿÿ¿ÚÞš            	 	 °¿ëËÿŸž¿ùíàË 	 

    
    
    š    
   
  
 	  
	


 
	
ðþŸ¿ß­¿þÞ¿›ÉÊ             ¼ËßÿþÿÚÞúû   
    ©        	 °
  é©  
  ° 
	  
	    °      
  š›þÞùÿËß½üð°            	 
 Þ¼¿ùÿžÿðÀð°  
 ©   ° š 	       ¼     ¼©
  
  	   ° ©        œ©ûÿéÿÿÿ¿ŸËËÉ      	  	 			­«ÛýþùÿÚ	àº  ©   
     
   
 
	  Ë   ° 

   
  
	    š     © š	 ŸýÿÿéïþÞúŸ š 	        Ð  
Ð½ïž¿žù Ú	É

 	 

 
  

	     
	 °   
š

	  
  	 š 
 

 

    ÿÿÿŸŸùýðÛ©  			   	 š
žžËÚýðùàú 

   
  
     	
š    ðš
š       
   ©   
°	
    

  	ùÿïÿÿûï­éœ°°œ  ©	 Ÿ	 	®¹ð½¯¿Ëù	é©

  
	   ©   
     

 ž     	  °   š
š   © 
    
	   
 ÏÿÿÿÿýùûšË °àšðð½¬™Ï­þÛËðÊÀ
    
 
 
	     

    é
  

À        ©  	 š   

	 š  © ûÿßÿ¾ÿÿííûÚš	
Ú™ð½ïÊ½¾úß©¼¼¼°	

  

 
 
   ° 	    

š 	 	  °°  		 ° ° 	   ° 	      ©   Ÿ¾ÿßÿÿÿûÛí½žšùœ¾ŸË¹ùý½Úý¼¼ýéééà     
    š  	 
      š  à 



       

 	
    
š  
   
  ûßÿúÿÿÿí¾¿­ùþ¹ÛßÏúý¯ÛÛà¼½¬ž 
 
  š  °  
      
  
 ÛÉ   
š

š     

	
šÚš   	  
  ©  	ëÿÿÿÛÿÿýüûïéþ¼ÿ¯¿ÿÿÏšý¯í¿ËÊ	 
 	

  	    ©
   	 	   	  
À°   ­   šš
 ° ©       

	    
   	ÿÿÿïÿÿ¿ÿ¿ÛÛÛÛùÿßùéûïÚÿü°ðÚÀ     °


      	   

  

Û °  	  ©  	 	  	  °

 
	   ©
 
    	ýÿÿÿÏü½ÿÿþþÿÿÿ¾ÿÿí½­¼ÿÀ   °                    š  ¬°




	
É

   
 
 	 
 
  	  
      
ùÿÿÿÿÿÿÿùùÿÿÿý¿Ÿÿïþÿ¼  °  © š  ©
 š
       
 š 
 ù
		  	  
 š	 
 °	 š
 š   ©
 	  
   
 °
  	 ùÿÿÿÿéðÿÿÿúß¿þÿÿßÿùð  ©   ©   
    
     °  š 
	  é  ©©

    ©
 
   š 
		 ©     
 
	   É¿ÿÿÿÿÿÿÿßÿÿÿÿÞ¿Àž°	 
  
     
  
   	
 
 
	

ù   
 	   	©	

  	
 
	    © 	
 	
      	  ¿ËËùÿÿÿÿÿÿÿÏýþ©ðð	ý°


š
 	

        
 



  Ê°	     
  	©   
   Ë   
      
  °	
ÐüÿÿýíÿÿûÛÿþŸÞÊ ¾ß      
     ©    
 
     
½
 
	© 	  	­©	  	 ©   	© ©     
    
	 
 °­Ê¿ÿïïËÉàË	ËËúÚš °            š	
 
š ° ° 
À  
  °
°úÚž
 
     °     š      ©
 
 

 ¬½ûË ž¼¼ ¼ž°½­  

    


  

     ­ š 
 	 »  ššËé©¯Ÿÿðœ	 	 	  š
šÚ
   °©     
   ¬°         ð ©	
ËÚš
 

šš ©é          
šà¾   Ï	
  ©½¼°Ûÿÿÿÿ© ¬	      à  
    

  	
 °

          Ë

	 ¬ 	     °
ž°°©
	    	  ½Ëéé
š
	 šÛÿÿÿÿÿÿÏ	Ë
 © 	   	   
       

 
 	
šš   
	 °œ° 	 š	    š
  °ùð   

    
 ¿Ëÿ
 
éé ©
	­ÿü½¿ÿÿÿÿúžº© © © 	
	À
	 	            
   
	    



    
    	
šß¿
      
 š½ü¿ýÿ­© ° ©
	Êš½ûðûÿÿÿÿ½ùýú    

 
 


 © °  š ©  
 © 
	   °	­©	  	 °
 	 ° 
 	©ü°
   
  ¬ž¿ÿÿýðà Û©
 °¯¼»íûûÿýûÿÿý­
©   š ©      
  
 	   	 
    

 



  
  
  © 

ž›Ê    
   
 š¹éýÿÿÿŸ ¼ ©éË °Ÿ›ýéûëýÿÿžš 
 © ° 

	          	    		 ðš 	
  š  
    ÚÚ	
	 
 
  
 Ÿÿÿÿðà Êž°°ððÛ¾š›ŸŸ¿ÿí 	    °      
š 
           °

	   
  
 
š    š
  © °ð  	     
	 ùÿÿÿûÎ¹©¯	¬žŸûï­­ùëßýºÚ  ¬  °°   °       	    
                
 
    ŸÿŸ 
     š 

¿ßÿí°  Ï	
àš›ÿÿŸûÛûûÚÚ¾Û šËÀ 	 š 
      ° ©
  © 
		    ° 
 	
  
  © ©ÿéé       	  ¼›ÿÿÚÉ  ºšùë ÿÿÿÿ­ýÿËßÛðé 



Ú¼°© °   
	   
  
     ° 

  
    ©
   	
   	¿ÿÿ
    ©
   ©íþý °© ¯°ÊŸ¿ÿÿÚŸŸ¿ý¾Ÿ¿ÿü° ©éÉ­«ß¾ž    

  
  
   
    
      
  	
  
	 
  íùð  
     ëÛùú   ë	ëË	©ÿÿÿÿ
ŸÿÿùÿÿÿûÀ°º¾›ßÿß	



   	 š °
š  
© °

  



  š  
 ° ›¾ ©   
  š š
ëÏ    ž¹ž
šßÿÿ¼©ÿÿÿÿÿÿß¼ ¬½ÿÿÿþú 	   	
 
       	 
       	  		 	      
	©  
     
 © °  ùž	©Ë¿ÿûú	¿ÿÿÿÿÿÿÿ¿ÿÿÿÿÿœ° © °  
  
  
  

  
  
                    °šš  
 
  
  

š
š


 °© š ¹ÿÿÿ ÿÿÿÿÿÿÿž ½ÿÿÿÿÿÿ
                                                                                   ´­þ, 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.', 2, 'http://accweb/emmployees/davolio.bmp'),
	(2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '1952-02-19 00:00:00.000', '1992-08-14 00:00:00.000', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '(206) 555-9482', '3457', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          T  BM T      v   (   À   ß          S  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ ð                                     	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà   ¿à  
 ÿÿÿÿÿÏÿÿÿÀ	ÿÀ                 ð                                     ŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ	ð   Ëÿéà¿ÿÿÿÿðÿÿÿÀŸÿà                 ð                                     ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà  	ðŸüÿÿÿÿÿÿÿÿþÿü                   ð                                    	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ  ð   ¿ÿÿÿÿÿßÿÿðùþ               	    ð                                    ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿàŸÿÀ©ð Àÿÿÿÿÿþ¿ÿüÿïÀ         	         ð                                    ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð	Ëàœ    ¿ÿÿÿÿÿÿßÿËü                     ð                                   	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü 	ÿúŸ
›ÿÿÿÿÿÿþÿÿÿÀ                     ð                                   ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ŸËÀßÿýÿÿÿÿÿÿÿÿŸÀ                      ð                                   Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
ð    ÿÿÿÿÿÿÿþþ                        ð                                  	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿéü ¿ ¿ÿÿÿÿÿÿÿýü                        ð                                  ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐž¿É­¯ÿÿÿÿÿÿÿÿÿà                         ð                                  ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð    	ÿÿÿÿÿÿÿÿÿü        œ                 ð                                 	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð¿Ûÿÿÿÿÿÿÿÿÿÿÿð                         ð                                 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð                          ð                                 ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸŸÛŸÿÿÿÿÿÿÿÿÿÿÿà                          ð                                ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÛÿûÿùŸÿÿÿÿÿÿÿÿÿÿÀ                         ð                                ŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ¿ÿŸß½ÿù¿ÿÿÿÿÿÿÿÿÿ                           ð                                ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùûÿß½ÿ¿ÿ¿ÿùÿÿÿÿÿÿÿÿÿ               œ°Úššùé¾
 ð                               ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÿÿÿ¿ûûýûÿÿù¿ÿÿÿÿÿÿÿþ        œ©
ð½©­©ÿŸž›Ù°ÉÀð                               Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÿÿ½ÿùýŸûÿÿùÿÿÿÿÿÿÿü      ­©ž	Ë›ËÚÙù½°¼¹­¯ËšŸð                               ÿÿÿÿÿÿÿÿÿÿÿÿÿýûÿ¿ŸûÚŸ
Ð° ¹¿ÿ¿ÿÿÿÿÿÿþ	   	Ë›Ú™ù½°ù°¹«šß›ÚÛ™¼½©ð                              ÿÿÿÿÿÿÿÿÿÿÿÿý¿¿Ûüððýü½­Ÿïß¿ÿÿÿÿÿÿÿü     	ËÏËÛžŸž¹é°ð½°þ›šÛð                              ¿ÿÿÿÿÿÿÿÿÿÿÿý¿ÿùÿŸûËÐù©à	ß¿ÿÿÿÿÿÿü   Ÿ¹¹½¹ù½©é¹éšžšß™ù­¹Ÿžð                             	ÿÿÿÿÿÿÿÿÿÿÿûÛÛÚÞ­½©ÉùðûÚÚ°ðùéÛÿùÿÿÿÿþ   °©ËÏ	é©éù½šÛÛŸšžšÚÛéðùð                             ÿÿÿÿÿÿÿÿÿûéûûéý½¼¼¿¼žŸž½ Û	àžœ¹ÿÿÿÿÿü   ©û™¹ðŸŸ›™é­­©éùù¹­š›ð                             ¿ÿÿÿÿÿÿÿÿßŸß¼ßÚÚž¹ÉËûËý¿Ÿ¼ž™é­ÿùÿÿÿþ  ÀÛÛ­É¼¼ù¼¼›Û›ÛŸ›ééùð                            	ÿÿÿÿÿÿÿÿÛ»ÿ¹Ï°¼°ðŸÞŸ©¹ËÐùéËùžù©ÿŸÿÿü  ššÛ›ð½»Ë››ËÛ½©í©é¹ùð¼›Ÿšð                            Ÿÿÿÿÿÿÿùù½ü°Ü°ÛÉÛÛð©éŸðü°ûžŸ¼ž°ðžÛÏ›ù¿ÿð œ½½°ð›Ë½­­¹©ËÛ›Ÿžžš›Ûü°ùùððÐ                         ÿÿÿÿÿÿÙ¿ŸûŸËË¾žÛÛž	Ë	­½©ÛÙÉž™é°ðÿÿÿü
›ËËËŸ°°ù¹éÛ›©ùùùé©¹Ûùù›¿™                      ÿÿÿÿÿ°¿ðûÍ­¼ž›Ë	¯	àÙù©ðÚž	Ð ËÚŸ¹ÿð 	ËÛŸ›ËßŸü¼°ðù¿ŸËŸŸž°ùûÚý¼ù­	 ËË                 ¿ÿÿÿÿÙÿŸœšÚ	ðœœ°¿Ðž™úšÙéùùŸŸ™½›ÐÿŸžŸÿð	­©°ð¼¹°°ùé¯››ŸùŸ›ÛËË°ùð½š›ðÛŸð               	ÿÿÿûÉùïŸÉ©Ú™é©ËÐ¿Ùéý©ù¼¼¼½¼¾Ûíù¿™ðùé¿ü  œŸ›ÛžŸŸùééðÛ¼ð¼¼Ÿ›üšŸ¼½«ÛÉ¹ë›­¿©¯               ÿÿþ½­¿žÐ¼žé½©ÿ¹©ùéùùùðÛÛËŸ¾žð¿žžŸð		Ë›Ë©¼°ù¼¹šŸÐ›Ÿ››©é›é©ÿ­°Û­›ÉÛÙÀ              ÿÿý	½ûŸÉé©É©œ°½©ùß	ýŸÚÛËÛÞ›ûß½ËÙÛŸßûýŸà à Ð¹û­½ÚÛŸËÚÙð¼¿¼¹ééÛŸ­›Ûù©ú¹©ð¹­¹¾š¼             ÿÿË›Ï°ý
œ°œ¹ËÛËßž½¿é½½¿ž›ÿÐûß¿°ÛðÿÛé 		°Ù©©žÚÙ½©º¹ù¹ËžŸŸËÛ­©ùÚž›ž›Éúž™ùËÀ            Ÿÿé­°ßÐ©À¹Û½©ùŸÿÛÛÿßùý½¿Ÿ¿ÛÿŸ¼¿Ÿ¯Ÿ¼ 
ÀšÛÛÚÛ›ÚÙÏÏ½ù°°ù½­›Úú½«Ù­¹é¼Ÿ™é¯™°            ÿùž½½û	éÀ	üÛÛºÛÐ¿ùùŸ¿ý¹¹ÿ½ûÛùùý½ý½ßýÿ¯Ûð	 	©ð¼¹­­¹ð½«›ÛŸÛÛËšÐ½ùÚ«Ð½½ž›Ù­           ÿ	éšÛ° š™ð	½¼°ù©Í¼¿Ûßù½¿ßÿùÿ½ÿßÿ¿ÿ¿û©ûùùü¼ š	œ›Ûœ¹ùËŸ­­©ùù­­½¿Ë½©úËš¹ù©¼¾›ù°          ŸàŸ­šÚž	ÿŸžº½¹ëý¿ßý¿ŸŸÿŸ¿¿Ÿý½ÿŸß½ÿÚûû   		­©Ë¼°»ËËë›ÛŸžšÛ›É©ù½¹ÛÚºù¼½©ðÛ™é          ÿ™¼°ðé °©Û	ùýééÚëÚßý¿ÛûûÿÿÿŸÿÿß½ûÿŸÿùÿ½¿ÛÏð	Ë ¬™ûœ›ÛÉù¹ü°ðù½°ð›ßÉ­ü¹éÙ›Ú›ÚŸ©ž¹¼°        ð°Û› ¼ËÚš›žšŸ¿ŸŸ¹ûÛýýýÿŸÿÿÿßÿÿß¿ûÛûý¾ûÿ½Ÿ  	 ¬Ÿ«É­°¼ž››ÛŸŸ©©ù¿šûž›ëÐ½­¼¹ð¹ðùž›ß        À½ÐÐ	©ù½­½ðùùðÐùûßýùÿ¿¿¿ÿùÿŸûýÿ¿ßýÿÿÿùý½ûëð			°Ù¹ù›ð¼¼°ù½¹é½Ÿ	éùéž™ÚÛž™½­¹éŸ        ¿Ú™­ °šŸ	éûËŸœ¼Ÿ¿Ÿ½ûÚ½¿ßýýùÿ¿ÿÿûùÿÿ¿¿ßý¿ûþ¿ýð  ©­ºžž›	ÛÛŸšÚž›Ú›ÚÛžŸÛù¼¼½°ÚÛËË™ž©ùð       ü­¼	ÉàùËŸŸŸ	ý­¿Ÿ½½ÿž½¿ÛÛÿŸ¿ÿÿßŸŸßÿÿ¿ßÿ¿ûÿý½ùúÿ  œš½¹éùù©¼ðý¹ùð½¼¹ðù°¾Û	Û°½½¯š™Úž¼     ü	ÐšÐÚ ™ ¼°ðùù½ùËùéðŸùÿŸ½½¿ùýùùÿûÿ½ûßÿûßÿÿý¿ûß½½ð 	é©éšžŸž››ÏŸš›Ú›Ÿù°ù½ÛÛÐšÙéð¹ù™¬     àš›É ðÙÛÛÛÛüû¹¹É½¿ùý½½½½ù½¿¿ÿùý½ÿ¿ûßŸûÛûßÿßûßûþ °šœÛŸ½°¹ððù¹½©éð½¼¹éû›À¼°ù¼½©¿š›žšÚÛ     ÿ©ð Éé­¹ë½¯›¿Ïü»ÚÛÛËŸŸÛÚŸÛùÿÛŸûÛûý¿ûÿ¿ÿßûûû½¿ùÿ   ºÚÛžŸŸ›ËËŸŸÛËž›ß™­½	½¼»ÛÚÐ½›Û	Ð    ÿðœž	é°Ÿ	¯™ðùùýÛÛ›ßÛß½½ûÚß›ÛŸŸŸ½ûßý¿Ûß½½ý¿ûÿßýÿðÿ½ð  ¹©ùðùù©­½°ððž›ü¹¼¼ùÚšœ½¹Ð°½½«ÐûÉ­½¼¹    Ÿü›	  	ùÛéùÿŸ«Û¼ÿ›é¼ŸûÛÙ°ý­½½ùÿŸ½¿ß¿½ÿûûûÿûûûùÿŸûÿ	
	é©éÐ¼¹ŸŸŸ›Ÿ¹é½¼»ûš½©ËÛÚ›Ð¹›Û	ðà   Ê	ðÉ	¼ŸŸýß¿É›í¿ÛùÙëûÛŸ›ÛÛŸùýûÛûßÿ½½ýýùÿÿßŸ¹ÿß 	  ŸŸÛžŸ›ËË¹é­©ŸšÛÐùéúÚœ½½¼½ž›Ûé¯žœŸ°    	Ÿ °°¾›ÛÉð¿Ÿ»ß›ÿÛÛŸŸ»ùÉùùŸÐ½ûŸûÿÿýùûß¿ûûÿÿŸ¿ÿŸùûûÀ 	é°½©éÚž››Ï™ùùù­­¾Ÿù°™½žš™©ðÛÉ©Ÿù°©ËÀ    °° ÛÉËÉ¿¿ÉùÿÝùÿ›¿½ûùýŸ¿ŸŸû½¹™ùùùù¿¿Û¿Ûßÿÿÿÿûÿÿ¿ÿÿð	  œ½Ÿš›Û­¹¯Ë›ù½©þÛËËÐ›ÛËÚŸžžù­›™¼   šÙÀÚ	¿™¿ÛÙûÿ›û¿Ÿýý¿ŸŸ¿½½¹ùýŸŸùùùÛßÙùýûÿûÛÿŸ¿ßÛÿÛ¿Ûÿ 	©ëÐðù­­¹ùéÛÛžšÛÚÛ¹ù©é¼šŸ½©›ÛÛ­¯	¬   	š		ÚÐðù¼¿½­ÿŸÛûÛûÛÿùýûÛÿŸ›ùðŸž½¹ÿŸûÿûÿÿÛÿÿ¿¿Ÿ¿ß¿ÿ 	™©½°ÛÛŸ©­¹ù½¹ùéûËžšœ¹é¹ÛÚŸ¼°œ°ðÙùž   œ¼ŸŸÚßŸÛÛùý¿½½ýÿù›Û½½ùûÿÙùùùùŸŸù¿½½ÿ¿¿ÿûÛßùÿýûßÿ  °úÐð¼ºšÛÛËÛÛ›ùž™½©Ÿžž°ðŸŸž›Û™«œ¹ù	  œ™¼šŸ½»Ûù¿ŸûýÿûûŸŸÿ½ûÿ¿ŸŸ¿ÛÛÛùùûýÿÿ½ÿßûßÿùûÛûÿÿŸð  É	»Ÿ›Ùý©­¹½©ù¹½¹ð¼¾™ééž›Ùù½©û™é­­œ»Ë
 œ¼©¬ŸÐðß¿ßŸù½ÿŸŸý¿ùùûý½¿ÿùû½½½™½¼¿Ÿ¿ÿûûßûÛûÿÿßÿûÿû	É
ÐÐðð°¹ùùéëÛ›ËŸ›ý¼››É½­©©éŸ½é›Û›œ¹ùùË›Ù¹ð»Ûùùûûßûûûûßù¿ÿŸÛûý¿ŸýûÚÛÉË›ûÛýÿÿ¿ÿ¿¿ûßß¿ûùÿÿ¼  	ŸžŸžšžŸÛÛÐ¼½©éû	¾ž›ÚÛŸŸ™ë›ð¹­­ ÛËžš°À½ žšÚÛßÛÛÿ½Ÿÿ½½½ý¿Ÿý¹ý¿ŸÛý¿Ÿ½½¿¹ý½½ûÿ¿ßŸßß½ûûý½ÿÿùÿ ¼›Ë	¹é½½¹©ù©«ÛÚŸŸùÚÙùÚ¼šÛËœ¼›ÚÛÛÙ©½ÛÛÛÚÐ	ùùð¹ú½ûý½ÿÿÿûý½¿ÛûßûÿÛß¿ÿ½½½ŸÛÛÛý½ÿûÿ¿½ûÿÿÿÿ¿ûÿÿ  àŸŸŸËŸŸ¼¹ð°ÿ©©º©»Ù©¼¹ûÚ™©©­œ¹ð¼°¼°™©ËŸÚß¿Ûß¿ûÛÿ¿ß¿¿›ÿŸ¹ý½¿½½½™ùÛÛÛÙý›ûÿÿŸÛÿ½½½¿¿ß½ûÿð			É©é°ùù½°ùððð»ËŸÛðŸŸÉÚŸ©ÛËž½¼½š›ž™ùŸ™ ¾šœ½¹é¿¿ÛÿûßŸ¿ùÿ¿ÿßûÙûßŸ¿ùûÛŸÿÿÿùùû›ýÿÿûÿ¿Ûßÿÿÿÿûÿÿûð 
É©ù¹ËžžšÛž¹û›ß½©­ùðš›©ûÛž°¹Ë›ËË›é©ËÉ¿ððùÉ›œ½ŸÙÙ¿ÛŸûÿßÿÿÿ½»¿½û¿ÛŸùý¿ý½ý¿ÿÛÿùÿù½¿ÿ¿Ÿùÿ¿ÿÿÿð œ¼¼¹ùù½°ùŸ	ééÛÛû½¼œ½­©ÛÉ½éù½­›Ú™¿	ð›		¼¹¬¹úù¿¿Ûÿùý¿¿¿¿½ÿýûßŸŸÙðÙ¹ý›ÛŸ›ùýûÛÿÿþ™ÿý¿¿ßÿÿýÿûùÿù À ¹½©ËžšÚÛÛé¿Ÿ›ü¼°¼ºšÛ››ÚŸž›šž›Úð­ðŸ½	ð›Ë¼ùûùùß»ßÿßýûûÿ½»ùûð›Ÿ›Ùý½ý½¿Ÿýÿÿù Ÿ›Ùû¿¿¿¿ÿÿÿ½þ	©Ûž›ÛŸŸË›ÛÛß½¼­¹þ™ð¹ž¹ð¹Ÿ°››Ú›°š½»ÛžŸùÿ¹ýûùûÛÿýûÛßÛÙÛÙË™½¿›ÛŸÛ½›Ù 		­¿ýýÿÿ¿Ÿÿÿ¿  		½©é¼¼ðùù­¹ù½é©­úšÚÛ›Ÿ	ž›ÐùûÛé	éù¼¹ðœ¹ÉéÛðý©ý¿Ÿ¿ßÛÿÿÿÿùÿ½ùù  		¹ËÙÙœ		 ½ËÙùÿ¿ûýÿÿÿ¿ÿÿ œ°¹é½šÛÛ›ŸÛË›ÛÚùÉ¹­­½©­©¯¹ù­›Ú¼¹é°Ÿ ™©Ûùÿ›ý¿›ûÿ½ÿ½¿ÿùûÛ		 	 		É­		œ°Ÿ›Û½¿¿ùùÿ¿¿Ÿÿß¿ÿ   ËžšÛÛ©ééý©ù½¹ü¼¹û¼Ÿ››ÛÐ›Ù›ðð½»Ë½¹Ëž	ù­ŸÛžÛÛßý½½ÿ¿ÿùÿ¿ß½©Ù½°Ù		¹ÛÙ½™ùùùÛÙùý¿Ÿß¿¿Ÿÿÿÿÿ¿ÿ¿Àšùù©­ŸŸ›ÚžšÚ››Ëü›©ðð½ù©ð°ð›Ÿœ¹é¹é  ý Ú¼¹½ù½¿¿¿Ûûÿÿÿ¿ûß¿ŸŸ¿Ûß›Û½Ÿ™½ŸŸ›ÛÛ½ûß¿ùÿ¿ýÿÿŸŸ¿¿ÿùÿ°
Ÿ›é©éÿ›ÛÛŸžž™¹¼œ¹ÚšÙ½¿ËËûžùÛœ 	›	¹ÛŸ›ÛùÛßûýûÛùý½¿ùùûý¿›ý¹ûÛÛÛß½½ŸÛùûßŸùÿŸ½¿ÿÿßÿÛÿÿÀš™½ùé¼ŸŸ›ËËË›Ëý	»ÚÐ¹ù½š›É½°ùù
¼›ŸŸéÉ­ùü¿ðÿ¿ùùûÿÿÿûÿùÿÿý¿ßý¿ß½½½½ÿûß½¿½¿ÿ¿ùÿÿÿÿÿŸ¿¿ûÿÿ¿ð  ËËŸŸ©©­¹ù¹½½°ü°¾¼œ¹¹ËšÙé¿ËŸ›Ùýùùžœ¿šž›ÐûÙÛûÿŸÛý½ý¹ÿŸ¿ÛÛùùùÿùÿÛßÿÿÿûßùÿÿÿùÿ¿Ûý¿ÛýýûÿÿŸûð	Ë ½¼°ùý½šßÛ›Ûù›žœ¹ùéùºŸ	ù¹é½°š¿ûÿÿ	
ùùù¿Ÿ¿ùýÛÿ¿¿ûûÿùÿý¿ùÿûÛùÿŸŸûûŸ½ûßÿ¿ÿÿùý¿ÿÿ¿ûûýÿ¿ÿ½ÿ  	°ùùúšÚ½¹ùù½½­­©ððÙéžš™©ÉÚŸ¼¼¹é­Ÿùßý¿ùßžž½ùùÛß¿»ùýûßŸßŸûÛý¿ûŸùùùù¿Ÿ½ûÛÿŸÿ¿ßÛÿŸûÿŸ¿ÿŸŸÿ¿ÿ¿ÿÿ	 Ÿ›½Ÿ›Ù¯žšÚðù¹ðÛ	«Ÿœ¹ùéÚ°½°Û™ËŸ››ùÿ½¿ýðžšÙ¹ËŸ¿¿Ÿßÿûß¿ÿ¿ûßûÛÛýùÿŸ¿Ÿùýùý¿Ÿ¿¿Ûÿ¿ŸÿŸŸÿßŸÿÿ¿ýÿýûÿÀœ ›ÉûËé­¯ž›Ÿ›Û½¼©©éšŸÛ©¼°ðÙÿŸûÛÿù	ù­Ÿ½éùýŸù¿Ÿÿ½½¿Ûß½½¿ý›ÛÛùÛùÿ¿ÿ¿ßÿßÛß¿ÛÿŸÿÿŸ¿ùÿŸÿÿûÿ¿ÿð	À»½½›Ùùððð½¹ùùû	°ùÉ›ÛÉð°½©ùÚÛŸ™ûÛù½ùûðÛÛÉù½¿›ÿŸùÿ›ßÿùûûûÿý»ýžŸž½¿ùÿ	ÿ¿ý¿¿ûÛýùûÛÛÿý¿½ûÛûÿÿÿŸð
 ›ÐûŸšðºž›ÛŸŸËðÛ°¹¼°›	Ú°½¹éùÛßÿ¿Ð°ý¼»ùùùÿÛŸŸùÿÿ½¿½ÿßßŸ½Ûù½ŸŸŸùûÛÛ›ýŸŸý¿Ÿ½ÿÿÛÛÿÛÿÿŸÿ¿ÿÿü	©½ëŸù¼°ðð¹ý¹Ûœ»ž›ÛÉùúŸšÛË¹ÛÛŸŸûß½šÛÛþ›¿Ûùÿ½½ûÛÛÛûûùÿ½»ûÛùéûß¿ŸßÛûùûßùÿ¹ûÿ¿Ûÿ½ÿÿÿÿŸ¿ÿ  °ûË½ù°ú°ùù½»ÏÏ­©Éº™­°°°©ù©½°°Ÿ¿ý¿ùÿ¿°Û«ß™ýŸ½¿Ÿûûý¿ÿ½ŸßÛÙûßß½¹Ù¿ÿžûûý½ÿÛûßŸÿý½ùý½ûûÿ¿ÿÿùÿ 		½šžŸ½©¼°Ù¹ù¹ûÐ¹ÉðÙ­œŸšŸ	ÛË½½™¿ùÿùýÉðŸÙ©ùÿŸ½ûý¿ŸßŸý½ÿû¿¿ÿ½½¹ûŸ¿Ùùù½ûÿûý½¿ûÛÛÿ¿¿ÿ¿ßÿÿÿÿ½¿À ÚÛËùùùëÛŸŸ¾Úžžùž›	ºÙ©¹éðŸ°¹Ú›Ûÿýÿ¿ÿÛ	ð½¾Ÿ›ùûÛ½ÛýÿûÿŸû™½ùÿŸŸŸ½½ùý½¿ÿ	ËŸÿ½Ÿÿý½ÿ½ùýýûßÿÿÿÿ¿ýŸð	 ¿¹éË›šÙ¹ùùžœ™­šÙ°ÚÚ½°Ùð¹ýý½¿ŸÿŸ¿	þŸž™ùü¿½¿Û½¿ŸŸŸûßÿý¿ŸùùùùÛ™¿Ûý™ù¹Ûù™ÿ½½¿ÿ¹ûÿûûßûûÿ¿ÿÿûÿð 	¹ùù­¿°ðù¾žž›ù©ëšÙ­	½½Û©­©»ÿùùÿŸÿÛÐ	­¹éÚŸŸËÛý¿Ÿûÿùÿ½ù¿¿¿ûùþ¿Ù½¿ ŸÛ¿À›ÛÛßÿßŸŸÿ¿ßÿÿÿÿ¿ÿûý ž«ÚžŸŸ	ù½¼›ÛŸþ™éšÛ½¼šŸ	ÛÙý½¿ŸûÿŸÛÛ›éûÛŸ½¿ŸûßÛßùÿ¿ùÿŸß½ÿ™°¼ 	Û›Ÿûß¹Ÿ¿Ÿù½»ÿûßÿ¿ÿÿÿÿÿ½½þ	 »Ûž›ÿËð¼¹ù¹Ÿž­©Éùð¼°šŸ¿ŸùßŸÉ	û­Ù¾Ÿ¿ÛÛùÿ¿¿ùÿùÿŸ½¹ûß¹ŸÛ	¹Ù­Ÿý½»ÿùûÿÿ¹ÿýý½¿Ÿÿÿÿÿÿÿÿÿÿ  šü°ù¼¹ŸŸŸŸÛž›ü°¹°›ÛšÙð½›ÛÉûßùÿ©ù›ý©¹°ºÙ›ûù¿ùÿŸ¿½ùÿûÿŸýûßŸ½ýùÿ½½½½›ýŸÿßùÿÿÿÛß¹¿¿ÿÿÿÛÿÿÿ¿ÿ½¿ÿ é¿›ßž›Ëé¼°úšÛŸ	¼¹©ŸŸÉ©©ŸùÛÿÛ¿Ûüœ½éÉ¾©ÿÙ¿Ÿùýûÿùÿßÿûß½»ß›ÛÛÛÿÛËÙûÿ¿½ÿ›ÿÿù½ßßÿŸÛßÿ¿ÿÿÿÿÿŸÿé Ðð°½½½¼¹ùŸ½­¹ûš™¹­©ðÚ°ŸšÛÙÿŸ¿ù¿ÿŸù©Ú¿Éûß›ÿùù¿¿ŸÛÿÿ¿ÿŸûÛÝ»ý¹ûßÙ¿™¿Ÿÿßûÿÿÿÿ™û¿ûÛÿÿûÿÿÿÿÿÿÿ›ÿÀš›ŸŸšÚ¿›ÚšùûÛËù¼¼›Ÿ	¹ËÙù­›ûÛÛÙûßùÿÐ©¾™›ùùÿÛŸ¿ßýÿ½½½ÿùÿŸùûýðŸÙûŸýŸùÿÿùÿÿÿÿÿŸÿßŸÿß¿Ÿÿÿÿÿÿ¿ûßûð
ÀžÚÚŸ›ÐžŸŸžœ°½¼¹	ðððÚ°¼›ŸÝ¿ý›ß¿ÿÛð°ÛÙ¼½¼¿Ÿ½ûß½¿ŸŸÿûßÿÿý¿ùŸŸ™ÿ™ùùÿŸùÿÛÿÿ¿ùÿŸûÿŸ¿ÿÿÿÿÿÿÿÿÿŸßðš›››Úð¿ù¼°ùûŸÛûËÛÚ™¹›	ùÉ›Éº›ûŸûù½ùÿ¿ùË¼¾ŸšÛÛùûß½ûÛýùùÿùûßÿùÿ½½°›ý½½¿ŸùûÛßÿÿÿûŸùÿÿÿÿÛÿÿÿÿÿÿÿÿŸÿú 	ÊÚÚ½¼¹ù¿ù¹ËËÀù›éšÙÿÙÿýÿÛÿûŸÐ	É™ðŸŸ½ûÛùûýÿŸ¿ÿ½¿ýûûßùÿûÙù›ËÛÙùŸý¿ûÿ½¿Ÿÿ¿ÿŸý¿ÿýûÿÿÿÿûÿ¿ûý	à™½½ºšÿ¹ð¼°ùý¹½©ëœ°››ðð™é›Û›ßûŸŸÛýÿð½°ÿðùŸ½¿ÛßÛ½¿ý¹ÿÿÿ¿ßûùý½Ÿ	ý¹ùÛùÿÛý¿ÿÿÿùûýûÿ¿ÿÛÿÿÿÿÿûÿûßŸÿ 	©é©ùùùÛŸžšŸùÉœš™ðÐË™ËùÿŸ¿ýûÛÿŸ™ðû	ùÛŸûÛß¿¿½ûÙŸÿÛßŸÛûßß¿ÿ½½©Éù©ÛÛý¿ÿÿÿ½¿ýûßÿÛÿ¿ÿÿÿÿÿÿÿý¿ùÿ ËŸžžŸùù­¾›½éëšÙé›œ°ùšÛ	½ùÿûß½ÿûÿŸŸŸž½¹ùÿ½ŸÛûßÿ½½ÿûûýÿûùùûÛÛÛ¹ŸŸ½¿Ûÿÿÿÿÿûÿ¿ŸÿýÿûÿÿÿÿÿÿûÿÛÿš
ð¹ù©ý­­°ÛÍ©¿ùÉÐ°ùé	Ÿÿ	ûÿùù¿ß	ðšùù›ËŸ½ûù¿ßûÛÛûù½ÿÛùýÿ¿ýÿý½ß™ùùÛùÿÿÿ¿ÿÿŸýÿÿŸûÿÿÿÿÿÿÿÿÿýùÿ	›Ð¿ßšÛ›Ë½»ÛËù­°½	Úù¹Ÿ½ÿÿùÿùŸ ÛÛÚý½ÿŸŸ½ý½½ÿÿÛÛß½¿½»ùý›ûùù«ŸßŸ¿ß½ÿÿÿÿÿûûÿÿÿ¿ûÿÿÿûÿÿ¿ûÿ½¿ð ›ù°¿šÞ›Úœ¼½¾œ¼°¼Ðù©©Ÿßùÿÿ½½Ÿü¹ù©›ù¹ù¹ûùý¿¿ÿ¿ù½ûûÛùÿßŸ›ùý¿Ÿù¹½ùùûÿÿÿûß½ý¿ÛÿÛßÿÿÿÿûÿÿÿÛÿÀšËÛ›žŸÐù¹­½ûŸ›Ù©™­©©›	© ÙÐ›ùù¿½ÿÛýŸ ÛÛÉýŸÛÛÛûÛÛÛÛßûßßÿ›ÿŸý½¿Ÿ½°½Ÿ›ÛŸŸ¿ÿùÿùÿ¿ß¿Ûÿ¿Ûÿ¿ÿýÿûÿÉ¿þ		¼¼¿š¿žŸššŸË¿éÐœéÚÚ›š ¿ùý™ÿ¿¿Ù›ð 	é¹šÙë½ÿŸŸÛÿ½ÿ¿ß¿¿ûùý½¿›Ÿ¿ÛßÛËß¿Ûßÿÿ¿ù¿ùÿ»ÛÿŸÿÿûÿÿÿ¿ÿÿð›ÿÐ­©ù°ùðùðùÿšÛŸðË™©°¿›	™ÉÉ¹Ÿùù¿ûßÿÿ›Ûß›ÙÏ¹ûÛ¿ÛÛùùûÛÛŸŸŸ¿ùýùûŸ›Û™ùù¿ûÿÿßŸÿŸùýý©ý¿Ÿýÿùÿÿÿÿ ÿ ÛŸšßŸŸš›½°ùÛ¾œ¼°°¼ ›ùýßùÿ½ùð	­©¹ùû¹ýŸ½ý¿ÿß¿ùùýùùùùÿ¿¿½¼›ËŸŸ¿ùŸÿ¿¹ûÙù­©¹ùûÛûûÿÿ¿ÿ¿¿ð›ÿ ©©ð½°ððùéðûÚÛË¼½	¹ ù­	ÉÉ›Ÿý¿™»ßŸù¿  	™ýÛÚù¿ŸÛ¿Ÿ›½›ÚÛž¿Ÿ›ÛÛùðûËß½ùÿûÿÿÛß¿Ï›ßÛŸŸ½½ÿÛÿÿÿÿÿ ™ÿ žŸËù»ù¼°›žŸŸÛ ¼œ™Ú›ššÐÐ›ùý½ýûÿý é ùšŸ	ûŸÛÿ½ûûýûý½½½ù½™Ûý½½ÿŸ™ù¹ûÛŸ½ÿÿð¿ùé½½¹½¿ŸŸûÿ¿ÿ¿ÿÿûðÿ 	é¹½¯¿ËÛËß¹ý©¼›Ù°°½	­		©ý¿Ù¿¿ßð	 é¼ûÛŸŸÛ¿ÛŸŸÛ¹ÚŸŸŸ›Ûž°™¿ÛÛŸŸ›ý­½ÿŸ¿ÿÙü›Ùù½¿ÿÿÿÿ¿ÛÿŸÿûÿÿÉÿ¿
ž›ËËÙûð¹°½«ŸûÀšŸœ½ ›ÿŸžŸÿý¿° 	 Û¼ùé½½½ùûù¼Ÿ½¹ûÛÿ½ùÛÚÙ¯¿ÛÛÉÛÛÛÛÿ›ÿ­»ŸŸ›Ûß›ÛÿÿûÿÿûÿÿÿÿŸýÉ	½½¹úœ½½­ÛÛÚÛÛ™­°°ù	©©ùŸùùŸÿ¹ý­ 	­«ÛŸŸŸŸûùÛß›ðÛÛÛý½ûÛù½½™Û½­¹½½½½½ÿÿß½½Ÿý¿ýšŸÿùŸŸÿÿÿ­úžšÚÚÚŸûžšÛ­­½­ùà™	 ð¹œ¼	ÿ™ý»ÛßÐ 	 ›©ùûÛý½ûùºðÛ›ËÛÛÛ½™ÛÛ¿ŸÛÛÞ›ÛûÛÿ¿ðŸ¿ÚÛÿÿý½½ûÐ Ûûÿÿÿ ¿­©›ù½ð½é½©ù¹ù¯›ð	¼°°ÛÐð¼™°¹ßŸùœ½ù½   	ÞÛŸšÙûÛ¿¿›Ù™¹é›ÉÿŸÛùÿùÛÝ½½½¹¿¿¿ßù¿™	 ÿù  ¿ÿÿ¿ðžÉ«¯šÚ›Ú›ËŸÏšÙ¼Ûœ	Ð	é		­	É¿ùž›Ûð	    ¹­½½¿­½ý½½¼ðÐŸŸð	ùÿŸ	éëûûûßÙûßÛÿéÛÀŸÿ  		ÿð ûý¿Ÿÿÿ	é ©½¹ü½¼¼°Ÿ°½ºÛ¼¹ ¹Éðš¼š°™ÿ›Ûý½ 	 	 ›ÚÛÙùû¿ùí¹  ™›ð  	ÿÙ™™	ý½½ù¿Ÿ¿½¿Ú™»	ÿ Ÿà ü Ÿÿ	»ßûÿý  ©Êééé½©ù¹ë	ùéß­ùÀ	©ÉË™Ÿ ùý½©      Ð½½ëŸŸÛŸ›Éé  ¿À  ÿÿý	Ÿ›Ð¹½ùùùÿÿýÙÐ 	   ¿ð»ß¿ßÿð­¼	É›ù½«Û¼šÛ©›ð¹°¼ù°	ž	Ÿ¹ÿÐ     	Ë¹ù½¹ýé¿Ûÿ›©ÉÀ  	ü ¿ð ½½ý»ßÛ¿ÿÿÿÿ°›ûûÛÐÀ	 ŸŸð ½½úß¿¿à› 
©¯Ë°ðùË¿šÙï½ Ëé°°¹é­š Ÿ™       	ËŸß»Ÿùû™ü½šé    
ÙŸ›ð¹½ÿŸûùÿß	­¿Ÿÿÿ›ú¹ûÿŸ›ÿÿ à	Ù½¼¾Ÿ›šð°Ð½¯›ûÙ©ùššÙÉÉšœ  	 	 		 œ½½½	ßé½¾Û°ÿÛÀ	¼™¿™ðŸ­½ûßÿŸÿÛÿžš™ÛÙûÿ½ ÐŸŸÉûÿùÿÿðŸž	
 ©Ú›ÛËÞ™¼›½©šÙ½
ÙéË	éÉ°°°ù     °À  
»Ðùûý›ßŸŸ™»Û	Ë™ÿùÿÛÿÛË	ùùÿ½¿Ÿÿÿ¿ùù½	™		¿›ùûÿœ¿ûÿ¼ ðÚÉž›ù©ðÛÚÙ¾ð¹š°Ÿš›	É ¹°      ° 	À›É›ùÛ­©ùéßËß½ÚšÐšÐŸŸ›ÛÛÿÿùÿÿŸ°Ðü½¼žÛÛý¿ÚÙéù©¿ÿÿÿ	û  Ð¹ËŸŸ°Ú½­ºùù©	¼¹œ    	À  ð½¹ü¿©ÛÚÙ ŸŸ	½ûß½¿Ù»ÙŸŸŸð™éùÿý¿ÿÿŸýß»™	ù¹¿ý¿Ûý¿½¿ÿ¿ÿðÀð	éÚ½­¹é°Û­šÙË¿¹ž™úš›œ°™› ÐÀ  
  	ËÚ›Ùÿ¹ Ùé	ð™­¹ûÛÿß¿ù™Ÿ½½¿ŸÿÿŸûû¼œ¹ð É ›Ûù½	 	 	¿ÿÿðŸà  ÛËžŸ	ÛÚÙ«ŸùËÉé
™É	é ¹    À	À
 Ÿ›ŸÛûÛúÐÙ ððÙéŸý¹ûÐùË	Ú›Éû¿ŸŸÿŸßÙ	
Ð       Ÿÿ¿ððð		É©­©½é°¼°½¯©ð°›ùÚšÚ°ð¬     	É©¼½¹ùûÉû 	 ½	¿	  ð°É°ß›ÿßÿÿÿÿûûà 	   	  ¬°©	¿½ÿþœ	é  ÐÛŸÚ›ËÛËÚšß½Ðé	­	ùÉ©é	    	 °ÚÛÚü½½Ÿð 		 ž	ð    É É›ûßûÿý½½™    œ›ÿÿÿùðž 
úŸ°›¼½«ûÐ¹›šÛ°ÐžŸ     	    ÀŸžù½¿ÚŸ°½   Ð	À		
 ÐŸ	 	
	ÿ™ÿûÿ½ÿÿÿð™à   À  ðÀšŸÿ¿ÿÿ­ðð¼ ¼©ðûËËÚ›ÙùÉàÙ­ ÛË	©©       œ	ÛŸÛÛŸ›ßÛù 	  	àÀ	É À    Ÿùÿùÿßß¿ûÛÿÀ  ™Éû	»Éÿßÿÿý	­ðð šÀ	ºÐ¹	°¿­¯ð¼š™šÙ¹°Ð™É       
¼¹ð¹éùý¿šÙð  š™©  		   	›ÿý¿ÿÿûÿýÿùÿÛ   ž¿ ­¿ûÿŸÿúžŸÿ	À Ÿžžœ»Ðš™ù½	°ÚÉ©ÀËÚšÚš  	    	 ™ðÛÛÛÿ›Ð½¾›Ð ŸëËËÉ	  ›Ûýùÿÿÿ¿ÿÿÿ½½¿ÿÿ½½ù½¾™ÿÿÿûÿýð  ¹©©	©ÉÉËûÐÛ™¼¹¹				À      ÐšËÛùý½ŸðûÛÙí¿Ÿ¼¼  ™Ûßÿ¿ÿÿý¿ÿßÿÿÿÿÿÿùÿŸûÿýùù¿ÿÿ¿ÿÿúœÿ Ð  šÚœšð°°ðÚ	à™¼¼¼¼°	       
 ©þ›ÿùŸŸ­¿™ÿð  	ù¹ŸŸÿ¿ûßÿÿÿŸÿÿûÿ½ÿ¿ÿŸŸÿÿ¿ÿ¿ÿÿÿÿÿÿÿÿ½ ¯¼¼°   œÚœž	É	¼ž™ðð›	é         É¹¹ž›ùùý°Ÿ¼¿ÐžŸÛß›ßûÛÿÿÿÿÿ¿ÿÿýÿÿÿÿÿÿŸÿÿý¿ßßÿ¿ÿÿÿ¿ÿ¿ÿð›ÙË            ð 	       	    	    ßùýù¿›ý­Ÿ›ÿ™ÛŸûßÿÿÿ½ÿÿûßÿùÿÿ¿ÿßÿÿ¿ÿÿÿ¿Ûÿ¿ÿÿÿÿÿÿÿÿÿÞ úý	©                         ð         Ð°Ÿ¹­½ù½»ùÿŸûÿùŸ½ûßŸÿ¿ùÿÿÿÿÿ¿ÿÿûÿÿßùý¿Ûÿÿÿÿÿÿÿÿÿ¿ÿÿ¹ ¾žÞ             ð           	     Ð   À›ÙûßÙ©ûÞÛßŸùùý½¿ÿÿ¿ûÿŸÿÿÿÿÿÿùÿÿÿÿÿÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿœ°	ð¹©éÀ           ž             š     À  šðÛß½¹¿ùÿŸ¿ûûßù›ßÿÛÿÛÿÿûý¿ÿÿŸÿŸÿ¿ÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿûË ËÞß             é           À 	    © 		¹ý»ËÿÛÛ›ÛßŸÛùÿÿ½¿ÿÿÿ¿ÿßÿÿŸÿÿ¿ÿ¿ßÿ½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼ ŸŸË            ¼           	 	         ­Ð¿›Éù™ùÿÛÿ½ûýÿ½½ÿý¿ÛÿÿÛûÿ¿ûÿÿßýÿûÿÿ¿ûÿÿÿÿÿÿÿÿÿÿÿÿý©  ¾Ÿ	ðÀ           Ë                 	À	 		 É½­¿Ÿþß½¿ÛÛý¿¿ßÿ¿ûÿ¿ÛÿÿýÿÿŸûùûûÿ¿ùÿÿŸÿŸûÿÿÿÿÿÿÿÿÿûð	É¼À°           ¼     °               ¬›ÉÛÙý¹»Ûß¿ÿ¿ýý¿¿ýÿýÿÿùÿÿûÛÿßÿÿÿÿý¿ÿ½¿ÿÿßÿÿÿÿÿÿÿÿÿ½ ÚÀ¿Ð           Ë š        ž	 	        Ÿ	Éº›ûßý¿¹ù½ý¿¿ÿýûß¿ÿÿÿ¿ûßÿÿÿÿÿý½¿ÿÙÿÿûÿý¿ÿÿÿÿÿÿÿÿÚðàšùð®           ¼  	   à
  	 	       Ð ¼ŸœŸÛù¿ÿß¿¿ßÛùûÿ¿ÿŸ½¿ýÿ¿ý¿ûÿý¿ÿÿù¿™Ûýûûÿÿÿÿÿÿÿÿÿù	 Ÿ ­¿Ð           é  
   	            	 	éûÚŸŸÙûù¿ßÛûÿŸÿÛßŸÿÿýÿ½ÿÿÿÿÛûÿ¿ùýéŸ¿Ÿ¿ýùÿÿÿÿÿÿÿÿžš	°Ðð¿à           ¼              À        ›ÉŸÛŸ¿¿Ûý¿¿ý¿ÿùÿ¿ÿ½½ûûÿÿ¿ÿûÿÿßÿŸ ™éŸùÿÛ¿ÿ¿ÿÿÿÿÿûð¼
 ¾›Í            Ú     ¬   	  	       	 ¼¼¿½¿ŸÛýûùý¿ý½¿¿ý½ÿûÿýÿ¿ÿÿßÿÿ¿½	Ÿ™ùÿù¿Ù™É¹ŸÿÿÿÿÏ	 		À¾           éÀ      Ê            	  šÜ›½œ¹žÙùý½¿ß¿ùÿÿÿùÿûÛÿŸ¿¿ßÛù¿ùùÿÉ™ð›ý¿Ÿù¿é ¼¿ÿÿÿŸ üð¼ð           ð                 	   œ	©	À¹ðù¿›ùûý½ý¿ûÛÛÿûÿÿßÿßý¿ÿßÿ¿ÿð°¿	ýûÙðŸð¹Ù	Ÿÿÿù ¼
¼ ›À           ¬                    	  œ¼›œ½¹ý¿ß¿Ûûûý½¿ÿß½ÿŸûÿ¿ÿÿûÿßð°		¹Ð»ÿ½›	ù		 ÿÿÿðùÉ	Ë	¬           Ú À   š	            		 Ð©œ¹ËÙûÉ½ý½½½ûÿßŸ¿ÿ¿ûÿŸÿÛÿýÿ¹ùÙŸ	ß	ûÚÐ¼	 ›ÿÿÿù  š¼›
         À  ùà      ž               	ÀûË›ËËÿ›ûÿÛûßÛ¿ýùÿßýÿÿÿÿÿ¹¹ù °É›ðŸ	ûŸÚŸ 	 ° Ÿ¿ÿÿ	À¼šÉ¾ðùð       À   ð	   
 
À              	ÀŸ		ùé¹ùÛßŸŸ½ÿûŸß¿¿ùÿ¿ÿûûÿð	 Ÿ šù	¹ÿ	É	 	 ›ùÿÿÿð ° 	šÉ             à     š                ¿	ÛÏŸ¿ùùûÛ½Ÿÿûùÿß¿ÿ¿ÿßûÐ™½ð½œŸž°›É  ¼žŸ¿ÿù		À Ð¬Ÿ           ð                   
Ð
		Ëž¹ùùŸ¿ý½ÿ½ûßß¿¿ùÿý¿¿ð™¼šœ	¼™ 	À   ›ÿÿ¿ž   © ¼š            ð 
                 			 ý	©ùùÿùù¿ÛŸûß¿¿ýÿÿÿŸÿý ÿœ¹ 	ý  ¼  	©
¹ÿ™ÿù   é Éðšœ        À  ­       
               	©©¿Ÿ¿™½¿ÛÿÿŸ¿ßŸûÿÿùÿ™ð°Ÿ	œ	Ÿ 	Ù
		 	àÀ	Úßÿ  	   àÚ   À      Ú À                	   ðœ°é›ÞŸÿ½¿ŸŸ½ý¿ÿŸùÿÛùŸ	Éé	¼ 	ù°°
	   °		À¹ú	ÿ  	  ¼™°            ­                     œ    ›ùýùùùÿùÿ½ÿ¿ÿŸÿÿûËð	  ¼   ÐÐ­  ›		ðš     	 ¬            ð                       Ðœºž›½¿¿›ý¹ûÛÛŸûÛÿý½™ð›Ð ™œ°  é šž	ððŸ    		 ›             ðÐ                  	  À  °¹ùûÙÛý¿ÿý¿ÿÿýÿÿ ð  ð 
À	¬	  œ	 ðÉË­	›é ðš    ð¬¼            
                        		É	ûžÙÿ¿ÛÛÛÛûÛÛÛùù	ù  œ	 žÉ °Ù­­½ 	    			 Ù             ð                     	 À ­¼ùù¿½½¿¿ûÿßùÿùÿð	ù	   	   ¬  		­©É¬™°é
	 
Ð   à 
Ð            ­                         	 ›Úß¿ÚÙùß›ùÿ›ÿ¿Àœ°
Ð   ° 		    ›œ œ    © 	             Ú                     À 	 °½¹ûÚý¿Ÿ¹ÿŸùý¹ý© 	  	 	À  Ð      ù
 š
	   	  ° ­         	 à ­

                 	   	à	½½ù½›ý¿Ÿùû½¿ÿÐœ  œ 	    		   ­œœ É	
  À	Ð        	   Ú		Ê    	             	  	 ¹éúŸÛÿŸžŸŸŸÛûÛð¼š	      	   			   	  ° 	 ÀÐœ       °    	      éà      É À              		éŸŸ›ß›ù½¿ûÛüŸŸÉ    	   	     	   ùà	
      	À      
   Ê  ð	  š		  °                Ÿ ùü¹ü½ÿŸŸ¿ß½¿  Ð   	       À      ½ 	 é    	 ¼          	    	
 

 ð                 	ù¼¹ž›Úù½½ý¹Ÿð™É©      	    	 	 	Ð­  é 	     À°        	à   ð  	
œ Ð            	    	 	ùðùý½ŸÛÿ¯¼½
             	       ð  ½      	      
           © š
  °                ŸŸ™ëšÛùŸ›ËÐ                		 °  œ    š ð             ð   œ    	                   ©é¯ûŸŸûùý° ¬  	               	  ›Éð     	ð              
 œ
		Ê Ðà               	  šÛÛÛÛ½ŸŸÚÛÀ            	      	  	 
Ð	¬     ž               ðÚÀ
	 
Ê Ð   	                	½©ðüž™úÛý¼°                    ¼  ¼	  	  	Ë   
           Ú š   Ð	             À	      	 	ÚÛŸ™éý¿Ÿ›À	                     		 
	é   À 
 Ð               ­  	 ¼             	        	
½¯Ë	½¼¼ 	            	      š   °  	  É©      
         ð°Àš

        °                	Êž™¼›ù	É                     	   	©é                    ð
š 	É            	 ð         	 		¼	À
Ð°ù                    	   À é     	      	           ­ 
        	À      	            	
¼                    Ê  Ð¹ é  ¼	 Ð      ©         ð
           
  
	                  ¼                       
À  
À  ©
      
 À  	            
       	À                	                       À ° ¼	
	 š	     °Ë
  
     ð°©           š                                               À¬	 	 	  À ð      	         ¼  À     °     	   þ                                          	  ËÀœ œ	 	       àšÊ        úÊ           ¬    Ð                               	 	        š   
 À   
	  à        œ
 
             	                                   	     
À           
 š
šÀ        ëÀ    	                                                         É	  ° 	À    	   œ	         Úš    
         
                                       	       Ú   	  	 °°    
    ¬         ðÀ     À           °                                 	       ž 
	À  °          		         Ú  
  	             ¬	                                      	   	 	À         	           ð  š                    	                                       À¬ °                     ¯    Êð    
                                                       š   °            	  ©À      ð  
	        
                                       	      	   À             	    À ð °œ   
     	      
   À                           	             à½©	àÀ           	  

    ð                    	                                  	À	     œ  à À           
         ­       
            	                                  	       	                 	
ž °   ëÀÚ                                                œ             Ê 	¬°               ž š   
 ©                    
	 œ                                œ     
Ð	 Ë	                °°¬    Ú          
                                            © 	Ê	 	 À              ° Ð  	   ­  ð        	
            ð
À°                            	    	   Ð °            	 ÀËÊ
  
     ð         É 	            œ          	   	   	à  	 	  ð ÉÀ© ¼  À             Êš	 š     °         ° ¬
      Ú                 	      		       	À 	  °ð              ©        © š  ð         °	      š É Ê °             	    Ð         ° 	    É              	 
  
      À           À      
     
	
       À    Ð             ¬	À ÛË              š           
Ë ð      
   ©        Ë   À  	 
             
Ð 	   àÚÚ 	              
         š         	à
         °Ë  	é        Ð  š À        ¼
Ë       °               
         ©¬š  ð      	À 
   	          š  © 	   
à  À°       	         Ë                     
    š © ð       À
            
 ©à À°    	
œ  Ð©  	            É	 ð©             à        ¬ °ššÐÚ    ð    	 	 		   
   
 	 Ë    ° à       à 	   	    	 °                     š ° À          
            

  ¼  °   °  À œ           	  ©à¼À            
	     ššÀàš	
    ð   é      	         ©
š ° °  ° ¼  °Ð 	Àœ    	  
                      
À «  
       	 	        
	          žœ ð  À¬
Ú
Ê	 À 
   °   	                      
 ° °éÀ°š	        ð    ­                    °  °  š ¼ ÐÊ 	 °	 	 	 ð

 	                    	   ° š
  
   
 
  
                 ©     À       š

	 ©À  À   ¼œ                     
    š              ð   	                  © À©É 	à  
 œ
À¬  
À 
œ
 
                        	
 ©
	      	    ðð Ë 
    ¬             °°

  		
		š 	  ©    
 ð  Ú                       
                ð 	 
               
  ð     	
   ©     
   Àé                                            ¬ É              	 	 
Ú    ¼¼©     	 Ú   š 	   
 
  À                                 ð	
  
            
 
 
  ° °
	¬°À   
             Ð   šÀ              
 
  
           ­    à     
   ÚšÀ      	 °	    	         
 à© © Ú     À                           
  ð  
À
      ©
 À	© š 
š    
ÐÊÉà    	
     			   
    
	              	                 
À        	  	©É š      
	 ©é °š     À à     °Ê¬
Ë         
            	
  
              ðš     Ð      
š   À  	 À        	 š 	©       	 	É é            À         
À                 ð          ©  À­ °°  
Ë
   °ð ¼ Àš  É    
	   °
                        ž                             
ššÚ                 °
  
         °œ¼                                          ð                                                  
                                                           ‰­þ, 'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.', NULL, 'http://accweb/emmployees/fuller.bmp'),
	(3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '1963-08-30 00:00:00.000', '1992-04-01 00:00:00.000', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-3412', '3355', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush         €T  BM€T      v   (   À   à          T  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÿ°	 
	©ªš 	ªš¾ž°°»	 «
š› ú¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿é šž¾¿»°«	¬«Ë©éªš°  š«	 ›ë­¹éù°À°úÛëËÀ¼¿°ð»à°› »¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿú«ëÿúßúÛð¾»¯¯»«šÚºÛà«ËûÀà©¯©¼»šú¾à»©«ëé°û©«šš°žÚú¾Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿°ú¿ÿ¯¯ê¼º©ðšð¹»Ëéëé­©©ú° ú°ž¯ ©­«›Ëéð¼ð¾Ÿ©ëœ©¾¯û©­ºš¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸéšŸ¯ÿþ½©­¼¿©ºž¯¬°¹¯ššúë	 »š  ©¯¼°¹éºÚú°º¾»¼žªž¾«¾¹°°¼¾šŸ­¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ºû©¾¾	«þºº°ððùÛûºú°úð°¼¼ 	
¾›Êšù©¼žŸ­ ««Ÿ©Ëœ°ú¿ðšÛþ°ŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿËé«ÞûÛ¿ü«°» «ðý©ð© 	 š    Ð½©¯­©½¾¿««ºÚ¿½©à¾¹ë«é©ëé«	úû¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ›žŸ«­¯ë½éº»©þÛ¿ú¼
þÀ	úþšš
œðÀ°ðÊÚ¿
»ËËë
šúšž›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ«©ùúðü¼«éÚ»«Ëú		¿ï š   ð°éë¯Ÿ¿»»«°Ÿ«°ù¯©ûÏ¼°é¹©úÉð¼ŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿËðÚ
¾º»Þù¯»­©Ë
Ê ºð¿þ›© °šËºÿ­° ºÚËÞœ ¼ªðû®°šž¹«¯««¾¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû©¿ºËžÚ°ºù®šŸ©	 	ûþ °  	©°­°¾
™­«û«ê™ ¿šðÿúÚ›«¾¼¼žÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúžšð¿ë©ë¼š	¼   šš¼¹¿þé¯ ºûë›¯¯ù¬°¿¬½»àÛúùëé	©› ¿
«Ë«Û¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû©¯¼¼»ë¼«­  	¬°ªŸð°°
É	ž¼°¯š¿›ªœ° ª¼¾½¯¯	¾ûùË°¼ ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûðûÚ«é¹°úš°  
ššŸž¿à¼ 		 º›ë«Ë°¼°ûëÛúž›úÛË© ¾»°é¯© é©¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð °ëûËž»¯É  		©à»þé °Ú 	 ú¾›ë
° ð»À©šºÐ¿ùë šžºžŸÊÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿé½¿» ¾¬šúš¿àš šË©®¾« ©
š¿¾Ÿ üšëÉ	­¹ëûÀ°šéË

¹ë	«© ú«ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû
 ¾›é›úð«   		ûþ© 	Ë©
°¾¹¯­º°ëë«ëÉªšš¿ú šž°žšúÚœ©Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü¹ûššé¾úù©«ëž¼°   °¾šÿ °
°úÛ ›®šÛ«û¿	¿ °Ððë «	ë©
šð°°Ë ¹ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû
 ëË›ë ð°šé ° ©	ÿð	   ù©º°°¿­ Ðð°ºšž ¯
©¼žš°š	©ÊšÚÊ°¼ÿÿŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ››°¾žžŸËë¹Ë °ú«îž	Ûºðéšé«	¯Ú¾šÛššž ©Ð ž	©   	¿à Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬¾©©« °°¼Ê°°  	¯¾šž	
 	«ï«º°	ºÚðš¾š»Úû¯©é­	
 ©Ë	 °ÚÛ 	 ¼   ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ»šÛéúžž°šžËûí© ©©ÀÛ	¯°ËËËëÚžÀ ¼	
°š› °  	 	     Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ©ªšð°¿º¬°°ð°°
«¯é
Ú
 Úû ¼
úÀ¼°ºÚ°°þº°	 ¼©Ë
   			       ›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ›ðùúÚ¿ðé
™«Ë	 ¹þé 	¯ªššŸ
›»É©ëÛžÊ º š °š
        	 	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©©«¿ž½®°à¼šð°Ÿ
šš	
šŸ¯Ë°°°¯š°°º°ð»ð°©©	©	
    		     	 	   ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼¾šððšúð©ê©		©¯	 	 ›éºšû¼
ð°©Ë¯«à 	     ©	
š
            Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	©­¿¾›¾»Êš ššÉ ¾º 	 ¾»àŸ 	©«à°°º»Ë	   
	   	   	    	 ŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþšŸ
 «é°ú	«À¹à©ù­©©éÐ© Ú û¾ž	ùúËË­
       	   	         	  ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý© ¹Úœ¹ëÚÐ»À° ©ðº©©© šº¯ú» ©©  ½¬›	©¾š      	 	   	         	 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþšÚ
	«
à°©à°
	à ° °¿ð°ùù¾šž›ê› Úž	é                      	   	¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ	©¼šœ¾žŸ	©­ °œÉªš ššÚ¿­ªº¼¼°ž¹À	© ›
          	            œŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðšœ ©
	©  ¼º
É©© ¾šÉ ¼¿¯«Ë­©ºš
›Ê°ð° 	  		   	               ¾ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸþ©©
°ššº	°ž	ð© š ýëéûëï­ °	
Ë  	                     ¿ÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ¿ú	  	   		 	   ©
 š	©­ ºÛ°©ð›š­°©¼° 	                       	þÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©		 	        	 		 ›À¿ðšÀ	ÿ®ù«¾à°©ð

	   	                   ðŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ          	 	ð	à ©
šúšº›úºÐÿ	 º ð°°  		                    	©íÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð   	      	   	   °°°¾ËÚ Ëž¿ðð	Ëº°¾¾ž
	  	   	                   	 ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ              	 š	¿
	

»ëï¯ë¼¹­¯ ©¯	
šž	 	                     	 	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð  	              
š Ÿê›Ê»ÿú¿Ëê°¿ë	é © 	  	                     	 	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ                  šðÚ	ÿëíúžº™¯ðš¾	 šš		                         ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ  	      	        š ¿ š™»ú«ÿ»é¼ºðþ	Êš 	              	     	    	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ    	              	
É­   ¿¼¼¾ðºûË««Ë¯	 šš	                       
Ÿïÿÿÿÿÿÿü¿ŸùÿÿÿÿÙŸŸÿÿÿð                  	¾¾©	éð»ÿ©ëÉ°°¼ðžð¼š	                        	
™ëÿÿÿþù©¿Ÿùùðð½¿ÿ°ûŸ	ÿÿà                   	®
º»¯¯êž°º¯ë ¯¾š	 š                          œ
Ÿÿÿÿ¹ÛßÛý¿¿Ÿ½¾™Ûœ¹š™ð 	                 	û¯	 žžž¼°éëÚ°ÚùÊÿéà° 			                    	   °ÿþÛ¿ý¿ßŸ½Ÿ›ÿ«ÛûÛÛ               
ž Ÿúúþ»Ëžž¿¯
¹ºúš		                            Ëü™	°ûÛÿùûéÚùý¹Û½½¼¿™­                      ›ï š ¿é©à°©©à°	ïé¬           	             	 °	¬¿½¯Ÿ½ÿ¿šÛŸûËÛÛðŸ			                   	©©	­ ­Ë	 ššž
¿úž°     	 	                 	 ™	ùûÿùùÿ™ùýùû½©¹°¹              	       
ðé
¼¿¾°é °
 	 É  ¾ðù­                	             ©ð›Ÿ›ûÿ›ÿŸ»ÛßûŸŸŸ«ÙË			                  		©
Ú ›Ë°ð		 °  	¯
ð	©                  	       	 ›ûËý½ùü¹ûßŸ¹­ùù°Ù©¹   		   	       	  	à°ð©úê°Ë    	 Ð 	¯ °   	 	             	      ½¼™ûÛûùûžùûÿŸšß›½žš                  
šË
Ú Ÿ° š šÀ     š                       	    ¹¯½¿ý¿ŸÛßùùÿÛù½¹½	                	     	­ ¹Ë   	ÀÐ    °  	        	                ¹Ë¿ùŸŸ¹ù¹ÿû›ù¾ŸËÐ¹¹		                  °©©© šž
Ð°	¬   	   	           	                			¹ëÛŸ¿ûÏ¿ÿ½½ÿžùùý»›ÐÐ°   	             		   	 
 
š   	                 	         	 
©ùùÿ›ÛŸ›Ûëù½›ž›œ™©               	    °šš	 ©©		 	  	     	  	    	                   ™©Ÿ››ùý¹ùÿùùÿÿ¾ÛÏ›œ›	   	   	 	       	 	
 	 	    °   à        	 	                	     žšÛ½ù¹¹ð¿›Ÿ¿›™ùù¹í¼¹	À     	         	 š 		 	 	 š      	           	                  šÙ½¹ÛžŸŸ›ß›ÛýïŸÛ››œ°¹	                
 
         	 ÀÐœ	          	 	     	             	›Ûž¹ùù°¹ùûŸ¹­¹°žžš 	   	            		      	 	   š	
 À  	            	             	ššž™Û››ÛÛž™ù©½½ù¯ß›™É°		  	             	 	        	  š 		 	    	  	    	              	Û™ûÚÚ›ŸŸ¹¹ù½ºŸ™©í°°Ù© 	                	       		 			 ÊÀÀ                                	©©ùù¹›Ð¹	ŸËÙð¾Ÿ™›
œ©        	    	                	 œ  	 	      	             	     		Ù­¯šÐ½Ð½¹ù©¹ùºðÙ 	              	           ° š 	    	  	     	   	    	        š›Û™	Ÿ½›Ðùù¹­«Ù›Úš	                    	    	  	 Þ   	      	                    É¼›Úù¹	Ë™Ð°œ¹                             šÚÐ  	À     	  	                      ›œ™	Ÿš¹ù°»Ð¹ù¹		             	                ­	À       		       	             	Ù©¬°½		ÉÙÐ
œ½©™	™	            	                    žÏ À 	  	    	                  	 ù¼™ššÚšÐššŸ½Ÿ
ÐË				     	                       œÐ 	   	                	         		 ¹	™š›	É	Ðù©™ š                                 	éÀ¬	À        	                °°	œ›Ðð°ùùÛ›Ú›Ðð©É	                               	é	  		  	    	 	                	Ð	½©©›Û°ù¹­­¹éë›	­©° 	                              À ÀÀ	
                      	   	™›œ™œ½™¼Ÿ›ÛÞ­©	    	          	    	  	     	  œ	 	ÀÐ       				             	 ›é¹¾›šß››Û½¿ÿ›ÚÉ© 	                             	  ¬ 	                            	 ™°™¹¹™¹ù¹½½½ÿùðý­©šœ                  	         	    		ÉÉ© Àé  	     	  	              ™Éùù›ß›ßÛ›ÿûßÿ°™ù­°	           	              Ì¬ À  Ë         	         	   	 	©›™›	½½¹ù»ÿßŸß¿ŸßË© 	   	                   	   		    °Éé¼      	  	  	         ™½	ûß›Û›ÛŸÙ›ÿÿÿßÿ¿½°ùžš                           	  ÉðÀÊÀ	ÉÀà                      		ðš›	¹ùùù¹Û¿ÿÛý¿ÿûßÞÛž™	À    	                   	      	œÀÉ		ÉÎžœ    	 š                 	½½ŸŸ¹½½¿Ù½½ÿÿùýÿ½°ù¼°°	                            		 ËÊ¬¬ÉËÉé       		 	       	   °›	¹›Ÿ›Û™¿ÛûÿÿÿûùþŸÉ	 	                        	  	  œÀðÐéÊÀÀÀÉ              	       °Ÿ¿Ð»™ù½½›½½¿¹ŸÿÛÿ›Ù°¼  	                        	  Àüœ	É    	                	©™¹¹	¹ÙéÚ›™ùéûßÿŸ¿ÛüºÛÉ                               ÀÞÀÚÐ	ÉÊž À  	                šÚÙéùû›™¹	š›	™½»½¿ùéé½›	                       	    		ÉéÀéìœ	É œœ­ 
   	 	     	      Ù¹››	ÛéÛË¹™ŸŸßÛùÿ¿Ÿž¹üž                              ¼ÍÀðÐÚÐéÊœ 	ÊÐ 		             	  Ð°Ÿ©›Û™›	™Ë¹ë°¹¹é¿ùûßŸÚÙé«	™             	                É¬¼ÊÞ­àÐ­
À
   
               	Ÿš›Ÿ¹­¼›Ë™Ð™Ùùù¿ŸŸýûž½»ÛÙü  	       	                  		ÜÌ½àÐÉÊÐÍÀž š  		             ¹Û½©›Ÿ›™¿›ŸÚ›	ÿýÿÿÿ½ÿŸ¼½¿Ð         	                  Í°ÎÊÚÐ Éàð 	               ½ž¹	¹ùðŸŸ™	™™™Ÿ™ÿÿÿŸÿ½¹ùûÉùé    	       	                  ÚÌÉéÀü­ ÚÐšËÀÐÀ 	 	            ™¹ù½Ÿ›Ÿ›¹ù©¹½›ß™ùŸÿÿÿßðð›ËùËÚ             	              	­žœ­Ï­Ëœš 	              	½­ž›ð°½¹½Ù™™ÙÙù™Û½ÿÿýÿŸ›ÿ½¿¿	                            ÀÜÀàÐìÊÀàÚÉÉÀé	           	   ™é¹¹Ÿ™½¹½¹¹Ÿ™™™	Ÿßßÿÿ¹ûŸ›Ûðùù              	            ËÀ­	ì¼¼œ Ðí ¼
             	ŸŸÛù¿™ÛÚ™Ë	™››	¿™™Ÿÿßýý¹ÿ½ùÛÛé                              œðžÀàÀÉÊÐéÜ é  °           ½©ù½½›é™½ù™™ ¹ù¿ÿð™	ýûûÛÛŸûÿ½­ðð                           	 ÍÉéÉžÀËœé©­ ð
             ŸŸšù¿½›é¹¹¿¿ÿ¿ÿÿùÙ¹ý¹ÿßÛÿÿ¿            	                 žž
ÀÉÀðœÉàÀÐ              	ù›ß™ùÛ­™Ë	ŸŸÿÿ¿ÿÿÿÿ ™›ûÙùÿÿÿÛßÉÉ                         	 ÐËìÍ	àðÀÊÀ¼žÀ            ššù¹¿›½››	¿ùÿÿŸÿûÿÿð 	™©›Ûûùÿÿÿ°    	   	                   íüžšÀÚœ œÀÐ	À¼é              ½½½¿›ýûÐð ›Ûù¿¼ÛÐ›¹	 	½½ýÿÿùýù                	      éìžËÜÐ©ÌžÀ	   	         Û™½¹Ÿ›¹	  °			™		   š	ù¿ÿ¿ý¿þž                   	        ÞÐœÉàÐ¼Ê
ÐÌé ÐÉÐ	à             ™©ûÛ©¹û  ™	¹	™°ù½ï™Ÿšœ™™¿›ßÛÿùð                         š ­ì¼œ­à¼Ü­©Ü­¬¬ü  	          	ù	ùûÛß¹Ÿ				™™™ŸŸÿý°ŸÛýû¿Ÿß½©     	   	            	   ÀðÊËÀÜË ÎšÐÐ	             Ÿ¹š™¹¹¹ž¹ù¼¹Ú¹ý½ùÿÿÿùÿÛ	½½»ŸÝ¿¾ÛÐ           	       	  	  šÏÜœœœÊ	ÌËÉ              ùÛÙ½Ÿ›É½›¹Ÿ™›Ÿ›Ûÿ¿ßÿÿù©Û	›Ý¹ûýÿÛË              	          	ÊÐÊ¼Ú©¬ðÌ          ›ð	›¹¹¿Û¹¹¹›¼›™ùÛùù½¿ùÿÿŸ™¹Û½«ý½ûÿþ	                	       É­ÀðÉÊÐÊ	ÉÐ©íé   	        ð ½	¹ÉùÚ½™©ù¹¹›¹™»ÿÿßùùðÐ¹ÛŸ¿Ùý½ù               	       œ¼ÞÐ ðœ­šÀÀ 	         			™¹½›¹šŸ›	Ð›ÉŸ©	¹ý½ùš™¹Ÿ¿ûÿÿûí©   	  	                 ÀÀéïÉÉÀÐ
		ÀÐÚžÎ               ½½Ÿ›Ÿ¹¹	¿›Ð››™ùŸß½úŸŸŸ¹¹ùÿ½ÿÿßÛ 	         	 	        	œœ
É¬°é¼œ¬­¬éÌ 	   	        ›™ËšÙùð›šÐ›Ù	™™Ë	¹ÿÿÛýð½	»ŸŸ½ÿßÿýÿí	                     	   ÀðÊÞÍ ð©	ÀÐœ°É	 	            	Ë¹ùÛ›™ùÙ›››™éš›Ù½Ÿý½½¹¹¹ùÛßÿÿÿý»À	          	  	     	 žœÍ©¬žÀðÏ	ÎÚžàÍ        	  	  		ÿ›™ùù››Ùù	Ùùš™ ›	ûß›Ù›ÛÛÿÿÿÿÿÿÞ™                  	    ÉÀ¼üÐéÀž Þ	 ÉÊœ° 	  	          »™½¿Ÿ™ù½©°™	 ™	¼	¹½°™ŸŸŸŸßÿÿÿýûÊ		     	   	         	œÉËÊÐéàÚÍàÚÊÐéÀÀ             		©½›ÛÙ½ûÛÛ©¹	°œ°™Ë™ð››É	¹ù¹ûÿÿÿÿÿÿí	             	   	  	 šÀÉž¼¬œž­­©   	           ÛùùûÛ½½¹ÐšÙ	°›™ù™½ÿÙ¹¹Ÿ™ÿýÿÿÿÿÿÿßð           	       	  ÀÜ¼ÚÍÏœšËÀðéÀð¬
ÐÐÀ	 	             ›™¹ûß½¿›ÛÛ½™	™°™¹›ßÿÿðÐ¹ùŸÿÿÿÿÿÿÿüÚ                 	  œ	ÀÍ©àÊÐž¼Éí	         	   			ÿù½½½½½¹ùÙ©™	›Ù¹½ßŸÿÿÿÉ¹ù½¿ÿßÿÿÿÿÿÿÿ°                    ©ìž¼ÞŸ	É àÚËÀÚšÀðÜ             	  ›ù½ùûÛÛÛßŸ›°™­›ÛùûÿÿÿÿÛ¹ù½½ÿÿÿÿÿÿÿÙ  	                 ÜÚðÐðüÀ¬ÉžÍ­šÐ  	          	©ŸŸŸ½¹½½¹ûùù	™½½›½ÿÿÿÿ›Ÿÿÿÿ¿ÿÿÿÿÿÿÿð             	        	­­ÉïË	àÐí	 ÚÜàÀ 	            Ÿ›ûùÛßŸ›ßŸ›ÙùÛÙûÿÿÿÿ›ß›ÛßŸßÿÿÿÿÿÿü¿           	          Úþžðþ ­ àÊÀÚÍé	              °½ŸŸ½¹¹ùùûù½¹é™½¹½™ÿÿÿý›»ýÿûÿÿÿÿÿÿÿÿûÐ             	        	íðÿ­šÚÀÞœœšœ¬Úœ           	 	ŸŸÿŸŸŸŸ›ÛùÛÛÛ™©ÙŸ›Ÿÿÿÿÿýýÿ¿ßÛÛßÿÿÿÿÿßž 	                 	 °þðÿÀ À Êßð            š™ùŸ½½½¿ÛŸŸ½¹½½›¹ÛÛßÿÿÿÿÿ¿ß¿ÿÿÿÿÿÿÿÿýé     	                		Ïùý¯ÚÉž ÚšÀœ ðÎ      	      	©ÿ½ùùýýùùù½¿››ù™ÛÙ½¿ÿÿÿÿÿßÿßŸ™ûßÿÿÿÿÿð                 	¬œ¯¯Úÿ ÉÉí¬ËšËÏÎ             ŸŸß¿››ÙûŸŸ›ÙùùÛ™¹Ûßÿÿÿÿßÿÿùùÿ½ÿÿÿÿÿýé                      	ÉëÜð¿ËžœÉ¬œ¼	              ™½½»Ý½½¿Ù¹¹ŸŸ›™ù©ŸŸ›ÿÿÿÿÿÿûŸŸŸ›Ûûýÿÿÿþ   		              ÞžÍ¼ü¿Ð
ÚÐ ÐéÊÞ            	  ›Ûý»ÛÛÛŸÝ½¹›ùßŸ¹™ù¿ÿÿÿÿýíðùûÿýýÿÿÿÿŸ   	                  ÉÉÍ«Ïð¬ÐÀìÐÚÉÎœ    	          	½¿Ûùù½©»ÚŸ	š›	¹ŸŸŸßÿÿÿÿË›ŸŸÿÿ¿ÿÿ¿ÿé	          	        üÜ¼¼Ü¼	É­­	¬žËÞ 	              	ÿ½½»ÛÛ		Ðž™ùÙù½¹¿ÿÿÿ™½¼¹›ßýÿÿÿÐ                    	   ÀÉéïÊÀ Ì¼ÉéàÐ¬                 		¹ù¹½¹½šš™	°¹«›ÛßÿÿýÐ¼™
°¹þÿŸ¿ß©                        	­­Éœœœ°ðÀ¼¬Ðü   	          ŸËùùš™Ùš©		ÐÙ½¿Ÿÿþ¹	 ™	ÉŸŸŸŸÿÛûÛ 	     	           	  	 ÀÀÚÉï¬ É¬ËÀÚÍ à            	½¼¿¹Ù°°™©¹¹ÛÛÿÿý š	°ýûÞ¼½¼	                       Í­ðÐžœ ÐÐÐÞšß	               	››™Ûš	  ©		Ÿ¿½ÿÿÚ™		š™œß¿™™¹                       Í ÞžÀÊÉÀÍ¬¬¬ ÐìÀ                 ¹ð°°½›ÉÐ™°ù›ßÿýð°		  ¯°Ð™ šÛÉ                 	       íéí ­ ÉÉÉÍ¬žžÐš  	              		 °ð ¿ 		©›ý¿ÿþ™ð ð ß  ™ù°°     	       		   	    œÌœëÐÊÉÀÐšÀü¼ÚÉéÊ	   	 	       	° 	ß ™»Ûÿùà™	É   © ›		        	  	        		  É ËËÍÊÐœ	 àž À­ðÌ°Ú 	              ™ À à	©	©ùÿÿÿ™ 	 			 	é	¹                    	  ÉÜ¾	Àà¼žÚÜÛÍà°É              šÐ	 š			»Ûÿùà	      žžœ°	     	       ©	  	   ÀÀ ÐËËí¼œÀÊž	Êý¬ž 
°À             		© ™À  	  	 	›Ÿûùÿ	   Ÿé
™©	 	         	   	      	 	 žœœ¼ŸéÊÉÀÚœ	ÎÊœÛéÉðÝë	              šÛ		  	› ù¹ùÿ½ùÊ	  œŸ½ ™Ë         	 	   	 	   	œ ÉÀÉÏÐÚœ­Àü©ËÉàÞžËúü              			 ›ÚÙËš 	 ›™ÿ¿ùð¹°		°¹  ›Ëð                      œ ¬¼üÊÊÀÎœ¯Àœü¬žÍéì½¯À            š°	 ° 	°Ÿ¹ŸŸùð	   		 	           	     	 	  	 ÐÀÐÉËË­	ÊÐ­à	ËíÛïÿœ            		Ùà™ 		¹Ÿ¿ùù°				 °       	     	   	 	    À ¬ðþœ
ÚÐüúÞÞœšÚùíûïï
š              ©©° ™	  	™ù¹é°   	          	        	    	 Ðœ
ÐÐÐÞŸÉÊÜÀ­¬­ïýï¿¯ûÚßí            		©		  	  Ÿ¹¿ŸÿŸ­                          œ éœ­ ¼ðÐþðéÞ¾¾¿ïÿÿíúÚ	                 	™¹™ùûùÚ›™©	            	       	        œœ ÀœððÞžéÀüÉ­Ðéýÿÿ¿ÿïúß­           		°   		éÚÛŸŸŸ¹ðð 	             	 	     °	 	  œ  ÐÀðÿËíÎ
ÚÛíàËïþÿïûÿëÚ 	           ›š	  Êœ››ŸŸ½ùùÛŸ›Ùð	                 	 Ð ©   	Í	Àœž­ËìÚÜ¬šÜ¼¿¿ÿÿþÿ¿àÐ ©           		Éš½©™¹ûŸß›ÛÛÿ›½¹é 	     	             É©úžÐ		  À 	À ¼éÍ­ß¯ÉíàÉéÉíËÏßïÿûÿÿïé 	          ¹¹¹Û›ùûß¹Û›Ÿ¿ÿùÿÛß›	 	                úßËÞð 	 ÐÐ	ÀœúßêÛþžœ¼žž­É¯ÿïþÿÿÿž š	          		šÛ	ù›ùûßûýùùùÿù¿ŸÉ                  ëþûïË  À 		ÀËúì¿ëíËÉÊÏÉÿÿÿÿëþþþ	          °Ù½½¿¿Ÿ¹½Ÿ¿¿Ÿ¹ÿŸŸ	°                    ß¿þžÚÌœ©	À ÀÀ ÜðßÊÛðÿú¼ÚÚœ¼¾¿ÿÿÿÿÿ¿É  	         		¹›™ûÙûßûûÛÛÛË©½°          	           úÿûý­œ	É ÀœÚÍž¼œžÏÿÍéÉïÉíþÿïþÿÿü° š        ›	ùÿŸ¹ûÛÛ™ùýÿ½½š			                  	 ½úüúÚÐÉÀÉ 	À ÚÉËÏËÏžžðúžÞ¼À¼ÚÛÿÿÿÿþûÀ          			Ú›™¹Ûß½½¿Ÿ››ÛÛÉ°š  	   	          	  úÿ¿ÀÉÊÉ	  Ü­íðí¬¼ùïÞËÉËÜÊÜ­ûÿÿþÿþð 	          	©™ðùû½¹û›ÛŸŸœ¹©°			      	               ßÿÿðýàÜ°À ÐÐÐÐðÿúßÏŸ¯¼úÌ­­­Ï¯ÿï¿ÿÿðð	 	         	©››ÛÛÛÛùÛž¹Ÿ °              	     		ëÿëÏ œÐ Àœœ­ÿúûþðÿÏÚÚÐÀÚßïÿÿ¾ûï      	      ©ÛÛ»›ŸŸ™»Ù°›		 	                  ¿ÿ½ðÚÐéÀ	À ÐÀÊÜðÿûÿþûÿëéïàùí­¿ÿïÿÿýð	         š›ÛŸŸ½½¹ÛÉš›	        	    	     	   	 ßÿþ¾Ü	À	àž­­­ðþÿÿþûßžž¼àÜÌ ÞËÿÿÿÿúü
	           	 ¹¹»Û›Û¹¹½		     	        	        	¿ÿÿËËÀÐÀœ àœ ÐàÐðÿÿþ¿ýþëïýí½­©ü­ŸËÿïþÿð       	    ››ÛÛÉ¹ù½ŸšŸ	© 	 	 	    	        	   	  	ïÿÿ¼¼ËÀ¼Àœœ ÐÍéÏÿ¿ý¯­½ûúúÎÊÜÀÐì¾ÿ¿ÿúÚÀ         	°Ð™¹›Û›é¹°Ù	                     °	ÌŸÿþûÏÌÉÀ©À Í ðÎéüžü¾ÚÚúþÿÿ½½­­éÉÍÿÿÿïœ           	›ËÛ½½­™¼™ 	°             	   	      Ï¿ûþùéí	Í
œÐÐÞžûéëÉííÿûÿÿþþÚÚÞžÉï¾ÿúûÀ           	
	°œ›››½›É™ 		 	               	     	  žÿÿûþœ ÐÀÉÀ
ÐÉÉ¬­©éÏÏÉï¿¯ÿëþÿ¿ÿÿéí¼¼½ÿÿ¿ü©  	        ™	¹¼›ÐÐ¹   	   	     	   	  		 	 ËÿÿÿËííÐ­œ¬ÐÜÞžûéûïÿ¯ÿÿ¿ÿ¯úÿûíðþûþþÚ	        	   
™	½››š		                        ¿ÿÿþ¿ ÐÌ ÐÀÉàÉÉééí¼ðùÿïÿ¿ÿÿÿþÿÿÿûïûïÛïÿûÿÀ     	     			 ¹°™©	É		    	          	  	 	    
ÛÿÿÿüðÏ	­œœ­Ïêÿÿï¯Ÿ¯ïÿÿÿÿÿÿÿÿÿÿûïûÿþûð           	Ë›Ú™ 	 	             	         ïÿÿÿ¿ÀÀÀÀÐÉéÀéëßúûÿïÿ¿þûïÿûþÿïÿïÿûÿïÿ¼ð            		šœ™  	              	 	 	 	 	¿ÿÿÿÿééË­œžœœéÿýÿÏ¿ÿÿÿÿÿÿïÿ¿ÿûÿïÿïÿ¿Ï°             			©     	                	 	  °ïÿÿÿÿþœÐÐÀÀÐàÉÀÍ­Ïï¿ú¯¾ÿ¯ÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿ¿ï¿À          	 š°	 	   	           	    	 ­Ûÿÿÿÿÿþœ¼ ÐÐÐðÍ ÚÚßûþÿ¿ÿþ¿ÿ¿ÿÿÿÿÿÿûÿ¿ÿÿÿëð   	         	 			 	       	 	   	            ÚÚÿÿÿÿÿÿùððÀÉÉ­¬Þœÿ¯þÿ¿ïÿÿÿïþÿÿ¿ï¿þÿÿïÿÿÿÿÉ           	               	   	     	¯ÿÿÿÿÿÿÿþÍœÊÉéÀÀÐðûËßÿ¿ÿÿÿ¿ÿÿÿ¿ïÿÿï¿þÿÿþûúü¼                		       	            		  		¬ žÿûÿÿÿÿÿÿéð¬œœì¿úÿþÿûþÿÿûÿÿ¿ÿÿÿÿÿ¿ÿ¿ÿÿûé   	     	         	         	         	 ÿÿÿÿÿÿÿÿüÀÐÐÀÉÉÊÐÌúÛü¿ÿÿÿÿÿÿëÿÿÿÿÿûÿÿ¿ÿÿÿÿÿïð                                  	    	   	Úÿÿÿÿÿÿÿ¿ÀÐÀË¼œ©Í¬¿Ïÿ¿ûïûÿÿþûïÿúÿÿþÿÿþÿúÿ½¬    	            	  	        	       	  	 ¿ÿÿÿÿÿÿÿí­œÜ°ý­¿ÿÿÿÿÿÿÿÿÿÿ¿ÿÿï¿ÿëÿÿÿþÿé	 	                                       ¬ ° ÛÿÿÿÿÿÿÿúÚÐÀÀÀÐÉÀÚÉÊÞÚÿúÿúÿûþûÿ¿ÿÿïÿÿÿÿÿÿÿúÿÿúÐ 	               	    	                  š   ¼¿ÿÿÿÿÿÿÿÀÐÚÐË¼ËÚßÿÿÿÿÿÿþÿÿÿÿÿûÿÿÿÿûÿÿÿÿïÀ °                 	  	  	   	   	     ÿÿÿÿÿÿÿïðÚÉÀÉÌœœÊÞÚÿ¯ÿÿûïûÿÿÿëÿÿ¾ÿÿÿëÿÿÿÿïÿð°    	    	        	             	    		 		   ßÿÿÿÿÿÿÿûÏž	ÀÐðé­Ëßÿÿÿÿÿÿûÿÿûÿÿÿï¿ÿÿïûÿ¿ÿÀ                                    	   	   °Ÿ¿ÿÿÿÿÿÿÿýéíœœœÜðü¿úûïÿÿÿïÿÿÿÿÿÿ¿ÿÿÿÿÿþÿÿïûÞ             	         	    	   	         ¯ÿÿÿÿÿÿÿÿïÐÉÀÐÀÐÉÉÎËðÿÿÿ¿ÿ¿ÿÿïÿþÿÿÿÿÿÿÿ¿ÿÿÿ¿ï¼©	           	  	       	   	       	   	ÿÿÿÿÿÿÿÿÿûð­¬ž¬¬žððüÿÿÿþÿïûÿûÿÿûïÿÿþ¿ïÿÿ¿ÿÿûÏœ
	    	            	             	    	ŸÿÿÿÿÿÿÿÿÿÿÏÐÉÀÐÉÀÐÀÍÉÏšÚÿÿÿÿÿÿÿÿÿûÿÿûï¿ÿÿÿÿÿþÿÿ¾ûÊ  	   	                           	 		 ÿÿÿÿÿÿÿÿÿÿþ¼œ­œœ¼­ëÏÿûÿûÿ¿ûÿûÿþÿÿÿÿïÿÿ¿þÿÿûïÿüù                     	    	   	      ÿÿÿÿÿÿÿÿÿÿûËËÉÀÐéÀÐéÉÞœûËÏûïÿÿÿïþÿÿÿ¿ÿÿÿ¿ÿÿûÿÿÿÿÿ¿¯°   	                            	  Ÿÿÿÿÿÿÿÿÿÿÿýüœœœ¬éÏ¿¿ÿÿÿïÿûÿûÿ¿ïûÿÿÿþÿÿÿ¿ÿÿ¯ÿýéà         	      	      	     	  		  ÿÿÿÿÿÿÿÿÿÿÿÿ­éËÀÐœœœúžðüÿÿÿ¿ÿÿÿÿÿÿÿÿïÿÿÿÿÿÿÿïþ¿ÿï¾¾	       	            	           š  ¿ÿÿÿÿÿÿÿÿÿÿëÍœ¬ÚÉÀéíÏ¿úÿÿÿÿ¿ÿûþÿÿÿÿÿÿïÿ¿úÿÿÿÿÿÿÿÛÚ	  	       	                	      	ÿÿÿÿÿÿÿÿÿÿÿßÊÚÉÀÐœœËÎ°þÚßÿÿÿ¿ÿþÿÿÿ¿ûÿÿïÿ¿ÿÿÿÿÿÿÿûïï­¼	  	 	       	                    ÉÉ¿ÿÿÿÿÿÿÿÿÿÿÿ¾¼œ­œÞŸ¿¿ÿ¾ÿÿïÿÿÿ¿ïÿÿÿûÿÿïÿÿ¿ûþûÿûûÛÊ     	            	   	 	    	  ° ° ÿÿÿÿÿÿÿÿÿÿÿÿïÎÐéÀÚÐéÀð­é­éíïÿÿþÿÿ¿ÿÿÿÿïÿ¿ÿûÿûÿÿþÿÿþÿÿÿïé       	           	        	   ¼ 	ÿÿÿÿÿÿÿÿÿÿÿÿÿùéœœÜžÞžûûÿÿ¿ÿÿÿþ¿ÿÿ¿ÿïÿþÿÿþÿÿÿûÿþ¿ï¿žð	                      	   	 		
ÿÿÿÿÿÿÿÿÿÿÿÿÿþœðÉàÉÉÀÚÉËÉéÿÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿ¿ÿ¿Ïùí 	   	             	       	     	  ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿéÍœœ¼œü¼ûÿÿÿÿûÿÿ¿ÿúÿÿÿÿûÿÿÿÿÿûÿïÿÿÿÿûïúÐ  	   	   	 	  	    	  	      	¿ÿÿÿÿÿÿÿÿÿÿÿÿÿûÏœœËËÏðü¿ÿ¾ÿÿÿïÿÿÿÿ¿ëÿþÿÿï¿ÿïûÿÿÿþÿ¯ý¼ðÀ     	      	                ËÿÿÿÿÿÿÿÿÿÿÿÿÿÿüðÉÊÐàÐÐ­¬¼œ¿¿ÿÿÿûïÿÿÿïÿÿÿÿûÿÿ¿ÿÿÿÿÿÿþûÿ¿ÿ¾ûú    	              	        ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐœ¬ÐÉÀþÐýéëÿÿÿÿûÿûÿ¿ÿÿÿÿÿÿÿÿÿûÿÿÿ¿ÿÿÿÿÿ¼ü¼      	 	 	               	  	¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÀÏœÉÊÝ	ï¿ÿÿÿÿÿÿÿÿÿÿúÿÿÿûÿÿÿþÿÿïÿÿÿÿþ¿þÿ¿Ë		      
 	               		 ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïŸž ðÍ¬ÞœúÞŸÿÿ¿ûÿÿÿÿÿÿÿÿÿïÿïÿÿÿÿÿÿÿþÿÿþÿ¿ü¼œ 	       	           		 
ËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙàÉÀÚÍð¬éËËéûÿÿÿÿÿþÿÿÿïÿÿï¿ÿÿÿ¿ÿÿÿÿ¾ÿ¿ûÿÿ¿þ¿ÿûé             	         		¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ®ÐÚÉÉÐÉÞœðßÏ¿ÿþÿþÿÿÿ¿ûÿÿÿÿÿÿ¿ïûþûÿÿÿÿÿÿÿÿÿþ¼¼¼¼    	          	 	 à   ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÍÐËÌéÊéï¯½ïÿ¿ÿ¿ûÿ¾ÿÿÿÿ¿ÿ¿ÿÿÿÿÿÿÿÿ¿ÿÿï¿þ¿ûÿÿûé­	 
		  	           		   Ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûí­àÐéÀÜÞžœÛÏ¿ÿÿÿÿÿÿÿÿÿþÿÿÿÿ¿ÿÿÿÿÿÿÿÿïÿÿïÿÿÿÿ¿¿ÿð°	 ™šÀ     	    	 Ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÚÐÉÀÞœ©éËÞ¾ûÿþÿ¿ÿÿÿÿÿÿûÿþ¿þÿÿ¿ÿÿÿëÿÿÿûÿÿÿÿÿ¯ÿÿ¿¿ëÀŸ¬¹é¼  		        	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼¼œ¼	ÀðÀðÍééùí¯ÿÿÿëÿëÿûÿÿÿÿÿÿÿþÿþÿÿÿÿÿûÿÿÿ¿ÿÿûÿ¿ÿÿ¿¹©ÚËž¿©àÀ         	 ÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉàÉÌœ¬ðÞžÏ¿ÿÿ¿ÿÿÿÿÿÿïÿÿ¿ÿûÿÿÿûÿûÿþ¿ÿÿïÿïþ¿ÿûÿÿ¿ÿþÚ½¿ïÚÞŸ¼©©	      ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðüœž	Àœ¼­é¼ðûÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿï¿ÿ¿ÿÿ¿¿ÞŸ¿¿ûÿËÚÀ
	      ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïžžÉÀÀðËËÏÏ¿ÿÿþ¿ÿÿ¿ûÿûÿ¯ÿ¿ÿïÿÿÿÿïÿÿÿïûÿÿÿÿÿ¿ÿ¿ÿÿ¿ÿúûïÿí¯ëÿí¿	À š   
Ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼ž œ­œééí»Ï¿ÿÿÿÿ¯ÿþÿÿÿÿÿï¿ÿÿÿÿûÿÿÿÿ¿ÿÿÿÿÿÿÿ¿ÿûÿÿûÿÿ¿¿¿Ûß¯¾žð½­ À­	 	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÎÜÉÀÚÐðÜÞžÏ½ïÿ¿ÿ¿ÿÿÿûÿÿÿÿÿÿûþ¿þÿÿúÿÿÿþÿþÿÿþûÿ¿ÿÿÿ¿ûûÿþÿ¯ûÿÿÿÊÚð¿Ê¬Éšÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð½š œ	ÀÐÍ­©éðûûÿÿÿÿÿûÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿûÿÿÿûÿûÿÿÿûÿ¿ÿ¿ÿÿþûûûÿ¯ÿ¾ðÿ­¿Ëü¿ß¿ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌËÍÏÀ¼ÉÊÚÚÜý¯Þÿÿÿþÿ¿þÿÿï¿ÿÿÿûÿÿÿ¿ÿ¿ÿÿþÿ¿ÿÿÿïûûÿÿÿ¿ÿûûûÿïþ¿ÿ¿ûÿ¼ûÎ½ëÏ¯ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüšœ  É¬œúÚÞ½¿ÿ¿ÿÿÿÿÿûÿÿþÿÿïÿ¿ÿÿÿïÿÿÿÿÿÿÿÿÿÿÿ¿¿ÿÿÿÿÿÿûûÿÿ¿ÿÿúÛÏ½ëß¿ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþŸÍíÍ Ìœ¼¼ðÜ¼½ëÿÿÿûÿÿ¿ÿÿÿÿ¿ÿ¿ÿþÿþÿÿÿûïÿÿïÿïÿÿþÿÿÿ¿ûûÿÿ¿¿ÿûÿÿÿÿïþ¾Þ¼¯ËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðéàšÉ	ÉÐÏËÞ½ëÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿ¿ÿÿûÿÿ¿ÿ¿ÿÿ¿ûÿÿÿÿûûÿÿÿÿÿÿÿÿûééëËý¾ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿœÌÌžÌ¬É¬ùííéëÿÿûÿûÿÿÿ¿ûÿÿÿÿÿûÿ¿ûÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿúþžÛÏžÚÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿüéÀ	É	É¼ÙðžŸß¿ÿþÿÿï¿ïþÿÿÿÿïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúÿï¿ÿ¿¿¿¿ÿÿÿÿÿÿÿÿý½éì¼éí­ï¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÐüÜÀÌÐÌ ìðÏËËéÿÿÿÿÿÿÿÿÿÿþÿ¿ûþÿþÿþÿþÿëÿëÿï¿ëÿÿ¿ÿ¿ÿÿÿÿ¿ÿÿÿÿÿÿï¾ðü½éü¼ûÿï¾ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾Ï 		 Ý	Ïœ¼þŸëÿûÿ¿ÿÿûÿ¿ûÿÿÿÿ¿ûÿ¿ûÿ¿ÿÿÿûÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿûûÏžÚÚ
ÚžšÛí¾ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíÜüÌÌÍìÊÍéÊÜ¹í¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúûÿÿ¿¿¿¿ÿÿÿÿÿûþÿ¾ËÎÜíÎÜïÎžÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðì 			 œ¼íÏûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿûÿ¿¾ÛüúÙéÚÙéÚÛÉì¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿíÌÜÌÜÍËÛÚÚÚÞ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾žœ¬ž¬ž¬žŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðÊ ° à­­¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÞýïÞýïßÿÿÿÿÿÿÿ                ©­þ, 'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.', 2, 'http://accweb/emmployees/leverling.bmp'),
	(4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '1937-09-19 00:00:00.000', '1993-05-03 00:00:00.000', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-8122', '5176', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          T  BM T      v   (   À   ß          S  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ ý¹¿¿ûûŸ½»¿ÛùûûûûûûÛûÛû¿¿¿ý                                »Ûù½¿›¹¿¹ûûŸ¹»û»¿»ûŸ›Ÿ¹¿›ù¿»û¿½¿Ÿ½¿Ÿ›Ûûûùû¹½»›¿›¿¿¿¿¿¿¿¿¿¿¿¿ûûûº                                ›ûŸ»›½¿¹¿¹¿ûÛù½½»Û¿ûûûÿ»ÿ»ùù½¹»û¿»ûûû¿ûŸ›¹ûû¹ûÛûûûùûûÛù¿¿¿¿¿ŸûûÐ                                ¿¹û¹ûÛ¹»ûÛù»¿»û»Ÿ»Û¹¿¿›½»Ÿ¿»ûûÿ›ÛŸ¹½¹ùûû¿¿½¹û›¹¿¿Ÿ¿½¿¿¿¿Ÿ¿¿¿¿¿Ÿ°                                ›ÿ»Û¹¹ûÛÛ¿»ùûß›Ûûß»ûù¿¿ûûûÛÿ›û›¿¿¹ûû¿»ù½¹û»û½½¿›ÛûûûûûûûûûÛûûûûð                                	»ù½¿›Ÿ»½¹ù¿›»û¹»»ù¿¿¹»Ÿ½¿»›ûŸ¿›ÛûŸŸ›Ûûû¿½¿¹û»›¿»½¿¿½¿Ÿ¿¿Ÿ¿¿¿¿û                                 ÛŸ»›¿¹½»¿»ûûÛ›Ûùù¿ùûÛÿ¿»ûÛûŸ»Ûû»›û»¿»û›Û›ù¿¹ùûù¿ûûÛûûûÛûûûûÿ¿›ð                                	»û¹ûÛ›û»ÛŸ›Ÿ»¿»Ÿ»ù»¿¿¹»Ÿ›¿¹û½»½½¿¹ûÛŸûû¿¿¿¹û»¹»ù¿¿¿¿¿¿¿¿¿¿½ûûÿ                                 ¿›Û›¹ûŸŸ»ûûûß›Ÿ»ù»ûù¹ûûûùùû½»ùûûùûÛ¿¹ý¹ù¹ùû½½¿Ÿ¿½»ûÛùûùûûûûûû»à                                 ›û¿½»Ÿ»¹ù¹½»»½¹ù¿Ÿ½¿¿»Ÿ›¿»Ÿ»Û¿››»›½¹ûû¿¿¿»½¿»¹»›ûù»ûûûûûÛûûÿ½ÿ                                 ½½¹Ÿ»ŸŸ»ûûùùû¿»û¿»ùùùûûÛÛûŸ»Û¿¿Ÿ¿›¯›ûÛ›Û›Ûû›Û½¿¿¿ÿ¿¿¿¿¿¿½¿¿¿¹                                  ›»»ûù¹û»ŸŸ›Ÿ»¹ù½¹ù½»»¿»Ÿ»¿¹û½»Û¹ë¹ûù¿û¿¿¿¿»›û¿›¹ûÛ»ÛûÛùûûûûûûÿ                                  ÛÛ›ûŸŸ»»ûûÛÛ»û¿»ûÛÛÛÛùùùû½»Û½¿Ÿž›Ÿ©ý¹ù¹ùûûŸ›ùû›¿ûûÛûûûûûûûû¿                                  	»½½¹½»¹ù½»›¹½¹»ÛÛ›»¿»¹»¿»Ÿ»Û¹û›»»ð¹ûû¿»ûû½¹û¿››ÿûŸ¿¿¿¿¿½¿¿Ÿ½ù                                   ½»»Ÿ¹½¿»û½¿Ÿ›¿½»»ûÛÛŸŸ½¹½»Ÿ¿Ÿ¹ùùé»ú ùûŸŸ¹û¿¿Û»û››û¿¿Ÿ½¿¿¿¿¿¿»             ¼¼Ÿ
ž                ›ùðû›û›Ÿ›Û¹¹»ù»ûß½»¹ûû›¿šùú¹«Ÿ«Ÿ¼  ûŸû¹ûŸ›Û¹ù½¿¿»ùûûûùûùûûûù            ÚËðýùûþ°             	»›¹û›ûûû½¿›ù»Û›¹»ùû¹¹ùéû›ŸŸ½«¿    ð°½¯Ÿ»û¿¿¿»›ûß¿¿¿¿¿¿¿¿Ÿ½¾           š½ýÿ½ÿŸ¯ßŸßúð            ŸŸšŸ½»›½»›ù¿Ÿ¿½¿››Ÿ¿š»›Ÿ¿©°»Ûë     ð  °½­¹ù¹ùûŸ»Û½»Ûûûûûûûù          žÿÛúŸß¹ýùúÿ¿Ÿž          °¿››½¿›½¹›¹»››°¿¿©©½¼¿©©¿Ÿ¼       °     ¿ÿ¿¹¿¿¿ûÿ¿¿½¿¿¿¿°        	»ÿ¼¾½ÿúßë¿½ùùÿûÿ¬          Ûù»ûÛ›¾›ûÛùùûÛð››ÛË»››Ûð         ð       	©½¿ûùû¿›ûÛûùûûù¼        ¾ßŸßÛß¿Ÿù½ýûÿÿÛßËÛË          ¹»Û›¿½¹ùù¹»›»š¹»ùé©°ùûé           ð         Ÿ¿¿ŸûûûûûÿŸ¿»       ¼›ÿëûý¯ßùÿÛëßžŸÿ¿ý½¼½¬        ½¹û›û››Û½½½½ž™©½¿¿š             Ð           ½»¿Ÿ¿Ÿ¿»ûûÐ      ËÿÛÛÞ›ùúß¼½½ûÿ¿ß›ëËÚÛ       ™½›¿¹û™é»›Ù»¹¿¿                             	¿¿Û¿Ÿ¿¿Ÿ¿½       ­½ý¯ýûÿß½ºÛûÛŸùýÿùÿÙù©ðð©      û»ù¿½¿¹ðû­½»Ûà                  ð             û¿ûûûûûùú     	Éðûûý¾ŸÚûßý½¼¿ðÿûùÿ¿žŸŸž      ¹ù¿››°››½¿š›é                    ð              ¹ûûûŸ¿¿¿     
žŸžß¿Ûðý¿­¿ÿŸÚßŸß¿½ùùùùËËË      šŸ¹û¼Ÿ½                         Ð              	û½¿Ÿ¿½»ð    	¼¹¼ûûß½¿¿ýûÙéù½»ÿ¿ßÛûËžž½¹ù­     Ÿ»Ÿ¹û°°                                          ¿ûûûûûÿ    ËÞÿŸßëÚýûß½¯¿šÛÛý¿¿½éùÐ¼¼½ ž    ¹¹ûŸ                             ð               	¿½¿½¿»     	¼ûËúùùý»Þ»ËÛÐ½©ù½ûí­¿ŸšûÛŸŸ	À   ¿Ÿº                             ð     
          ûûûùÿà    ›ß½ý¿ÿ¿ß½ý½­¿Ð½°ÛÚÚÙžž›Ððð°   	›¹ð                             Ð                	Ÿ½¿¿»    		þ¿Úûý½ù¿ËúûÛÉ¼¹ðœ°š ™©é¹ð¿›žž   ùû                                                ¿¿¿¿½     ËÚÿýúÿ¯ý¿Ÿœž›É	ûÛéÚ›ÛúŸ		ùËÐ  ›°                              ð                  ¿ûÛû     Éÿý½¿½½ùúÙðûùéûùÿ	©	©É©½¹ù­¹¹é­   ûÀ                              ð                  	¿¿¿À   
›ÿïýÿûÿŸ¾ûÐùûÛÚ™ðÛÛÚŸž›œšÛšÚÚŸ
À š                                                  ûûÛ     	ÿéùúùý¿ùùðûûß­­¾Ÿ¼½½ùé¼ù½¼¹é½¹é½   ð                               à      
 ÀÀ        ›ûûÐ   	ÏïŸ¿ÿßûýžžŸŸ½ëÛùý¼Ÿ¼¿ÛÛ›ËËŸ›É­¹Ê           À                     ðÀ
    
 
         Ÿ½     ¹¿ÿÏŸ¿½ºûÛÿ½ÿ¿ßûý¿Ùý½­­¹°ð½¿šÚ¹à                                 ð  À
ÀÀ 
 
À¬ 

  ¬ ûð   
ÛËûÿùÿÛÚù½ûËûË½ýŸŸÛý¿ÛÛÚßŸŸŸéž        
      
                 
    œ  šÀ  é¯°    Úÿÿßùÿðý½¿ÿ½ùý¿Ûûÿÿ½ûùùùù°ðùùùü»Ÿ©           
   À                à    
  



À     Ûð    ¿úÛþŸý¿»ëÿËß¿ûý½¿ÛÛß¿ßŸ¼½½¼°°û¼ÚÐ      
À  À     Ê                 ð          
 
   ¬ ÀÉ
	¾    ûßÿŸûúÛßŸŸ¿½ùýûÿÛÿÿÿý½¿ÞŸÛËŸŸŸŸÛ½¾              À  ¬               ð                  
 À    ž¿Ëûßß¼¿ÿûßûÿ¿ßŸýùÿùûÿÛùù­½ééé°ü»Ùð          ¬  
 ¬                °                   
      ýÿ¿ßûéûùùý¿ŸŸß¿ÿŸ¿ùÿýùý¿ŸÛËŸŸŸ›Ý¯ž    ¬    à 
  ÀÀ
               À                      
   	¿úßûÏŸ¿ß¿ûùÿÿûýùÿßßÿŸ¿ùý¼¹ùùËÚÛŸûùé   À  Ê   
  Àà

    
          ð                           ûßûß¿ûß¿ùýÿùùýûÿÛÿ¿ŸÿÛÛéùÿÛËðùðð¼Ÿ½ð 
     à   à                   °                           þûßùùÿ½ùÿ¿Ÿÿÿ¿ßŸ½½ÿùùùý½½š¿½¼½½¿½»ËÀ        À  
     À   
      ð                          
Ûÿëþ¿ùÿ¿ùÿÿŸŸß¿ÿßÿŸŸÿÿŸŸÚýùûËÛÛËÙþß½           

    
 à
     
  À                          	ÿßŸÛßŸ¿ý¿ûÛÿÿûýùûÛÿÿùùÿ¼¿ŸŸéùððùëùûÚÐ    À À        
            °                          ¿¯ûÿûÿý¿ÛßÿÛùýûÿßýùùÿÿŸÛÙðý½¼½¿ŸŸŸ½ûÚ  À     ¬               À   
 ð     
                     ÿÛÞŸ½½¿Ûÿ¿Ÿýÿ¿ý¿¿¿ÿÿûßùÿ¿½¿Ÿ½¾Ÿ¼ùéûß½¾               
 
   
   ð                          	ûÿûûßÿÿ¿Ÿÿÿ¿½ý¿ýýý¿ýýûß½ýûÚÛËÛÚÛÛý½¿ÚÐ  ¬ 
 à  	 ° ©         
                                žýé¿ßÿ¿ŸßÿÛÛßÛûýûÿ¿ý¿¿½ûÛ½½½½­½½¿Ÿý¿ž       à ÀÀàÀà °À           ð                          ûþß¿Ÿßûùûÿÿûÿýûý¿ß¿ýýûÞ½ùÚùðùùëÛÍ¿ð¿ùéà    À         




       ð                           ý¿ùÿûûßÿýùý½½¿ý¿ÛýùûÿŸ½ûÿ½žŸ¿¿ÛßŸÿŸÀ À
  
œÀÐ©Êšœ  
   °                          	¿é¿ùýÿûÛÿ¿ûÿÿý¿ÿÿûÿýùÿÛßÿ½½½½¯Ûÿ½½¿ùë 
   À
 Ê


À ÀË



  œ 
 àÀ                          ïŸßŸûÿŸÿÛùýùùûÿß½ÿÛß¿ý¿ðû©Ëððð½½¿ŸÛËý¼½         Ð©šÉ
 ÀÀ À¼ ¬ ¼ °                          Ûÿ¿ûßŸûÛýÿ¿¿ÿýÿ¿ûÿÿ¿ý¿ý¿Ÿß½ŸŸ›ÛÛßûÿ¿ÿžšÀ
À  
   
 
Éà°­ é¬    ð                          ž¼½ùÿ¿ùÿý¿Ûßß½¿½ÿßÛýý¿ÛÿÛù½¾¼¼½­­¹ý¿¾Ÿùùé       
      	  ¬ ¬š Àð                          éÿ¿¿ùý¿ùûù¿ûûßýÿûÿ¿Ûûß½ùý¯ËÙÛÛÚÙùï¿ýù½¿ý¼     
      
 

À¬
É œ ¬š                          
›ùÿßŸûÿŸÿßý¿ßûûûßùý¿Ý­™é½ëúÛËŸùýûžßßšÚœ  
     
 
        
À      ð                          ýïŸ¿ÿŸŸûÛùûÛûßßß½¾ÛùûÛÙ­™é	œ™é½­½Ÿûßùº¿ý¿   
        
 
     
 ¬ ¬  ð                         »ÛÿßŸÿûßý¿ßÿßûûÿÞÛÐßßÿýÚÙ¼›ÉðÛÚÛùÿ½ÿÝ½¿ÙúÀ                      	 
                           
Þ¿ÛûÿŸŸûÛÛûÛûßýùùÙý¿ÿßŸšÐÙ¼š¼¹¼½½ÿ½»Ûü¾                  
        ð                         Ÿùý¿ýùÿÿ½ûÿ½ÿ½þŸ½ž™ùÉ		 ÉÉÐÚÛÛûÛÛüÛÛùÚ 
                 
 
                               ­¿¿ýûÿ½½ÿ½ùÿ½ÿ½ðÛÐÙý	¹ý¹½ûûßš°Ð½¾ŸÿûÛ½½¾½¼   
                      Ð                         šßÛûýùÿûÛÛÿŸûßùß	¿ýÿ¿ÿÿÿß¿ýÿ ž›Ùù½ÿýëßÙð°À                         ð                         ÿ¾¿ßÿ¿ùÿÿ­ŸÿŸðß	 ½ÿÿûÿÿÛÿÿ¿ÿûðð	¼¿ßÛùûŸ¿Û                                                   ›ùùý¿ùÿŸùùß¯ùÿŸùÿ¿ÿÿÿÿ¾ÿÿÿÿ½ÿ°	½°¿ß½ý½í½ 
                         Ð                        ­¯ÿ¿ùÿÛûßŸ¹ùÿ¼éï¿ßÿÿ¿ÿù¿ÿÿÿÿÿÉàÛËÿÛùÿšÛ›ÚŸÀ                                                  Ûßùÿ¿ýÿ¿½éŸžÛÙŸùÿ»ÿýûüðÛŸ›ÛÚÛðÀ	™ùÿŸý¼ðý©¬                         ð                        ¼¿¿Ÿÿß¿½ýù½»ùð
ŸÿžÿÏž››¼É­¼
œ­¿½ûÛÛŸšÙð                                                 ÛýýÿŸ¿ßßŸšÚüŸ	ÿéé¹½ÙéË	­™é		™	©›éßŸŸ©Úßž                          ð                        ­¿¿¿ÿÛûûûß›À	ð™ÉéÚßÝ½ýÛ­›ÚÛùððÛÉŸ°½½½ž½©é¼                         à                       	úßýùÿÿßŸß½ºÐù›ÐðŸé¿ŸŸŸß¿ÛûýûÏŸœ½­›½©ßÛËÛÙÚžÚ  
              
           
                 Ê½ûÛÿûÛûÿ¿ž¹­­¿Ÿù¿ßÿÿÿ¿ß¿ßŸŸùðûÚÛÉðšŸ¹­½©¯©ù©À                    
   à                     š›ß¿ÿÿŸÿýûßŸ›ËÛÛéÿŸýûùý½ýûýûÿý½­ðùÚž›ùßÛÛŸÙšžžœ  
              
    
                       ÿÿ¿ßŸŸÿ½¿Ÿùé½¼½ÿÚý¿½ÿ¿ûûýûÞŸšÛÛÛÐ½¹©ð¹ðù¼½™Ë                        à                    šÛùùëÿûùýûßùéûÙÚÛÛŸ½¿ßûßÛßß¿Ÿ½ÿÿðû¿ËË›ÙùŸžŸž›ÚÚšÐ                        °                    ­ÿßïýùýÿûý¿ŸŸœš½ŸžùßùûßûÿûûßÿÛùùÛùÉ½é©ÛÛÛÛÉ¼œ¼°Ð                   
 
 À                   ß¿ûùûÿÿ¿ŸÛùùùé¹Ù¾ŸŸ¿Ÿýÿ½ý½ýÿ½¿ŸùúÞûÚš›Ûù½ŸžŸ›ËÉ 
               
      °                   Ÿ¿ÿýÿß¿ŸßûýŸŸ›ÚšÙùùéý¿½ÿ¿ÿ¿ŸÚÙðž¹¿½½­½½½½­›ÉàÀ                       à                  
ßß¿ûûïßûùý¾ÿ½ü½ù©ŸŸ¿ÛÛùùÿûÛžŸ™éüý	ËÛ™ùí¿ÛÛÚÜ°œ°¼                  
                     ŸûûýÿßûûßÿûùùùÛ¹ù­¹éùéÿÿûÿÿùß¼»ÚÚ™ŸšŸ½¯»ÛËÙù»ÉëÀÚ                 
     à                 ¿½ÿÿ¿ûßßÿŸŸßŸ¿ûßÛßŸŸŸ½½½½ŸŸúÛÜ¿Ÿž	É	ðºÐ»Ùÿ½ý½¯œš 
                                       ýÿ½ÿýÿ¿ÿ¿ÿûûý½½ù¿›ùÐ½½ùûÚßŸ¹ùùýûùðùð°ð»ÙûÛß›ùùùé­ Ð                     
 à                 ûýÿ¿ûüÿ¿ßŸŸßŸÿÛÿßýûùËÛßÿšÐÚÚß¿ŸßùðŸŸ©©Ð¼Ÿ½¿ý¿ŸŸŸšÐ­­                       °                 ŸŸÛÿýÿûùÿûÿï¿ý½½½¿ŸŸŸ¹ßŸ¼™ý¿ûÛûßÿ¿Ÿž™éœŸß¿Ûý¿Ùí­­­ Ð
                    	 À                 ¿ÿ¿ùÿÿŸÿùÿÛÛÛÛûÿÿÛÿùýžšŸŸ¿ûý½ÿýÿÿßÿŸ	¹é°ùùý¿Ûý¿ùùùù ¼                    
  °                 ý½ÿÿûÿùúÿûÿÿÿÿßÛÛýùÿûùùËÙùý¿ÿùûÿÛùùéððÞÛŸŸ¿ÛÉÛŸŸ¼	                     	 à                 ¿ûùÿÿùþýûý½¿ŸŸ¿ÿý¿ÿ¿ßŸ›ž¹Ï¿ß½¿ßŸýÿŸŸ™éŸý	 ¼¼ËÙùé               
                      	ûßßûý¯½¿üÿÿýÿÿý¿¿ýÿßÿÿýùÚ›ß¿ßÚùþŸ½ü¼°¼¼	ùéËÛÛÛð¼úÚœ¬	                     
 à                ßûûÿß½ÿÿûûùûûÛÛýÿÿ¿ûÿŸŸ™­½ùý¾½ŸùÿÛÛÛÉÉŸœ½½½¿ßŸý	ÛËž                       °                ûßßÛùÿùëßýÿßÿÿÿûßŸýÿßÿûÿÛË›ÛÛÿŸ½¼½­°žœšÐùéðûß¿ýŸ½é ¼Ê  
                     À                 ÿ¿½½­¿ÿÿ¿¾¿ûßŸûß¿ÿÿûùðý½½½¼ðý½­ýûÛÛÚÚ°ð›ËÛÛß½ùûéð¼œ¬À                     ð                ßßÿûÛÿ¿Ÿíýý¿ÿÿßÿßÿŸœÚßžÛËÚÛŸŸÛûß¿ÚÛÉéÉ	éùùÿ›ß¿ùÿŸÛð¼ 	                                        Ÿûÿ½½¿ÿÞÿûûûýûÿ¿ÿ¿¹üÿ¿›ß½ÿùùðûý¿ùí½¼š©ŸŸðùÿûßŸùÿ½ËÀð¬                      Ð                ßŸÿËßÛûûßÿßÿýýÿ½üÜ»ùýÿûßŸÿÞ½½ûýï¿ÛÚÚž›Ûé½¿Ûß¿ùÿ›Ë½½à                                         ÿÿÛÛûÿßß¯ž¿Ÿ¿ûýÿ¿ßŸŸŸŸ¿½¿ÿÛÛÍ¿ŸÛý½½é¹	ééßÛÛÿ½ùÿŸýýéëü°ð                      ð                Ûûÿùÿþ¾¿ßÿßÿÿÿÿéýùùÿûÿÿßß½½þ¼»ÛùÿÚÚÚÀùŸŸ¿¿ÿŸÿ¿ùÿ½¿Ûß                                        ¿¿ßÿ›ÿûßýûÛÿ½½ÿžŸ¿Ÿ¿Ÿ½ý½¿ûßûÿÙùËßý¿Ÿž›éûÛÛÛÿÛý¿ùûÛü¼¾ ¬                      ð                ŸßÿùüŸž½«þÿ½ÿÿ¾ùýùùý½ÿ¿ÿûßûßùëÏ¼¿ùðý©ŸŸÿÿÿÛÿÿý¿½üûÚÙà                                       ûùÿ¿°ùïßŸ½ÿ½ÿý¿ÿÿ¿ûýùûß¿ßùÿý¿ÛßùÿÛ ÚšÚÚùùÿŸÿŸÛËÚÛ¿žŸ¬¼
                      ð                ÿßßýùÛÉ°¾ÿÞ½ÿ¿Ûÿß½¹ùýûÿÿûÿ¿¿ùÿü¿½¿ÚßÛ­«Ûß¿ùÿŸÿ¿ûý¼ùééÛÀ                     
                  ½ûûÿ¼­«ÏßŸ¿ÿ¿ý¯Ûûßÿÿûýûý½ýýÿŸûËÛËý¿ð°ÐÝ½»ÏŸÚÿ½ÿŸšÛžŸž¾	À                     Ð               	ûÿÿùùšœ°¿ÿûßý¿ÛÿßûÛÛß¿ý¿ÿ¿¿Ÿûßÿ½¿ÛÛË ÐºÚÝùëý½ûÐðý­žŸ	ì                       à                ý½ÿÿÿð©í¿ß¿¿úßÿ¿¿ÿ¿ûß¿Ûýùÿùÿ»ßËËý¼ùðÚ­ÛÛ©¿ŸŸûßûÛÚÐùéðš                       °                ¿ÿ½ÿÿ­ š¿Þ¿ßßÍ¯Ÿýý½ý½ûÛÿÛÿŸŸ½ý¿ùûÛÿ½­©Ú¼½ÿùÿÿÿëß­ü	°¼½­¬                       À               ý¿ÿùýðšúßûþûûûÿÿûûÿûûÿÿý¿™éûËÛï­ÿÛÞŸ	éßÿŸžý¿½ðý©¿ÉúÚ                       °               	ÿýÿÿûÞ ©ÿÛßÿÉùùýý½½ÿŸÿûÛÿ¿¿ÿ›éû¿½°žž¹ðûÙûÏþð½ÉÉð¿¼                        ð                ¹ú¿ÿÿ­ ðÚÿÿûÛþÿ¿›¿ûûßÿûßü½Ÿ¯ŸŸýðßùýùïÚÐÚÙ¯žœ©ü°¼½ðËÀ                       à               	ÿŸßý¿ß  ¿žÿ¿ïÉ½éíùÿßûÛßúÛÛéÿÿûß¿ž 
Ûœ àà œ©Àð›ð                                       ÐŸ¿¿ü° ðÿ½ÿÛûÏ¿¹¯ý¿½þü½¼¼™ë	¹ûÚœûý  ¼Ùý°Ï	 éÊœ ½	ì                        à                ûðŸý¿¾¿ÿûÿ¿ßßÛÚÛß½¿ÚŸŸ™þÞŸéëýÿÐšÚÛé¿ÿ°ÊÞ  ­	©ÊÉÊ™ à                      ð               ßŸ	¾ÐÐà ý¾ß¿þŸ¿¯šùÿü¼ ¼°ð››ÚÛß¿ûÿùùéÿÿÿÚ     Ú°œ¬	        	               °                ûü¼	©©  Úý¾Ð	ëßŸýšÐ À©
ßÏ­ûß¿ÛÞŸ½­ûÿÀí­
ÀšÚ ËËË        	              À                ¿Ë šÐ   ­¯Ÿ­ÿ½éÿíý°œ­ Úž›ž¼¿Ÿÿß¿ûùí¿ÿÛ¼­	­¬œ¼	             
           °                ¼         ûüÿÏ¿éý›ýÿÿà 
Ð	ùüùËßÿ¿¿ý½Ÿ›ÛÛþÚËËÚËÀ©	àšÉÀ                 
 Àð                 š        ËÞ¿ëðùÿ¯éÿÿ  ËÏ›Ë¿Ÿßùÿÿ­ùéðùÿ­¼¼­  ðù        ž          
    À                
À       ½½¯ÞŸÿÚßžùûýý­­¼¼¹í¬Ÿßÿ¿ßù½ù¾Ÿ›ÚœééÀ   	ŸŸœ          
       À
  °                	       	éëÿûÿÚÞ¿ùéžßþúßŸŸžÚ™ûûÛß¿Ÿß¿ý¿Ÿ›À ¼¼ðùéë
      	             Ð  Àð                         Ÿÿüÿž¿ËÏžý¾½¯Ððàðœ¾ŸŸÿ¿ßûûÛÛßŸùð¼¹Ùùé¯Ÿ¿žÉ       Àš          

À  à                        
 ¼ûþýûü¼ðéêÛëÏÚéùð›ß½ùýûùý½ÿ¿¿ùðùùï­­¼šÐÚÚ	é à     
           À   Ð                 	      	Ëÿ¿Ûÿ­»Ëß½ýþÜ¹­ž ðü¹ÿ¿¿½ÿûÿ½ýý¿¿žž™›ÚÛÉ©¿	ð           ¬        
À	à °               
         ÚßïÚßÏÿ¯Þ¿ÿÛüí¬½½¹ÿùýýÿùÿÛÛûûýýùûŸïšÚÚÀž©à                 
	
Ê à               	à        ¼¿ûûÿ¿½½ü½ïÿËÚÛËÉ©ÿùÿ¿ûÛÿÛÿÿÿýûûÿßùùùÿŸŸ›É	 À       
    
      ÊÉ ð                	à       	ËÏÞÛÞÛËÛûÙù­¼¼°½¿ßŸÿ½ùÿÿÛÿŸŸ½ûýý¿½ÿÿÿùþÛ­¬šžž     Ê  
    
       © °                          ¿ûûþûÿ¿¼¼¾žÚÛÛßÛùûÿŸßÿùùÿßÿÿÿÿûÿýÿ½½½ÿžùüÚÛÉéÀ           
      	 àà               
ÐÀ      ­¯ßûßÞÛß½¿½¿½ûÿÿÿßÿÿ¿Ÿÿ¿¿¿ŸÿùÿÿÛûßÿÛùÿž›¿šË       	     
 ¬  
 ð                
        šÛßúß¿ûûÿ¼ÿýÿßÿÿýÿß¿Ÿ¿ßÿŸßßßÿßÿý¿ÿßûÛý¿ËÛíÉí¼½              ¬¬ 	Ê œ 	 ð                	       °ÿ¿éÿßŸûÛÿûÿÛÿûÿ¿ÿÿßùûûûûûÛûÿÿÿûûß­¿Ëß­¿¾žšÊÀ     
            

ÚÀÀ         
     
š       
ÿ½í¿ðûéýÿûßûÿýÿÿÿßûûÿýýýýÿÿÿß¿ùÿýûßß½¿ÛËÛùï°            Ú
    

à     
 
   
   ©­ À      	ËÛÏûýÿÿß¿ûßÿßÿÿ¿ßÿ¿ßýùûûÿ¿½¿ß¿ýÿý¿½ûûßé­ùí	
À             ÐÀ©


ÀðÀð   
     
                ©ëÿžÿ¿Ÿ¿ÿß¿ß¿ùÿÿûßÿÿÿÿýý½ýÿÿ¿ùûûÿßÛùý¯Ÿü½ûðÚÉ           ð   ¬
É  °ð    
           É         ž›ùÿÿÿÿŸÿÿ¿ÿÿýÿÿÿý¿Ÿ½¿¿ûûûßÿÿÿýûûýÿŸÛùûëžŸ©          °À ¬  š ©  ÊÀÀ°
    
  
 
    š         	éíÿðÿùÿÿ½ÿÿÛß¿ûßÿ¿ÿÿÿýùÿßßûý¿ßÿ½ýûùÿ¿ÏŸéüœ              œž °š
à 
 ¬           À¬š        °©ûéÿùÿÿÿÿûßÿÿÿÿÿ¿ßý½½¿¿Ûûûßÿÿ¿Ÿÿ¿¿Ÿðý¹éþ½©            ©À    
°
¬ð    
    
        À       Ùéÿ¿ÿÿŸ½ÿÿûÿ¿ûßÿßÿ¿ÿÿßÛÿßÿÿÿŸÿÿŸßßý¿ÛïŸ›Úœ           ­   Àžž°Êœ  °ð               žš 
 à      
žžÛÛÿÿÿùÿÿýÿßûÛÿ¿Ûß¿¿ÿŸ¿ý¿ŸÿŸÿûûùûÛ½½­éý©             À	©   °Ê ÚÊÀ
  
    
 
   
        °ùûÿÿÛýûÿÿßÿÿÿÿÿùýÿÿßßŸÿßÛÿÿÿÿŸÿßÿýíûÚÛÿ
œ         
É


­­
 
à 
  
À        	©¬    
    šþŸ¿ÿûÿÿûÿûÿ¿ýÿÿÿ¿ûÿûÿÛûÿÿûÛÿÿŸÿŸŸ»œ½½°
           À    à ©Ë à¼ð  
À   
 ð  
 ¬
      ËÛüùÿÿýÿßÿßÿß¿ÿŸÿÿýûßÛÿÿÿ½ÿÿùÿÿ¿ÿûÝûËÚß
             ËÀàÀÀàÊ Ë
ð  À   
    
  
	 	    °ùûÿûßûûÿûÿ¿ÿÿ¿ÿÿýÿÿûýûßýÿÿùÿÿÿýûß¾ŸŸù°ÐÉ            
  ©   ¬	À°
     À 

 À   
  š
       ­­¿Ÿûÿÿÿÿÿßÿßÿÿ½ûÿý¿ûÿÿ¿ÿ¿ßÿ½ÿûýûÛý°¼ð©              ¬ ÊÐàË ¬ à  
           ©À 
       
ÚŸ¿ßÿÿßýûßÿÿ¿ÿßÿÿÿÿ¿ýÿý¿ß¿ßÿ½ÿ¿ßûùÿšßÛÀ          
œ	
°À°
 À
Úð       
À À     © 	  œ    	©ðý¾¿Ÿÿ¿ÿÿÛÿÿÿûßÿÿýûÿŸÿÿÿÿÿ¿ûÿÛùýÿÛß© œ           
 ÊÉà¬œ à
ð      
       
šÀ°Ú °    ½¯ýÿÿ¿ÿÿûÿÿÿûÿÿÿÿÿýÿÿÿûÿÿÿýÿûÿÿûß¾½ùÐ›               °    Ë  žšÚÐÐ    À  
   
 	Àš
        ùûÿ½ÿÛýÿÿŸýÿÿÿÿý¿ÿ¿ÿŸßùÿÿûýÿùÿŸûßŸ ¬ 
             ÀðÚÀéÊ àÊÀ 
   
         	Ê °        	Éžýùÿÿÿûÿÿÿÿýÿûÿ¿ÿŸý¿ÿ¿ÿÿ½ÿûùÿùÿ½ûý¼ù             š
  
 ¬ž°
àð       
    à  °À   °       ðùûÿÿŸ¿ÿý¿ÿÿÿÿýÿÿÿÿÿÿÿÿÿýÿ½ÿÿùÿ½ÿ½úß           
   Àœž¼¼š ¬ àÊœð      
 À   	 à  °      	ËËÛÿÿýÿ¿ý¿ûÿÿÿÿßÿÿÿÿÿý¿¿ÿÿ¿ÛÿŸûýûÐ	Ùé               
 ð 
À¬š	àš ð           
           ŸŸÿŸ½¿½ÿÿÿÿß¿ÿûûý¿ùÿýÿýÿùÿý¿ÛÿŸÛððë
   	 
   © ð     Ê éà°ÚÀàÀé      
    À   
       
 
  Ùð¾þßÿÿÿûýÿÿý¿ßÿÿý¿ûûûÿùÿùûý¿ùÿ¿ûœ	 
         
   Ð°
 
¬
œ©ð
          À à Ð¼¼œ
        
Éÿ›úÛÛûßÿÿ¿ÿûÿýûÿÿÿßÿŸÿùÿýûý¿ŸÛ¼ù¬  
       À 	
 º
¼ðÊÀð      
  	      

 š	      		°šÐ½¿ýÿÿÿ¿ß½ÿÛûýûßŸ¿ŸûÛÿŸ¿ý¿ýû­	   ž 	   ž
 À é ©ÊÐÀÐ°
Ð¬
°Ð  À 
   ¬     	°¼À        
Ê­¯žý¿½¿Ÿÿÿÿ¿¿ßÿ½ÿÿýÿŸÿÛÿÛŸùëßÐÙÐš   Ð 	 	ÀÀ  
 éÊ   ªÀà
É¬¬               À   
     šÐš		Ë›ëßÿÿùûßýÿÿŸÿûùûùÿ½½½¾ÿŸ©

À     
  
	 ¬°	   žš­
É ðð      à    À   
šÚ­ À       
  ðð½í½¯Ÿùÿÿûÿ½¿ûÛýÿÞŸÛÚý¯Ÿ™é¯žœ	É	
Ð° 
    ¬ž    ¬ é
Ê ð       
       œ 
À °         	žŸŸðÿ½¿ßŸÿùÿí¿ùûùý¿žŸéÿÐðš  ¬Ê À    Ð­
 	  ¼
 éàÊÐÊ	à ¼°ð 
  
     À  
 

Ù©          	 ð©¼½½þý¿ÿžžŸ›ÉýÐŸðùðŸ	­ à  
š 	 

Ê
  Ð éÀÀ­š	  °ðËËÀ               

	
        ­  
É úÝééûÚÛÛùðùùð¼¼°½¯ðÿ	é­úÛË	  	­
À	 ÊÉ É  
À 
À ÀÊÉ ¬  ¬°ð
       à   
	 	
Úüš            žð›žù½¼úÛÉ¬¹ËËÚŸ	ßÚ à     É    É 	  	 éà
É ©¬©
š
Àð          À    À	
É­¬      	¬ 	¬©é­¬¹ ¿œžœ¿	ú ðœ©ð© 	 	      À¬  	 É 	¬ ÀÊÐ°É© É Ð    
         
Ú	¬½°À		     ¬  ¾š	© ðÛŸ ËÉ	ÉŸ	àœ Ð
    	  
   ¼   À  
 ­©       Ê 
        
É
šž
À       É   °É©àÉ°šððð­šÚÛà 	  	Àð 
	É à ° °Àé àÚÀ
Àé	 	 ©
ð
        	à  

	 éé­éÉ
   ¬  ¿é   	ÊÚ¼œ°¼œ°š° Ð 	  
à 
š  
       °
ÊšÊ °à°
ÊÉêÉÊÀð              Êœ Ë ž	¯®œ       þÀž 	
œéËÉ©àË É ËËÊ	  À œ     À  ¬¼ œ Êœ
Ð©  ¼°Ð    
 
  
    

Ëé®œŸ      ¬žš  
 
ÐÚºÚ› ÚÐ°Ê  	À	­   °­ à  
  © ° ¼ª à­
ÀËÊ   
          
   œ  É¯Ê  
  ¼	©ü
  œ¼­šÚÛ	À é    
  
œ         	ÀÊÀàšÀ	ÀÀ¬°°©Ë úð             œ¬©àœ¾°éÀð½­     
ËËÀ   		©­	àÚ
šÐÊ	 	É
    	 šœ©¬
   œ

	
à à¼ ÀàÊÀ¬ž ð     
    
     š  Ë°þ­    	žž 	
àš­         	  © ¬  	  
œ¼ Àà
Úàš©Ê ðÐ
        
    


 ¼°ð	ððÚ    	éà ÊÀ		àð­¬
  Ð
Ð      	  	    Ê 
 
 ž
©¬ éÀð	ê          
     ÐœÊ ð¯ž¾Ð©
  
 °¬ Úž	 àÐ	       	
ÀÐÚ	©
À 
   œ Ðà À¬ Êžœ©¬
 é	ð 
  
         ¬©àÀšÚÚ Ð½éÉ­   ©î	¼¬		àð  °°      š
    É  À  

 à©
Ë
Éàà¼ 
ÀËÉË©ààð              À
š	¬¾š
 
Ðš ©à °à©Ë°          

		
Àà 
	 ÊÉ¬	 œž Ú© ª©Ê Ð        
   
	 
ÐÀ ÚÐšÐéËÉ¬¬  
Ê	
Ð	éÀà°           ð  
 Ðœ ©  
   ° Êž  ¾ ðÊÉÉéÊ °           À 
 ð °à©¯©à­šð
É À¼ à  ž  Àž            Ð   ©    
 
œ°àÀž ©

©ÊËà         À   œ   À žÛÊ	­É¬ 
  à 	Éà	­ 	
           š    À ©  ¬ À

À¬ é¬ ËÊÉàÉÀ­ ð 
             ¼
ž ­­¼
Ð¬šž
	  ž  šÀþ
 ž            ÀÚ   š © ­    À
š°­ 
ÚË© 

	àÐ            
À° 	 	 Ÿ
Ðé­©Ë¬ ÊÊ  
  Àš	ÉÊ                   	À  © À ¼  À

¼ ð¼
ËÀÊÐéÊÉà°   
        	  À¬ à àà­ªÚÚ Ð°Ê 	    š	¬ž
	À         	 š  Ê  žœ © ¬   ©
 é Ú œ
À­  ¼
©
	àà             à °  ÐšÚœ¼½ Ë
Ë    À  ËéÀ             °š	  œ   ¼		©à  À°é
Ð­ é ¯	éËÊÉÊœð 
         
  à 
š à  Ú ð°à¬É  
 
 
          
  ššÊ š 
š 	 
  
À¬
Ú é à
 © ¬ Ð         
     °À  
©	­¬ ð 
    œ   Ð        	ššÊ 
ÀÐ
  Àà¼
¼šË¬¬àžœ¼¼	à°                 °	À°ÚÀúÊÐš ° Ú     °            °éš
	É
° °Ê
  
 ¬Ë šà°ð

À° Ê	à                
À   À º©î ÀÊ  
     ðÐ         À¼­žšÉ  	Ê
À¬°	 Àà
ÐÊÐà¬¼¬°ÊšÀ°ËÉ­ð                   Ð    ðšðð°	­     Ê

      šËšÙ©é¬Éà 	
Ê°à¬¬   À
©
Ð
Êœ	¬  °  Ê ð              	 
  œ© °É­

ÊðÀ     	À     ÀÚÀàÐ À À   
 ­ ¬
 Ê    
¬­¬¼¬¼ ¬ËÊÊÐ¼ð                é 
À  ÀºàÀ­ß úÚ
    
	à­  
 š
Úšœšœ	  	  Ë ¬°É¬¬° 
   ©À
 Ú šÐ¼ ¬
À° à                 
À 


žšÉÉ¯

ÚË¬ Ð      ©É 	 À 
  Ê Ë  ¬  	   ©°ðð ðà¬
éé žð          
     
 
   Ð é ¬ Ððé¬ ÚÚ
ÀÊ   

Úž­­©©É   	 ÊÀšÀÚÊ   
  éª 
œÀ°ê
 Ê ð                      
žšž
 šÚÚ©É
   
  	 ¼­¬°àÐ  à  àœ°ž
 	©àš À  °	 ÉÀ­ àðà¬Ðàžð                     
 
À­àœ­¬	 Ú
   ¬ À
	ÀšÉ	 ËË	   àœ	
À ¬
À     
 

ÉÉ 

é  à         
       
        ¾
ÊÉ¬°ÐðÐà   
	Ê
À
	 Ë  À­ à Ð©  À   
 É¬¬à¬œ°ðË°Êð                          é	Àðœ°À    ©   Ð© Ê ð 	

  àð¬© à
    À  É Ë	
À
 À
© Êð        
                  ¬¯ à°šÐà  à   
É Ðà ©    
ÀÚ É à 	 
    
  ¬  Ë é­¬ ­ž
Ðð Ê                           Úž	ëé¬
à 	  É 
À
É àÐéÀš À° ¼ Ê 
 
   
  ¬é 	ÊÊ ¼
 é
¬à                            àéà žÐàÀ     à	À
ð     °  

 	À  Ê    
	 Ê­¬¬ ÚÉàË­
ú                            žšÚ	à šÊ¬œ °  à à¬œ  à ©
Éà ¼¬  °Ê  À
      Ðà	é
Ð
Ú  °
ÀàÐ     
                      Ð	
 ÞÊÐ ¼¼° ð ¬    Ð	
 À  	¬ À   
      šÐ¬
À ð é 
¼š °                              éË àð­©
ÉÊÚ  ¼
Ëš

 ¬	 ¬ ©           	¬
À¼šœ
žà
 éÊ ¬žà 
       
                   É ¬
œ¬Ê¼ž°	éé ¬
Ð 

šÀ­	¬ š   À   
    ¬°šÀ°ÊÀàðÀà
Éé
¬š ð   
                         
 šÐ š œÊ	Ï   ¬¼	­      À°¬      
    
  ÊÀ¼
	 
	  
ÀðÐ                              À¬
ÚÀðž
ž¬ 	­© ­ 	
šš  
Àð À    
     
    ©
ÀðÚÀàéààÊÀð
¼š °                                ¼ š à	é

ÚÀ ËÀ¬ À

 °é                
ž­   
© ðË ¬à         
                   
   ËÊ	ÀÐ šÚ ¼  É      
   
Ê          
   ° ¬ ¬¼¬
¬
ð     
                        
  é¬ ¼	à ®À 	  àÚ	 
À   Ê      
         œ	 Ë
Ð
	 °É šÐàÐ                                À®œ ¬   ÐÐ

 ààà                         àé ¬ À éÊÊÀà
Àà
 °                               
 Ð
 
 À    
  
                     	 ÊÐ š  ° ¼ ­à       
                        
 šÊ
ÀÀ     ­                
    
 
   
Ê¬ž©¬
œ¬
­
 ð         
                            
   
  à                            Àœ¬š °Ê	à   šÉ 
ÉàÐ                                     
      À  
                             

ž­¬œ¬
Éà
                                              
     
                        éÉÀ   	   
œ
	¬žð               
                   
         
                
 
           à

žž¬¬¬žœ ¼¬
 ð                                                
        
   
               ðÀ  °š ©
š 
 šÉàÐ         
                                             
          
        
 
šÊÊÀàÚÀààààéé¬                    
                                          
                	àÀ  š	 		   žð                                                                         
  à	¬¬­¬­¬¬¬¼­   ð                                                                    
 
      à	
 ©   
  
 ËÀÐÐ                                                
    
        
             š àéÊÀààÚÊÊÐÚÚÀÚ 

         
                                                   
    
         
ÀÚ  š	   °    ©Àð                                                                            
­¬ž¬­¼¬Ê
ð                                                                            	
 
  
 
			 	  Ð                                                                             ¬­¬¼­¬­¬¼­¬¬¬¬­¬­¬ ð                                                                                                                ­þ, 'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.', 2, 'http://accweb/emmployees/peacock.bmp'),
	(5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '1955-03-04 00:00:00.000', '1993-10-17 00:00:00.000', '14 Garrett Hill', 'London', NULL, 'SW1 8JR', 'UK', '(71) 555-4848', '3453', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          T  BM T      v   (   À   ß          S  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ                                               À      
           é    É                                                                                                                                                                         
 
              é                                                                          À          	        À                                                                          
                                                                                                                À                                                                                        À                                                                           É        Ê                                                                                          ¬        
  àà                                                                       	 Ê        °°                                                                        À           Ê ð          ÊÊ                                                                      œ           
Êœ  	                                                                                     À      Ê                                                                                       	      é                          	                                           É                   œà                                                                        À         °Ð       ê                          °                                     °          À   ÀÐ	Ë	      Þ                                                                       Ð      ÊžŸœ¼°Ð       ð                         
                                                 ¹ÀÐ©É­ËšÐ°      ï©                                                              À©         é¹­œ°Û¼        À                         à                                            œ©šÐÚšÙ­ðË	      À                          ©      
                                    	 Ü°ù©©ÉÉ­œ       à                                
                                      ÀÉ­œœ¼¼šœ¹Ë      	                         °      
                         à         
ššÐð¹©©		­ùœ¼™Ê     ÀÀ                        °
      
  °                      
 	    À    °ÐÙ©œžžœËÛéœ	                              À	                              	       À 		©¬œ©°°		¼ž›       Ð                    	©  	
                                         
ÚÚÛšùàðÙ¿­¬                                  °	                       
Ë 	       ­	 Úœ ¹é ™ÛÀÛÛÉ     ÚÐ                 
   Ë  	     
 	  ©                É         © 
ÚÚœ¹©¼ °ÙëÉùí­°   ¬                	
  °Ú 
 Ë 

         À                   
        				©	
œšËšÛÏ      Ð            
°À 	    ÐðÉé	
        °              °       	¼°¼¼œ› ðÐšÐ	É¼ŸÍ¾›	    í            ­¬	 	 
Ë  à
 ëê
Ê  
  	   é  ë                       œšš É	©Ð
Ð	ð¼
Ú›Éü°                ïß½­ 
 š  š š žù¬  
	     ¬°             Ê        ©ð°ð	ÚšÉ ©Ð©àÙ­éþŸÉ             žÿÿëË 	
 	 š   À 
ï	          Ë  °           	       ž  œ	É	 œ©É ù©À™ððÐž¼»    Ê       ïïÿÿ½ðÚ  	
  		   Þ¼š ° 
     þ 
                	   ð¼°°°šÙ ¹ ©ð šÙ©éùíé   ©      ÿÿÿþýï °é  © 	 	   ë  	©  	    ð  à                šž  		ÉÉ É­©ÊÐ ùŸ ÚÐúÛÞ   À     ïÿÿÿÿûùý ©     À
 	à     Úà  ©     ì¼           		    ÀÀ 	°°Ú	À°š	 Éð  °Ú­Ÿ         ÿÿÿÿÿÿÿïÉ  	 	      àšÊ	      û  °         àà    š  žœš	é 	ÉÉ©ËËÍ¿Ú   à  þÿÿÿÿÿÿïÿùúš	©À  
	 	À  
	 ©¬°      ïé  
         	      ­©é©©É¬ É	 šÐ àžœ¼¼°í­°    ÏÿÿÿïÿÿÿÿÿíúÀÐ  	 
  Ð     ÿêÀ	     ÿ          
Ú    à ™©		
©› °	 	À	©	 ððžßžßÀ    ïÿÿÿÿÿÿÿþÿÿûý»
   
  °   
  
ÊÛ

    Àÿë            Àà    ©ËÉÉ¬šÉ 	
°š¼ ð		 ù©°  ÿÿÿÿÿÿïÿÿÿÿÿëÉÐ©  
     	   	      ïù °         ©      ¹	°š™°šðÉ     šÀ	àðüý­üù  ÿÿÿÿÿÿÿÿÿÿïßŸú  	 œ  Ðà 
  
 
š      Îÿé   ©       Ë     
ËÐðÉ	š© 	  
 	  
Ú	šžž  Êïÿÿÿÿÿïÿÿÿÿÿëï Ðš	      

   
    	   ý°   
        ð    	¹›¼¬°À¼     Ðéííééð  ÿÿÿÿÿÿÿÿÿÿÿÿÿÛù   	 	
         	  À 	   
	 Ð°      ¬    ÊÛËÀ¼™ ™ 	©		 	  	     © °ü¼û  Ïÿÿÿÿÿÿÿÿÿÿÿÿÿ­­		Ê	  
	à	
	  

  
 
      
       Þ   ›™™	  
 	 	      	 žÞŸ	  ïÿÿÿÿÿÿÿÿÿÿÿï¿ÿ°°    
©À	
  
š    ©                 é    é½ššÙ	À 	        		©­	®žžÿÿÿÿÿÿÿþÿÿÿÿÿí¹ËÉ  	 	   ° 	
       Ðš  
  ë  ë     ¼	À 	Ÿ	¹É™	 š °              
Ùéé ÿÿÿÿÿÿÿÿÿÿÿÿÿÿï© ° © 	  °À

 šš 
         Êð°ÿù    
Ëà  ™ùËžšš	 		 	  	          ­žÎÿÿÿÿÿÿÿÿÿÿÿÿÿûý¼°   É à
 °	      	 	 é	 °
	¾ ÿû    Àð  ù¿›™			             	 
Ðí ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÚÛ š É©
		 	 
	
   	  šÊ     	  ïÿÿð   éà ¹éÚÚÚšœ°  	              ¼ž›ïÿÿÿÿÿÿÿïÿÿÿÿþûëðË °  š   ¼  
		
  À  ðì½­ ©  
ÿÿÿÿ°  àð	 Êý½¹™	É	© °                 	¬ éìþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼›      ° ° 

   ©   °Ê    
 ÿÿÿÿÿù   ŸŸ›ËÚš°Û 			   	           	ÀšŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿýûé¹	© š  	        é   ©à¬
	  ïÿÿÿÿÿÿ 
ð ùûù¹©ÐÐ 	  
			            ©ÀÚÌÿÿÿÿÿÿÿÿÿÿÿÿÿÿûü¼   ©      ©    
 É
œ© °   ÿÿÿÿÿÿÿ° ÿ½Ÿ	Ù©	 š          	  	 ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿËÐ°Ð		     	 
   
À
Þú	à°ÿÿÿÿÿÿÿÿù  ÏŸŸ¹ð¼šÐœ ©      	©	 © À­ÿÿÿÿÿÿÿÿþÿÿÿÿÿûû©     
 š	 	 ž  
	     °  íð ÿÿÿÿÿÿÿÿÿÿ°Ð Ÿÿ½½½›		°	 š		   	 	À	  Ú 	©À °Ïÿÿÿÿÿÿÿÿÿÿÿÿþýí­¼°°	   ©    
 	© ©©
 ÿÿÿÿÿÿÿÿÿÿÿÿù  ï¿ÛÛ	­ž	   		  Ð 		ÉÀœ©é­¯ÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÚ	    
 
 	 œ  	 Ð 
Ê 
œ ¬œ¾ÿÿÿïÿÿÿÿÿÿÿûÀÿý»ËÛÐ©	 ©		  	 	©	©é	šÐ°©Êœ À
Þÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼¼š °°É © ž	  
 œ  à¼š
Ëßÿûÿÿÿÿÿÿÿÿÿ¼ ÿûý¹	©šË   		é©©¼°É	ž	ËËÉÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ    Ê 
 
	 ž	à

œ   ° ž

ëï¼ÿÿÿÿÿÿÿÿ©ÿÿ›ß½ž™	 		É		
Ù	¹­ËÐÛ°ð¹þœ¼Ð¼ ÿÿÿÿÿÿÿþÿÿÿÿÿûïðš			É	 	   Éš
œ	  
 ðÚ  Ëÿÿÿÿÿùú ÿÛý¹Ë		
 		©™
Úžœ™ù½›ÞëÚšÉïÿÿÿÿÿÿÿÿÿÿÿÿ¯Û©
    © 
	
©   
À š ©Ëú¼°°žœ­

    ¼ÿ¿Û½¹ž™š°œ½™ÉÚÐ½	°ÛùËÞ½ì¼šÚÿÿÿÿÿÿÿÿÿÿÿÿýºÛ		©	©     ©ÀÉ 

	é©
 
ë  
  	 	 ÿý¿Úž™

 	¹ËËšÚ›Ð½½šÛË¼ÿÚÛËÉ¬ÿÿÿÿÿÿÿÿÿÿÿÿûý 	    Ðš šÊ¬à   
ü°àù ÿË  
š úÿ¿½½¹Ð		 ž
™¼™­½©	ÉšÐÐðý­ð¼°šÏÿÿÿÿÿïÿÿÿÿÿÿ¯Û š°
   	
   °°
  ­	àš ÏÿÿûË  ÊšË  ÿÿß½¼¹œ	
œ¹©š¼›ž››½½½¹©éŸŸŸúßÚÚÐžÿÿÿÿÿÿÿÿÿÿÿíù­©
    
		 ž
	 
	ÀðÉ	  ¯é¬ÿÿÿÿÿÿÿ¹ÐÚ   ÿ½»Û	
©Û	ùÉ	ÙššÛÉ¼Ÿ™ééí­ðÿÉ	éÿÿÿÿÿÿÿÿÿÿÿûúÐ 			 
  	


	Êš °à	©À¾ Ëïÿÿÿÿÿÿï ÿÿý¹ÛË		
	
œ™°Û	ð¹ù­¹ùÙ	°ÙùïŸŸŸžŸéí°ðšÏÿÿÿÿÿÿÿÿÿÿÿŸ
Ð©   	 
Ð 

	 ÊïÚ šÚÿÿÿúÚÿù  ûùûÚÚ™À™	ð½½	™šŸÛž½ËËÐßžÛžšÿÿÿÿÿÿÿÿÿÿ¿éðÐ	 œš     	
ž À° Êœ ¼¼¿ÿÿÿûÀ  ËÉ©Ïÿð  ÿÿý½¼°ð	 ›¼™		½¹­¹Ÿ ÐÚ™ùŸ¯ðùÉð¬ßÿÿÿþÿÿÿÿÿÿ¿ 	   œššž	
 š©ÊŸËËÿïÿÿÿÿÿþ¼þžž¿ý© ÿ½¹©		 ¹ ËžšŸ	Ùœš	 °Ùí½éü½Ðð› Ùïÿÿÿÿÿÿÿÿÿðð¼
š

  ¬
		
ÐšššÊ žýïÿÿÿÿÿÿÿÿÿÿûÏûÚ  ÿûýð°	™		ÙÛ šÐ°›É¼»Ëù¯­­ žÿÿÿÿÿÿÿÿÿÿÿ  œ
					 Ê
À °ÉÀœ°ÚÉ¯ÿÿÿÿÿÿÿÿÿÿ½ÿœÿù ÿß»É		 ©Ë©é­©¼°°¹	ÙÐÙ  É©Éé¼½ÛÐüÛÐÚœÿÿÿÿÿÿÿÿÿÿ½éÚ	À		      °©š	 °ð­¯Ïïÿÿÿÿÿÿÿÿÿÿùëÿð ûûÛšðš		 Ù	œ¹©	  °ÛÚðÿŸ­©éé¼ðžÿÿÿÿÿÿÿÿùëš š
 ©			  œ	
š ðÐðÿÿÿÿÿÿÿÿÿÿÿÿëßÿ  ÿß¹ÀÚÛ	©šššžšš›œ™©			  		­­ŸùðÛžœšÉÏÿÿÿÿÿÿÿÿÿùé	    	 ðÊ	š	 úÞÿÿÿÿÿÿÿÿÿÿÿûßšË ÿùð›		  Ð 	É™™À›Ðœ ÉßýžŸùéžœ¼ÿÿÿÿÿÿÿÿ¿ ° 
©	© é	 
œ
¬°ðïÿÿÿÿÿÿÿÿÿÿßþûÞù  ÿ¿Ÿ	¼°Ð™¼	
°à°Û™É	©	Ðúúýù­žœ°©éËïÿÿÿÿÿÿÿÿÿ°	à©    °  ž
Ð
œœ	
	À	ïÿÿÿÿÿÿÿÿÿÿÿúÛÐ° ÿý©¼™™© 	™™Ù°¹ùÛ	œ½©ŸÿŸÛÞÛ	žž½ÿÿÿÿÿÿÿÿ½¯ 	  	  šÐ 		é
	¬¼œ°ðþÿÿÿÿÿÿÿÿÿÿÿÿÿžžœ  û›™É
Ù	 š	©éé›É	©ËÛ›ËÛßžŸ¼ý¼»¼¼°éËÐÿÿÿÿÿÿÿÿûÏÊ©  	 	à é  É¬
 ùïÿÿÿÿÿÿÿÿÿÿÿÿûÚ	  ÿùÊš™  œš™›É½½Ÿ™	ÉœŸœ°ÛÞÛðÿ­	ðÉ›ÊÚÞÿÿÿÿÿÿÿÿºž	 © 	 	©°œšéÀÐðßÿÿÿÿÿÿÿÿÿÿÿÿü½°	 ûÛ½™ùé°¹	©		Ê›	½	š™éÛ©ðùÛí½ýÿŸéðŸž­¼¼¹ÿÿÿÿÿÿÿÿý© 	
œ© Àš  À 
 š
© ð¾ÿÿÿÿÿÿÿÿÿÿÿÿ¿ðð ÿÚž™ÉÉ¹ÐÛËÛÙÛ™©Ë	­ŸÏ­éù©­©ÚÛÛÏïÿÿÿÿÿÿÿœ°© 	© œ
š		­ Éœ ðýïÿÿÿÿÿÿÿÿÿÿÿÿÿÿ  Ïù­½™Ú›	°ž°			©™	¼¹  			ÊßŸŸÊ©½½­¬¼°ÿÿÿÿÿÿÿùûÀ ° 	
	À
À   éÿÿÿÿÿÿÿÿÿÿÿÿÿ½½é  ûÚšÚÙ­	°°		­	°œ¹­¼™		  ™   		À Ð™ Úœ¼ŸÛÏ	ïÿÿÿÿÿÿí­  °Ë	
	 ÀÐšÚšÀéÀðž ùïÿÿÿÿÿÿÿÿÿÿÿÿÿëÿ ûß¹­›ÐÐ›Ë	 °		   œ
Ð¼œ
  šŸ©ŸŸžÿÿÿÿÿÿ¿šš 	 
 š°
  šÀ© éŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿ™é Ï¼¹û›É©¹ÉÚ™Ú›	 		ÉÉ™	©œžš  Ð	ÐððùéðýÿÿÿÿÿûùéÀ šÀ° À 	É	 œ	àïÿÿÿÿÿÿÿÿÿÿÿÿÿùï		 ½©Û¼›
š	©É©    		°°š›ŸŸÙé½­	°¿ŸžÛÏÿÿÿÿÿÿÿË	
 
	©°°ž

  
¼žÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°¾¹ ¯ùù¼™½	¼™©™	 		¼°›ÛÙÐ™	é¯ŸËÛ­	É¹ÚÚß­¼ýÿÿÿÿÿûûÚÐ©   
	Ðœšž
šžÿÿÿÿÿÿÿÿÿÿÿÿÿÿý™ý	œ›ËÚÛÚÛÐ¹ž™éž    œ™É	©©éœùðý°©ðžÚùý­ðùÿÿÿÿÿÿÿ­­ © š©	 
  	Àðïÿÿÿÿÿÿÿÿÿÿÿÿÿÿûù¹¹	ý½½°¿›À¹¹	
ž™™›œÐËËÚßËí	é½žžÛí¼½ÿÿÿÿÿÿÛ°œ©©©	 
¬ 	É©© ðÎžšßÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÛÛÐœûÛÚÛÙü½›Ðù©	À	ÐšÐ­	  	Ðœ½­¼¹é¬¹°™í¯ŸžÛËÛÿÿÿÿÿûûÉ©     	©¬  Ê	 Ð	© Þžÿÿÿÿÿÿÿÿÿÿÿÿÿÿý½¹›Ûž½½¾›	©©žœ°š	©			 ­­­žËÞ›ÐÉï›ÐÚý¾ÞŸýÿÿÿÿÿË­ ›
žÐ	 	  	ðš
ÚÀÐÚ
ßïÿÿÿÿÿÿÿÿÿÿÿÿûûŸŸ™Ÿÿ½¹éùùùÐÚ™¹¹	©		­Úž™©  ÚÛÚ ü¹	ðûýËùéÿÿÿÿÿÿ½º°œ	
À œ  à¬ Ð Ðš
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹ùùÏ½ûÚŸŸ™ðÐ œž™	 Ð Éé­­ðÙ	 ùŸœžýýßùÿÿÿÿÿÿ	°© ° œ


š é àÐððûßÿÿÿÿÿÿÿÿÿÿÿÿûÛŸŸ¹ûß½½ùùûÙùË	¹ù 
°ÚÐ™ 	°Ü¼½œ©ËœúÛûÚÚÿŸïÿÿÿûšž 	À
 ©É œ Ê	 Ðš ðÞÿÿÿÿÿÿÿÿÿÿÿÿÿ½½¹ÛßûÛË›Úù©™ðÐ™	 		É		 Ð ÚÐ¼©É›¼Ðý½­ûÿÿÿÿÿü½	ËÊš©À	  ð©	
š ð¾ïÿÿÿÿÿÿÿÿÿÿÿû©ùûÛ›ß¿ùùðùßŸœ°››	 ð 	àš°Û		©		
Ü½­ÙÚ™	¹Ééûý¾ÿÛÏðßÿÿÿÿ¿  	

°  
É	šË­¿ÿÿÿÿÿÿÿÿÿÿÿùÙÙ½½ÿý¿ŸŸ¹ù¹ŸÐÛ™	 °™		 ÐÛ	ÊÐ¹ÛÍûÏœ¾ù	ÿÿÿÿûý¼©é ° 
 °
 àéúÞÿÿÿÿÿÿÿÿÿÿÿÿ›»ù›ÿûùéùûšÙéù›Ê	 œ°Ÿ™		ÐðùœðùÐ™ÉÍ­ûíùûýŸ½ïÿÿÿÿË šÐ	  ©É 
Ë	 ðœ­
­ïÿÿÿÿÿÿÿÿÿÿÿù½›ÿÿÿŸŸŸ½ùù½¹šÐ¹™	°	©É 	 	©¹Ð¹žÛ™	 š›ÛýùÿÏ­ùßÿÿÿÿ½Ÿ °©°°°œ©	   š	É ÊÐ	àšÐðúÿÿÿÿÿÿÿÿÿÿÿÿ¹		ûÙÿÿùùðÛÿŸÚÙ¹É©Ð		 		™		œÚžšÛý­ž©éýŸÿùý°ûÿÿÿÿ¿¾°°	À 	© àð° Ë	
Ú	à­­ïÿÿÿÿÿÿÿÿÿÿÿÛÛÛÿùÿŸ½¹ûÛŸ›Ù¹Ù©°° °ÚÛŸ°ùÿßßß¹		ŸÿŸßžÚßùÏÿÿÿÿù¼œ°°ð°°   °
É žÚž¾ÿÿÿÿÿÿÿÿÿÿÿû¹		ÿÿùý¿Ûßùùù½°Ù©™ÉÛ¹½½»½½¿ÿûÐÚ™ð½ÿýÿûí¿Ÿ¿ÿÿÿÿ›Êš		À 

 		­ 	À	É ­ ÛÏÿÿÿÿÿÿÿÿÿÿÿù	™ßÿÿ¿›ß¿ùŸŸ›ÐÛ½Ÿ		™ 		ÛÙùÛûÛßýÿýû™¬»ŸÛßÿßßÛÞžûßÿÿÿûþ¹ š
		  ž ©   žÚàðÿÿÿÿÿÿÿÿÿÿÿûœ¼°Ÿÿÿßÿ½ùÿ½ùù»›	ÛÚšš™½Ÿ½¹½½ÿýÿù©™ÐÚßýÿûÿ½½¹ýÿÿÿþ›ËÛ	É 
À œ° œœœ ðàž­ÿÿÿÿÿÿÿÿÿÿÿù›™™		ÿÿÿ¿ŸÛÿŸÛý¹Ý»Ùù©™Ð
	ÉÛÐ½ŸŸ›ÛÛßÿý½©œ¼½½¿ßÿÿÞßïûŸÿÿÿûÿš Ëššž
°
  	¬

 	àðÿïÿÿÿÿÿÿÿÿÿÿ¹ÉÛ	Ÿÿÿýÿ½ùù¿›ß›››É©š™›	©¹Ûùù½­ýÿÛÛÐÛŸŸŸßÿÿßûý¹ÛùÏÿÿÿÿð¼°  			  		¬	É
ðÿÿÿÿÿÿÿÿÿÿÿ™Ÿ¹	½ÿÿûÛÛÿ¿ùý¹ùù½šÙ¹œÐ™ÐÛœŸŸ™ÛŸÿÿí½¿ÛÛÏýýÿýý¿Þ½ûÿÿÿÿŸ	­
Úžš
 ž  œ
 °	à ððþÿÿÿÿÿÿÿÿÿÿûù	ÛÐ™¿ÿÿÿÿÿŸŸÛŸÛŸŸ›Ù½ž›¹©Ë›œ¹ùùù½ýýý½­¹ðý½ûÿß¿ÿÚùéÿ¼ÿÿÿ¿úðš	 	É
	 
 šÀððžÊžŸÿÿÿÿÿÿÿÿÿÿÿ™Ÿ¹	 œ½ÿÿÿÿùÿŸ½ù½ùù½›Ù©œš™¹ÉÛ½¹ÛÛŸÿ¿ÿÛëÞÛÛÛßßÿßßÿßŸù™ÿÿÿÿœ°šš 	
  	 ÊÀ	 Ê à¹éïïÿÿÿÿÿÿÿÿÿûšÛÙ¹	ÿÿÿÿŸŸùÿŸ›Û››Ùù¹¹Úž½¹ûÛŸ¹ýýýý¿ù½½ýÿÿ½ÿûÙðÿûßÿÿûû É
° 	  
 	
Ë­ÿÿÿÿÿÿÿÿÿÿùÙŸ½šÿÿÿÿÿý½¹ù½›Ý½»½¹ÐÚ™™›ÙÉŸÙÛûßÿÿÿýÿŸËÞŸ½½ÿßßþ¿ßý™ÿÿÿÿðð
œ   
 œÚ  ššÚÐüÿÿÿÿÿÿÿÿÿÿûùû	 ›ÿÿÿÿ¿ÿÛŸÛÛ›ÙÙ¹™Ë›¼½œ»Ÿ¹¿ŸŸÛßÿŸÚÛùùðßÿŸÿ½½žÿûÚßÿÿÿŸœ  °  
 Ð°¬œ¬©­¯ÿÿÿÿÿÿÿÿÿÿù™½¹¹	Ïÿÿÿÿý¹½ù¾½¹¹ÛÛ™Ð›	°¹ÙùÛÙ»ÙýÿÿŸÿ½½Ÿ›ÛùùÿŸþÿýÿÿ™ÿÿÿðû©
 	  © 	
À°	
úžÚÞÿÿÿÿÿÿÿÿÿÿ™éûûÙšŸÿÿÿÿÛÿÛ›Ù›™Ÿ°™¼¹ùŸŸŸ›Ù½¿ŸŸÿßýÚÛß­ŸßýÿßÚÚÿùžßÿÿÿðœ°°	É      
Ë
ÐË Ð­ïÿÿÿÿÿÿÿÿÿÿ¹™½¿Ÿ™Éÿÿÿÿÿù½½½½½¹¹­™Ù		™ð»ÛÙù½ÿß½¿½¿	ÛÙùËéÿÿûÿÿŸÿ	ÿÿÿûß©	 Ë

    © Ð©¬¼¯ÿÿÿÿÿÿÿÿÿÿùž™ûÛù¿Ÿÿÿÿÿ½ÿŸ›Û™ÚÙÛ™š›™ù½½­©ù½›ßýÿÞÛÙð°©½ÿŸßßÛßÿŸŸÿÿÿ­«š Ð    ©©ÀÉËÀüþÿÿÿÿÿÿÿÿÿÿ¹	Ÿ¹ÛÙ¹ßÿÿÿÿ¿Û¹ð¹›	Ë™Ð	É™¹½ŸŸ™ýÿÿùù½©	ÉÚÙÏ½ÿ¿ÿÿðüùùÿÿûûÐÉ	

 
    ÀœÀ °°Û¯ÿÿÿÿÿÿÿÿÿÿùûý»Ÿ¿ÿÿÿÛý»Û›ÙùÙ¹Ëšœ››ËÙ¹ŸŸ›ÿŸ©Ð	©
ÛÏý¼ù Ÿ°þÿÿÿéš œ     ° é­ž ðýÿÿÿÿÿÿÿÿÿÿ»™	Ÿ›ùð ÿÿÿûý½›Ð°°ÚÉ	™É™¹ùù¹ßßûÙ	šÐœž­ùûÿÿÿ°íÿŸÿÿùùà °¬  	   À­	 
šÉí­®ÿÿÿÿÿÿÿÿÿÿù	­›Û››Ÿ	 ÿ½ý¿›Ð¹¹			É	 œ °žŸŸÛŸÿß¼½ 	©	ÚÞÞŸßŸÉÿùÿÿ¿ëžž	É	© 
    	 
 ðßÿÿÿÿÿÿÿÿÿÿÿ™Ù­½½ûÙ 	ßÿÿ»ùû›œš°š				ÉŸ™ù½½ÿù™  ¼½­½½ðÿÿ°éÿÿÿÿÿÿ›É	
 
 	   
  ¬¼š
	©®ž¾ÿÿÿÿÿÿÿÿÿÿûù¹šËïÿÿßÛÙÉË™™	­	
  		¿›Ûßù°ð				éÉÊÛËí­ûÏ¿ÿÿÿÿûü© ©É     ° 	¬žËÉ¬ÿÿÿÿÿÿÿÿÿÿÿÿ™	ÛŸŸ Ð ßÿÿû¹»›¼šš™				 ùÉ½½½ÿÙ     š¼šÚýÿ°ïÛßÿÿÿý©°É À      
 ¬© š	 ðù©ïÿÿÿÿÿÿÿÿÿÿû›Ý½¹ùûý½œ	›½	Ú	 °  	ŸŸŸŸûûšÛÐ½›É
ÛÙëíùïÿÿÿÿÿ¿ðð°Ú°    	©	ÀÚÉ­Þÿÿÿÿÿÿÿÿÿÿÿÿý»›Ÿ   ÿÿÿûÛ©¹ ›	°	š			É ›ÛÛßßÙ 		   ðÞœ Ëßß°Ïÿÿÿÿÿþ¿	  
À À	   Ð   °°šÀ	¬šÐ¯ÿÿÿÿÿÿÿÿÿÿÿÿû½   Ÿÿùý¹ÙÐ	°Ù   š™éý¹ùÿûÉ     © ¼ûïÀÿÿÿÿÿÿùðé		©     šœ 
	­¬¼ðÿÿÿÿÿÿÿÿÿÿÿÿÿû  ÉÿÿÿûÐ°¹	 	
  ©  	 ›Ÿ½½ù°Û  	   ÊÐ ËÍÿ¹ïÿÿÿÿÿÿ­©    À À©   	À šÚË àžžÿÿÿÿÿÿÿÿÿÿÿÿÿ	  	  ÿÿÿÿ½ŸÐ 	    Þ¹ 	 ½ÙÛßÿ› 	    ¬°	Ï¾ŸðÏÿÿÿÿÿûÛÊÚ°
      
ËÀ ðéïÿÿÿÿÿÿÿÿÿÿÿÿù     ðÿÿŸŸ¹©œ›	     © 	 	
É¹»ùûßœ     	 	½ï ÿÿÿÿÿÿ½ë	  
  	 °  
Ð šË	úßÿÿÿÿÿÿÿÿÿÿÿû 	    ÿÿÿÿŸ°Ð       	 	™­ýŸýû	  	     éü¿Ïÿÿÿÿÿÿ°œ©	É 
    àœ  šÉž	­þÿÿÿÿÿÿÿÿÿÿÿù    	ÉïÿûßùÙ°	       		éù»ùûý½	   	  šËßý©ïÿÿÿÿÿ¼½©   	 	     ©	 	
¬	¬
Ðÿÿÿÿÿÿÿÿÿÿÿÿù     
ŸÿýûûÐð¼½½      		ŸŸŸš
™  	žûùðïÏÿÿÿÿÿÿÚÚœ°°
 	    ¬©É¬	­­ÿÿÿÿÿÿÿÿÿÿÿû 	   Ïÿûýÿ¹				¹ šš	 šÙûý¿ùé
Ê š›ðý¼žù Ïÿÿÿÿÿûé    Ê       œ š   šÊÿÿÿÿÿÿÿÿÿÿÿÿù    	 ÿÿ½ÿ½œ°Ëžœ°™°Ð›	 		ÐšÙÛß›™			
	­­­©éàÞ¾ÿÿÿÿÿ¾é©
À    À°°
À
š ðšÚ		úßÿÿÿÿÿÿÿÿÿÿÿù      ÿÿÿÿ¹ 	©ËË 	 Ÿºù¹ððð  °Ð 	­ù ÎÿÿÿÿÿûÛ Ê
  ° 	     		É 
À	 Ï¯ÿÿÿÿÿÿÿÿÿÿÿû    ©ÿÿ¿ÿÿ› © 					 	 	 ÙŸžŸ™	š      	¬žï ÿÿÿÿÿß­°	 °° 
        ­	 É­ÿÿÿÿÿÿÿÿÿÿÿÿù  	 	 ÿÿýÿŸœ	         ¼½©ééý½°Ð	      
 	íù ÿÿÿÿÿúÚ À°  	 	
    œ°œ
ÀÊšÚÛÿÿÿÿÿÿÿÿÿÿÿÿû      éÿÿÿÿÿ¹         		É		Ÿ›ÛÛÉ©œ	    ÉšÞß° ÿÿÿÿÿ¿Ú© É
    
œ°
 À 
Ðš¾þÿÿÿÿÿÿÿÿÿÿÿÿù     	 ÿÿûÿÿŸ°™	©   	ËÙúÐý½­½ŸŸœ	 ðüÿÿù ÿÿÿÿÿù©Ê 

    	   		Ë	Ë  À©éÉÿÿÿÿÿÿÿÿÿÿÿÿÿù      ÿÿÿÿùù­œ
  ›Éù¼¹¼¿›ËùéðùëéËÊÚßÿÿÿúÿÿÿÿÿþÚ
		 		    	    ÉÉ©À¯ïÿÿÿÿÿÿÿÿÿÿÿÿù     šÀ½ÿÿÿÿûÛÛÙ	Ë	ùéûËÛÛûÏÛýý½¿›ùÿŸŸ½½ÿÿÿÿÿ ÿÿÿÿÿûùË	        
		 ž° Ëßÿÿÿÿÿÿÿÿÿÿÿÿÿ°     ÀÐÿÿ¿ÿý½ûÛÙ¼ù¼½½½¹ù½­½½¿››Ûßßßùÿýÿÿýÿÿÿýé Ïÿÿÿÿÿ¼š  ©  Ð    š 	  Ú à¼ëÿÿÿÿÿÿÿÿÿÿÿÿÿù     š©ÿÿÿÿûû½½¿›ù¼¹¿žŸŸžÛÛÛùùÿßûûûùÿùÿÿýÿÿÿÿ¿° ÿÿÿÿÿÿ­  š É 	    ÉÀ			   šËÞÿÿÿÿÿÿÿÿÿÿÿÿÿ°     	Ê›ÿÛÿÿßŸ›ÛÝ¿ÛßÚÛÛË›Ûùý¿ŸŸ¹ýý½ÿÛßŸÿÿÿÿÿÿßû ÿÿÿÿÿ½« 
À 	
	     
 É©éàž¯ÿÿÿÿÿÿÿÿÿÿÿÿÿù    		 ýÿÿÿÿ¿½¿Ÿ»Û½¹½¹½½½½ùûßÿùÿŸŸÿ½¿ûÿýÿÿÿÿÿÿœÏÿÿÿÿÿÿœ°
°	
       
ÚšÀ 	éßïÿÿÿÿÿÿÿÿÿÿÿÿ°     
ÉËùÿßùùÛùùý¹ÛŸÛŸÛÛßŸŸ½ûÛÛùûÿŸßùýýÿÿÿÿÿýûË ÿÿÿÿûëË ÊÉ   	   ° 	 œÀ É	éà­ÿÿÿÿÿÿÿÿÿÿÿÿÿù     ž	­ÿûÿÿŸ¿ŸŸ›Ûùù½ù¹­¹ûßŸ½½½¿ŸŸûùÿûûÿÿÿÿÿÿí½ ÏÿÿÿÿÿÛœ°	  Ë		  	   
À
 °° à ž®ÿÿÿÿÿÿÿÿÿÿÿÿÿù     	ÀšÛßÿÿ½ŸŸ›ý½ŸŸ›ßŸÛÛÛùùùûÛÙùý½ÿÛýýÿÿÿÿÿÿÿúÐ ÿÿÿÿÿþ°É    
 ©     š À°ð ¯ÿÿÿÿÿÿÿÿÿÿÿÿð      °ùÿûÛùû¹ùù»Ûù¹ý¹ÛŸŸŸŸ¼¿Ÿ½¿½»ß½¿Ÿ¿ÿÿÿÿÿýÿû ÿÿÿÿÿ¿œ°ÉÀ°
À    	  ©Àà ­­®ÿÿÿÿÿÿÿÿÿÿÿÿÿù     °žŸ½ÿÿ¹Ý¿Ÿß›Ûß›Ÿ¹ùùùÿ½ùùùÛýûÛýÿýÿÿÿÿÿÿÿÐÿÿÿÿÿÛË š        Ë  ©	­ ÚÛÿÿÿÿÿÿÿÿÿÿÿÿÿù     À	
Ûùÿ¿ŸŸ»Ùù¹ý¹¹ùùŸŸ›Ûùûù¿ŸŸ½Ÿ½¿Ÿ½¿ýÿÿÿÿÿÿÿ ÿÿÿÿûððš°š       ©	 	
œ ¬
ž
íïÿÿÿÿÿÿÿÿÿÿÿÿû   	à¼¼ŸŸßûùÛ½¿Û›ßÛÛŸùùý½ÛÙÿ½½¿½¿ß½ÿÛÿÿÿÿÿÿÿðð ëÿÿÿÿÿÉ
 À  °       	
 
œœ œžÿÿÿÿÿÿÿÿÿÿÿÿÿù 	   	Éûÿ¿¿ŸŸ½Ÿ›Ÿù¹½½¿ŸŸ›Û½¿ŸûÛÛÛÛÛ¿Û½¿ßÿÿÿÿÿÿù 
Þÿÿÿÿù¼ 		¬  	  °Ð

¯ÿÿÿÿÿÿÿÿÿÿÿÿÿû   	 àžž½ùýýûùÛ¹½ù›ÛÛ›ùù½»Ùùù¹ùùù½½ý¿ßùÿÿÿÿÿÿÿà ÿÿÿÿûËÉ	à	 	
        É	 
	 	Þÿÿÿÿÿÿÿÿÿÿÿÿÿû    ž½ûÿ¿¿½Ÿ¹ßÛŸùý¹ùù¹½¿Ÿ¿Ÿ¿ß½¿ŸÛÛ›Ûùÿÿÿÿÿÿÿÿ™ ùïÿÿÿ¿  °
	     °
  

ÚÊïÿÿÿÿÿÿÿÿÿÿÿÿÿ° Ð   ðÚßŸßßûùû›Ÿ¹ù¹ùûŸŸŸ™ûÛÛÛùûÛùûßùý¿Ÿßÿÿÿÿÿÿð  ïßÿÿÿŸ© À  
 	  À				 Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ    Ë¿ûûûßŸŸ½ùù½¿Û™ùùùûÛùùÛÛÛýŸ½¿ŸŸýÿÿÿÿÿÿÿÿ ûïÿÿûï°© ¬š        š 

 àéàïÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 	   ¿ßŸßßûùùÛ›ÛÛù›ß¹¹ù½½Ÿ½¿½ûÛÿŸùÿÿŸŸÿÿÿÿÿÿû Ûùïÿÿÿù°          ° 				 Þÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°    Ï¿ûûÿ½ŸŸ½½¿½Ÿ½¹ßŸ›ÛÛ½¿ùßŸ½½ù¿ŸŸÿýÿÿÿÿÿÿü  ðßÿÿ¿°
 ­
  
	       
ž
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù   	
œ½ùÿß½ûùùûÛÙûùùû¹ùý½½ùÙ¿¹ùûÛÿßÿý½¿ÿÿÿÿÿÿÛ  ËïÿÿÿðùÐ 	 Ð   	   	  °ÐÐÐ Üïÿÿÿÿÿÿÿÿÿÿÿÿÿÿð	À    ÿûÿÿ½¿Ÿ½¿ŸŸŸŸŸŸ›ÛÙ¿¿Ûß¿Ûý½¿ŸŸÿýÿÿÿÿÿÿ°  ðÿÿÿÿŸ
 Ê 
É       	  À  
 éëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹     žÛÛýÿûÛùùûûù½¹ùùù½¿žŸùù½½½¿ÛÿÛý¿Ÿßÿÿÿÿÿý   þŸÏÿÿùï© À	
 °   	   œ ©	é íïÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
    	©ý¿ÛßÿŸŸ½ŸŸÛÛÛŸ›ÛùùúŸŸùûß½¿Ûýûßûÿÿÿÿÿÿû  ëÿÿÿÿ¹°
	 
À       Ð
 	ÀÀÀ ðšÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû    ºÛÿ½½ûùûùûŸ½¿›ß½ŸŸ½¹ÿŸ½ûÛ½¿Ÿ½ÿßÿÿÿÿÿð  ðßïÿÿÿí­	À š           	 ¼ íþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ À    ½½ûûßŸŸŸŸûÛÛý¹ûùÛûÛßŸùÛ½ÿßùÿß½¿ÿÿÿÿÿ   ïÿÿÿÿ¹é 
° œ©  	     šÚ 
	ÀËïÿÿÿÿÿÿÿÿÿÿÿÿÿÿû       ÚŸ½½¹ûùûý¹ùùÛŸŸŸ¿™ùûûŸ¿ß¹ûŸùûßÿßÿÿÿ½    þÛÿÿÿûÞ        	  	à 		ÉÀ¼ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙ     	­©ÛÛÛÿ½¿Ÿ›ÿŸ¿¹ùù½½¿ŸŸùùûß½ÿŸý¿Ÿÿÿÿüð   ÿÿÿÿÿ©¬šÀ 	é© ©     	   à š ËËïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°	 °   	É­¹éžŸÛùý¹ùùý¿ŸÛÛÛÛÛûß¿Ÿ½ûùù¿ßùý­ÿÿ¹   
Ï¾ÿÿÿ¿ßš    ©         °  ÀÐ°¬ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû à     ÉŸùÛ½Ÿ»ß¿Ÿ›Ÿ¹½¹ùûùÛûÙùûßŸ¿Ûùÿÿÿðù    ûÏÿÿÿÿºÉÉ 

    	   À¼ Ð°
ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù  É   É™ûß¿¹ù½½ùÛÛßŸ½Ÿ¿¿¿½¹ùý¿ŸþŸŸ   ­­ïÿÿÿ¿° ÀÀ        ©  ° 
œž¯ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ       šÙËœ¹ÙûÛÛÛÛŸ½½¹¿ÛûÝ¿ŸÛÛþ¿ÛÙéùðð    žùÿÿÿÿÿúÉ ¬  	       	 © 	
	ÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ       	
œ¹û­Ÿ½­ºÛðùùÿ™¼Ÿ»Ûù­ù½¾¿žŸ	     Ëîÿÿÿÿùù¼° © À     	 	¬  À
	¾ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ° 	    	 		Û	››Ù½ŸŸŸ™ÿÛùÏ½ŸÛ¿Ûûðœ°      üŸÿÿÿÿÿ¾  ©	 	       	 
	 Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù       	 ½°¼¼Ð½¹ð¿°›¹°šÐšÐÚ	Ê      Îûþÿÿÿÿùé Ð 
       	  	À©©ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû  À          			
ÐÚžŸ ¼œ¼œ½°ð	  		      ¿¼ÿÿÿÿÿÿ¾ °ÀÉ        
  À	À Àþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 	       	 
š			ð°°	  	  	       ïÞÿÿÿÿÿþÛéÀ   
     	 	 	À	  	¾ÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿù             		   	   	   	          °ÿÿÿÿÿÿ¿¼š	
Ë            	¬	 éíÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ° À       	  		 	    	 		 	           œëÏÿÿÿÿÿÿýé©
É 
		        š    	 þÿÿÿÿÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿ š            	 	                     ÿþÿÿÿÿÿÿû¿  	           
ÊÚŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿš         	                           ÀðœÿÿÿÿÿÿÿÿÐ° š
À   	  	   š 	 ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù           	                           ÎþÿÿÿÿÿÿÿùëÉÀÀ	           À Ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ                                      ¬ÿÿÿÿÿÿÿÿÿÿþ½
   	           	 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼                                     Ïÿÿÿÿÿÿÿÿÿÿ½º© 
À 
       	 	 °ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÚÉ                                  ÿÿÿÿÿÿÿÿÿÿÿÿÚÐÀ	À	            
Éÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ                                    Ïÿÿÿÿÿÿÿÿÿÿÿû¯ š          	   
ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù                                  ÿÿÿÿÿÿÿÿÿÿÿÿ¼Ù   	          àš Ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþš                                 ïÿÿÿÿÿÿÿÿÿÿÿÿû®šž 
 	     	    
 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÍ                                ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ À   
  	       œ
éïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº                               ÿÿÿÿÿÿÿÿÿÿÿÿÿÿù­    	         žÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿœ                              Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾Ú              	   ©
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð©à                           ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÛœ œ 
Ð     	      ÉÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ À                          ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï¹ 
À    	       	  À ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùé
š	                        Ïÿÿÿÿÿÿÿÿÿþÿÿÿÿÿÿÿ½­©   	            	  üÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúœ­ Ð
                     Ïÿÿÿÿÿÿÿÿÿÿÿ¾ÿÿÿÿÿ¿ÚÐ 	 ¬	          	
   žÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½© š
      À            ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûû à            	   Ð  Ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿žž
	É  É  À        ÞÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀé          	  	  
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý© °¹ Ðàð ËË­© ¼    Ëý¯ÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿû›                  œŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúœ­	¾ŸÚ›Ëïÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿüÿÿÿÿÿ¿û¬	 
 
           	 	 
 àÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½ šššžš«Àùÿÿÿÿÿÿÿÿÿÿþÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿ¿û	             	      žŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÛÀ­©©© Þ½¹©Ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾ÿÿÿÿÿÛÞžš	  	              	  Àÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿû šÚš œàž¹ééÞÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿÿûþ¹©                     ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼	à	
ðÞÛùëÿÿÿÿÿÿÿÿÿÿÿßÿÿÿÿÿÿÿÿÿÿÿÿðÿ¿ÿÿ¿þûž                 	   ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùð	šœœûÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿùûÛÉà 	                 
šËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúž¬© ­©àÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼ÿÿùÿÿ¿°š                    ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½		šœœÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ùÿÿÿÿÿÿÿÿÿÿÿÿûÿÿ½ÿëùééé                      ¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÚÚ	 à ­¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïûïÿÿÿÿÿÿÿÿÿ¿Ï¿ÿ¿½ÿ¿š 	                  ­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹		¬°°œœÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿžÚß¿ÿÿÿÿÿÿÿÿÿß¼ðûíûéé­                       
ß¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþž¬©à©ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿûë­ðûÿÿÿÿÿÿÿÿëûÿý»í¿Ÿš                     ­¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°°š
Úš	 	ÀÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙÊšëïÿÿÿÿÿûýü¿¿ý»Ûé­
                      Ðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½ é  Ðà¼¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½ ©¼¾½ÿÿÿÿÿÿÿûëýúÛü¾›Ú	                      ­­¿ÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý©é  ©é©	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸœ°	 žšÛÿÿÿÿùí½¯Ÿ­»ùé	                       ËÛÞ¿ÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ðšœ	À Ê
Ê
Í¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©é ¼šËí¾¿¿ýÿ¿šý¿ËËžš                    	ËûÛùÿûÿßÿÿÿÿÿÿÿÿÿÿûÿÿûÛ
šË	É	É«ÿÿÿÿÿÿÿÿÿÿÿÿÿþùý©àœ šÛÞþ¿¼ððýšÐ½¹é­                       	­¯­Ëž¿Ÿ¾ß¿ÿÿ¿ûÿÿÿÿ¿¿ëÉ	ÀÐ À šÍí¿ÿ¿¯ëÿþÿûÿÿûý¾Úž™©	­­­éûßËð¯ð¼°                         š	­©ééàúÛÚÚÐðððùËÉéËÉ	
 à° ð°Ú ššÉéËÙžšÛË	 À À  
š«	ÀéÙ­ËÉé	                         	        	 š	­
	  ¼°ÉÉ	É	 ËÊ	 š ¬°ð¬°ððððð¼°ðÐ°Ð°Ð¼ÉéÀð°à­	°                            	 	 	     	    ° ©  © ­ 	
 	                    š ©  
¼¼¼
                                    	      	 ¼ œÉÀ œ      	 	 	 	 	   	  àÀš°	                                                ž
ËšÊžž
                             	ÉéË                                                   	 	 	                                  °š                                                                                                               ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûß­ûÏ½ëß­ûÏ½ûí¿                v­þ, 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.', 2, 'http://accweb/emmployees/buchanan.bmp'),
	(6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', '1963-07-02 00:00:00.000', '1993-10-17 00:00:00.000', 'Coventry House
Miner Rd.', 'London', NULL, 'EC2 7JR', 'UK', '(71) 555-7773', '428', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          T  BMT      v   (   À   ß          S  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏšŸ¼¿ý      Ï›ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðüðïÞš       ¼°ü ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð©©ùëü      
Ð¼ð½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¬¾Ÿ
      	ËËÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°ðÚÐ       ­­éÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ	©ð         ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
         ËÉÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ©é          ›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ            °ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ           ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà           	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð           ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ           ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ           ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà         ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð         ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ         ŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ        ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð       ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð  ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ       Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð   ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà      ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð    ¾ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð     ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð     šÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ     Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð       ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð ¿žÐ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð      

Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð      ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð      	    ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù ðßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð       ¼	 ° ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÀ		  ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð      ©     Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿé	 Ú›	 Ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð       š	    ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð°™	 š¼ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð       ¾š    šÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý	 ©			 Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðð	      	éà    ªÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 	©š	  Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý ð  °    šš   	¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðšš	© 		 ° 	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà ð	       ¬° 
  šÐ ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿü			  	 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 	 ð
      	ž 	 º°¬ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ› °	 °		   ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ©  ð       
 šš
  	ð¼		 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù	  	 	 
		ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿË   ðš         	°  ­«   	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ š™     š	 		 ›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà° úšð    
 
    	
šÚš ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿðŸ		 	
š	   
 ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
	 à
ðà    
    °   ©	    ©Éÿÿÿÿÿÿÿÿÿÿÿÿÿÿ		 °Ð°		 	 ™ °Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¼ªžš	 ð
           
 Ëªÿÿÿÿÿÿÿÿÿÿÿÿð	ð™©	©À
	©ššÉ  		 ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ¬ ­  ð ÚùëË           àš Ú  Ÿÿÿÿÿÿÿÿÿÿÿ	°›	žšÀš  ° šœ°œ°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþÚ š  
šðð ©        
   
š  «© ¿ÿÿÿÿÿÿÿÿð›	°šÐž	   °	 °©©		©		ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð©    ÚÚ°­¬
ð šúð       
	  	     
›ÿÿÿÿÿÿÿÿð°Û©°°  	 Ðœ©© 	©ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
Ë	    ð °ð  	
      	    °°	  ¼   ¿ÿÿÿÿÿÿ	™©š­ ©   
	 °Ú›š¹		ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð	©ë¿  
ÚºÚ °
ð
	  	  
	    
 ÚË  š
	 ð° ÿÿÿÿþ›éšù©	©   	 	à™	¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
 ú   À© ÊÐð  °        ¼© 	¯©    º   ÿÿÿÿù¼½šÚš  ° 	 œš›ÊŸ	›	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿà
 ©ûÿð œ©«ÀË© ð    °	
 
  
	
 
 žš é  ÿÿÿ©ù»ð°Ú	 	 	 ššÚ°¹°™©ð›ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ   
ßÿÿ  
à
° 
ð          Ê
    ­©à ©  ¿ÿÿÿÛÉËžš›°°	 °	é­›		ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
  	¯ÿÿð    °
ž°ð       
    °¹ 	 

ºÚšÊ  ÿÿÿ¿ŸºÙ°¹	©À°š	©Ëš°›°›š›	¹¹ÿÿÿÿÿÿÿÿÿÿÿÿÐ 
     ›ÿÿð ©Êš Êð           Ê 
 		ëÛ©  š	 
 ÿÿùù©°ðšŸš¹š›š°	­šÉ­­¼šÐš›ßÿÿÿÿÿÿÿÿÿÿ 
  
	  ¯ÿÿð © 	«©ð      
     ½© 
°°

     š  ÿÿûËùû	ù©­™éð°Û	 °ú™©¹™©¹›é™¯ÿÿÿÿÿÿÿÿÿ  	     ßÿÿ  ¬

 àÀð
š     š	  
  °    ©   ©    	ÿÿŸ¹	ù›	Û›ë™­»	°›Û™™ÚÚ™ëŸ	›ÿÿÿÿÿÿÿÿð 
 
 
    ¿ÿÿà °šºð	  
	     °° úš	 	    ¼   ÿÿéëÐ°šÐºšÙž¹¹°Ÿ	©¯©©¹©à°¹ðð™¹¹¿ÿÿÿÿÿÿÿà   
  
 ÿÿú  °    ð  ©®° 	      °©© 

  	 Ÿ©   	ÿÿ›™«Û	©¹©©žš°½©»ÛÙ›½›Ÿ	
››žšÚ™ÿÿÿÿÿÿÿ 
 
     ÿÿÿ	 
 «	àð ©
 š      › ð   ª©  ÿü°úÙ ù›
™©™¹Ð»¼½©°¹ù½­©›ž¿ÿÿÿÿÿð©  	  
    ¿ÿÿà ­À	
 ð 

Ð°° ú   
   °¾°»   
šÙ     ¿ûÛ™›
œ™	©°Ð°­©Ú›É¼› É©››½»Ûÿÿÿÿÿð  š      
ßÿÿ ©

   ðš	©«
	©	   °	 Ë°    ¯   °¼	™©©àÐ°™	š™©¹	ù¹¹™°Ÿð¼°šÙ¹¿ÿÿÿÿü   
      	«ÿÿð  °	 ð    ðºÚ¼ºð ù­ 
 šš°ú  
 ½ð 	 ¹ùù›šž›	™©		
		¹šžš›	¯	ùù¹»ËÛÿÿÿÿ ©
     	
ßÿÿà 
   úœ°	©Ëž›šÚš	«	  	ë 
	 
šš¹	©›
°		 ™©é›	é©¹°¹Û™›°°¼½¹°ÿÿÿüš é
 
  °   ¿ÿÿ  °	 Ê
ù« °ºÚð°ðú¬¯°©
 °¹   ­¼š	 	©½°ùùË
š›Ð™š š ›¹›œš›	© °ð¼½››Ÿ½¿ÿÿð©©
      	 ©ÿÿÿð 

  ðšÚÚ°» ©	šÛÚ¼°«
ž 	 
š    ëÛš›™¹­©		 				°š¹°š›™¹›ééð»›ÿÿúÀÊ	é        ÿý   ¬°š  ð
š š
ÛÀ    
 
°­©«Ú    
Ÿ¼½°¾›Ë›™	
 	  ©		½›Ú°ù©©ù½¹›¹»ßÿÿ °°ð    °    ¿ÿÿð   	 š ð	 š 	 
  °©°›
 °½ Ð 

 °	šŸ™ ™­šš °›	©©š	šš¹™°°ž¼½»›ÿþ


       ÿÿÿ 	 œ°   žð       
	    Ë 	  úÛ  	é°

Ÿ½½½°°¹©©™¹É			©	 	¹››	š™š¾½¹›«Ÿ­ÿð ­	
 
  ° š ÿÿÿ  à  °À ð     °ù     Û °  ›éð°°ž¿	 ¹Ëšš›Ù		Ú°Û¹½¹ùÛ™Ù°°žœ½°ð½©©¹™ºšžŸŸ¹›ÿÛ

       
  Ÿÿýð 
°Êššð      	ºÚ    » š  
š
 ûß Û¹ùùð°ð°¹ÛšÛž›	ð¹™¹›™¹š›™		Ù	½¹©©©¾¿ÿà¼°
	  
    	¯ÿÿ   ÀªÊ  Àð š    »­°°  šÐ	  ° 	 ¿ÿúÚŸ©¹©™	É¹­½¹ù½¿›žŸœ¹	©šš™©¹½Ÿš›ÛÛÛŸÿ «
   
 
   
ÿÿþ  °©é  ºð    °  ­¾ûÀ
 ºú   
  Ûÿý©©¹»›ËÚºšŸ›™½¹ùùùù°¹É½¹ÚŸ		šÚšš™½°ššŸ¿ðšÐéÊ   š  	¿ÿÿÐ 
  ¬šÀð  	    °»šº   	  ° š	   ­¿ÿý½©ËÛ›™Ð		œùðù¹™½½½»›¹©°°ð™¹ù¹ð°Ÿ	ù¹¿úÀ©®  ¼¬  °   
ßÿÿ  
œ°š  °ð      ¯	 	
	       ¿ÿûú›››Ú»šŸ›	™ 	›ÛŸ™ù	Ù	É	°¹¹éÙ°›	éÿ	šÛÊ °  ¿ÿÿÐ
 ª àš  ð ©     °º¹ú    
       ßÿþùððð½©Ð  ™É  ›Û°››
šš›ž¹¹	°Û›à¬ é à ©
  
   ïÿú  žË à«ð     ©
û°  	        ¿ÿûÚ››››™©©   	
¹ð¹	ŸÐ™		©¹¹û™É¹¼›Ë šž	­
 š	 °
	ÿÿÿ    	  ð       °©¿      ©  	  ¿ý½©é­°ûÚš    ›ùš›Ë™©©°©	œ¹©›ëšœ›	™¼°°©à¬
œ  
    ¿ÿÿð š©à®àð	
	   © »Ëð	    °     ¿ÿÿ¹½¹Ûš     ¹		›é 	  ©Ÿ›­™ù¹°Ÿš°¼°Ð°

      
ßÿÿ  ¬°š	 ð   	 

¼¿    °     	ÿÿðžšš°½		  °š™  ¼°  		™°Ÿ™»©°¹ÀšËéª š     	ÿÿþ  	¬°Ê ð  
  	 ©          
Ÿÿÿ¹½½™©©©©	É		 ™©      
šÛ°»™ù°™¹É°©­­¯œºÚ	  
  
ÿÿÿ 
°šÀ©

ð     š›
 © 
        	ëÿùé©°œ°™¹©©¹	 ©		   		©ùºš›Ëš›ºûÊûË­©¬ 	  	¿ÿÿð 
	©
 ð ° 	    ššššË
Ð	 	    ŸÿÛ›Û¹¹›	©©	ð¹Ù¼ð™		™ °
 	 ž¹›¹™½»Ð›™©É©­½¬¿Ë© 
    ÿÿÿ    à¼ ð  ©
 ©¹éÉàÉÀ
    ÿû©ð°Ð½		™©	é»››™°šŸš› °	š¼™¯	ŸšÙºÚëþ¾¿ž°ðÀ    ¿ÿð 	 

 ð 	
 š š
©
š šÀ   ©¿ÿÛ›Ù¹ùÉ°ðž¹šÙùéùûÛ½°¹Ð	 		¹›™¹›½°¹°™­¼¿ÛÏíþš° ©  ÿÿÿ      °šð	 	  
		©
 		 ° 
	 ¯ÿ½©°šš™¹°™	½
™©¹›š¹½º›
	 °¹ž™°°šÐš›Ûš¿Ëï¿¿­­      ÿÿÿð  ¼
Ú  ð   ©	©
º 	 š   
   
	
ßÿšŸ¹™ð›š™°½Û©Ðºž ™Ë
š©©º™ù½»Ù¼°ù°ŸÞ¿ûÏÞÚÚ     
	¿ÿÿ 
 
 ž°
ð 	  © š 
  	 °		
 ©	ûð¹ù¹«	¹©éËÉ«°š©›™¹°¹°°™šš™ššš™››É¿ëÿûë¯	 
  ÿÿð 	©
  °ð Ë
Ú	 	  ™À  
   ïûÛ›™›É™¹¹»Ðùš ›ËÉ	›™©°¹¹ù©½¹½©›ÿÿÿïýð°à  š  ÿÿÿ    à û ÏšÛ   	 	 ©°°  	 	½ù©ùùð½©°ð¼™¹©ùœ°°		°Ð¹°°°°ù©š™	ÚšŸÚ¼°ÛïÿŸ¯š	     ¿ÿÿ  š	 °°ðšŸ»Ë °›		
°	     
 
 
Ÿ«Ûšš›šŸ››Ÿ›¾½¹©©	À°É	°¹ËÛÙŸšš›Éš™»¹™¹¹¹››¯ÛëþÛé¬¬     ßÿÿ 

Ð  ¬ 
ùðž¾©   °© °© ° 	 
™û°½½°Û™	©Ùš¼Ð			Ð¹ùš›©	¹™éšœ¹Ú¼¼¼°Úß¾ßé¾Ë	   © ÿÿð  Ð
Àšš­©úš›ú°ðš šÐ      
	 ¼»Ÿ››½¯¹Ÿ™°¿½›šš ŸŸž½©Û›©°šÙ›Ÿ¹›››™°°ÿ¼¿éð­  	  ÿÿÿ   °°à	
 ûé°ù­   	©© 	© ° 
 ¹ûÚšÛŸ¹™¿©©É»Ð		 šš›°¹¹ú°š›™©©©»Û©ð½ûËÚÚšÚ   
  ÿÿÿ° šÀ
	 ðË	à   		 š     	ù¹ù¹ù»ŸºÙ›™¹©  
	©¹ÛÛÛ™»Ù¹›Ð°›Ù¹¹¹°ù©°ºûÏ¿¯©é  	  ÿÿþ 
 ° 	©
Àð°°°š	   °Ú	 °°šš

 ¿›Ÿ¹¾›ùúÙº½   
 	Ÿ«šº›É	©ÛššÐ»žŸ™ùé­¼úððžšÐ    šÿÿù  
Ð  ºð   
	
 °	 	 °©  
   šÛ¼»™¿¹¿›Ù›š™	  	 	 	½	›¹½™¹šÙ¹›Ù½¹¹«›šÿ½¯ž°é  ©   ½ÿÿþ 	 

°
Ð ð	 	 
	  
 	­™	Úš	© °
	½¹ùûûÛÛÛÛ»š™Û	 
		©  	 °›šÚ™°Û©©©¼¹ÛÚž¯ËÚðù­­©  š 
¿ÿÿ
	 
 °ð
	
		
   	
 °©
  	 °ï¿››Ÿ¿¿¿°ùù©ù ¹©šŸ™š™  ©›Û	 ™¹°¹¹©¾›¹ÛŸ›š¹¹ù°¹¿¯
Úš  
  ­ÿÿþ    ë šÀð      
	 ©	 š š
	  Ÿ›	¿¼ûÛŸŸŸ››Û™ŸŸ©¹É	©°™	›ž›ŸŸŸ¹›Ð»ž›ÛÚŸÐð½©­«Ê	©
š›ÿÿù Êš
  
ð 	 
	  š	  š		 › š›½¿	ûŸ¿ûûûùë¹°¿¹››™ù›ÛÙ¹
›É¹››¹Ûé¿½¹¹©¹¹¹ù»›Ë­©é­     ÿÿþ  à© °ð
  	 
 °©­ š °	 
š ° °Û›ûŸ»ÛŸŸŸŸŸ¹ðÙ	ÿ«›É°ú›¿Ù	°š››ž½º¹¿›¹š›ÛŸžš›Ûù¼šËš¼š    ÿÿÿ  ©	 ¼
ð	   
	  °š	©
	°	©Ûšù¹ûß¿ûûûû¹û›šŸ¹ùý»Û™ùùûÛù©›ÛÛÛù»ŸŸ¹éú½¼¹û›ŸŸ­»Ûé ð­  	 ›ÿÿû 
  ê	

ð ©	
©	 šÐ°°š ºš 	°¿›Ÿ½¹¿ŸŸŸ›ß	ð¹›ßŸû½¿¿¿¿½û™	©¹¹°»Ÿ½ùûŸ›½›¹°°Ÿ›Ú››ŸššÛ
Ú
 
  ¯ÿÿü 	ËË š¬°
ð°©š     š	«	 › °¿Ÿ›Úùû¿Ûûûûÿ»û½¼¹»û½ûùùùùûŸð¹›ÛËùùùû»ÛûÛÛ¼ŸŸŸ°°¹ùùùûÚŸ©  
	ÿÿû 

 °àš
Ðù	ž»	©¹© ©Ú	 °°š  °		¹û½»Ÿ›ùûÛÛ›ý½»›žŸýûùûÿ¿ûŸ¹	Ú›½»¿¿½ûùûû½»š¹¹¹ù©¹š›š	êÐ  
	ÿÿÿ  šž
	àªð¹©°¿  

©
©Ë	©		 ¿Ÿ›ÛëûŸ½¿¿ÿ›ûÛùù¹¿½¿ùûûßùÛ›™¹ùûÛÛÛÛ¿Ÿ½½úÛùÛéù¹ÛË»ÛÛð­¯	   ÿÿü 
 ¼­  ù››°º›			
›	
š°šš

	ù›¹ÿ¿™ùûÛ½½¹ÿÙúÛ¿¿ßûý¿ýý»š¹éÚ¿¿½¿¿¿ûß¿Ÿ¿¹¹¹»›Ë«›Ð››ž°Ú    ¿ÿÿú 	Ë
šž°Ëúšû¼»	 
 
	  ™©©		
›Ÿ›Û¿¿›ùûûÿ›¿¹»ÛÛ¹ý¿ûûûùûÛ›½ù¹ûùùûÛùÿ¿›ÛÛÛéùù¹ù»½¯›ÊÚ©    Ÿÿÿý 

 ¼¬ Ë ù	›°°	
 °ªšš°°½©ûûý¿Ÿ½¿š››ý¹ÿŸ¼½ûûÿ½ÿ¿Ÿ½¿½»ŸûùûÿŸ¿¿¹ûû½º››š›ù°©›Ë°½    
ÿÿþ  œ¼©© šð©©    	
™šž› ©ðŸ¹ù»ù»Û°ùùé»Ÿ¹ÿ›û½¿Ûÿ½½¿›ùûÛûŸ›ùûûÛÛß½½ûÛùùùùùÛŸ½¹ÊÊð  °  ¹ÿÿû    ž
À¯ ð        
 	 ¹
©°º››››Ÿ¿Ÿ›ý»¹°™°ûŸ¹¿›Ûûÿ¿ÿûù¿Û½¿½¿¿Ÿ»Ûÿûù¿›¹¿›¹¹©½°™û™«›     ÿÿð šÐ 	
ú	 	   	  	  ¹š›¹ëšûûÛ¿½»½«š›šÙ©ëÚùûûß¿Ûù½»Û½ûÛÛŸûß½¹½»Û¿Ûù¿½›Ëš›Ÿ›Ùàð	   
Ÿÿÿü  
	à°à ù ©   	 	
	°š°
°º¹°¹	û¿Ûûü»ÛŸ¹©™›Ÿ›»ÛÿÿûÛý»Ÿ½»¿¹û½¿ÿ»ß½»½¿™»é¹ùé©ùû»½° 
    ÿÿû  ¬	 
Àšú™      	
 °	«›¹º ½¹¿½ù¿Ÿ›ù¹©›	ð°¹½»¹ùÿ¿›Ÿ¿›ùû›Ÿ›ÚŸ›››ß»Ûß›ùëÙ»Ú™¹ûš™É›š   ° Ÿÿÿü 
šž	© Êù
 °°	  °°› ° š½¾š	›	œ¿Ÿ»ùû½Ÿ™°™©	›é©Ÿ¿ûß¿ûù¯ž¹ùð¼¹¹­½¯¹½»¹¿›¹¿½››é¹	 ›é©ð°  ° ©¯ÿÿð À šÀ à°ú	  	  ° 	 
š š›­º °››ûý¾›Û»›	é	©	ŸŸ¹ù¿¿›ŸŸ¹¹ùº›››Ëš››ÛûÛÛù¿Ÿ¹š¹éŸŸ°›	Ÿš ©  ©
Ÿÿÿú 
žàšÐ° ù  š   °»  °©©°Ù	ùù¿›û½­½½¹			½¿ùûÿ¹¹Ûù½›››ÛŸŸ¹½¿½¿Û¹ûùù»°Ÿ	š™ù°ð °©ÿÿß   ©
  àð
° 	   ° šÚ °š¿¿ùùš›  š°¹›¹¿½¹úÛ°¹©­›Ð¹«›Ûû½»ù¿Ÿ›››ÛÛÉ° šð°° 
Û¿ÿÿú  žž	ËÀð
	
°
  ° š
 
š©«		ù¿š¹ 	©    °›Ÿ­Ÿùÿ¿™»°Û°Ÿ	½¯½¿Û¿Ûù»é¿¼°¹›	
™Ÿ›  © úÿÿÿð °ë

° °ù š™à		
  š	    	 © 	¿ÛûÛŸ    
    	›©¿¹ù¿«		™	½¹¹»Û¿Û»Ûù¿›› °	 ¹¼¼© 	 Ûéÿÿü  ž¼°¼
šÀú ©	    
	      °
šš°šù½°°        šš™ùùÿ¿›©¹©  
›ÛË½»½û¿Ÿ›ûûŸ›	 	¹©à© 
 ¾»ÿÿû 
Ùë °ð ©Êš	© 	           			ÛŸÿ¹	         	Ú›¿¹¹¼›   ššù»›Ûýû½½»ý¹°ðŸ	 		Ÿšžš    ÿÿü 	®é ©
ð ©             °    »ÿ¹¹š        °	¹»ÛŸ	°¹      ›¿¿›»Ûû¿›ŸŸ›°  °ŸÀ    	¿ÿÿ°  é¼    ðš   
          
    ž¹ðúÛ°š     		°Ù­¹¹°     	  š™	¿Ÿ¹ùù¾›°°Û		™©à°°   
ÿÿð 	  © ¬šÚð 
© š               ™Ûû›°ù	™©	  	©©¹­	Û           °¹ë¿¿›ù½¹°›š°ù½¬  	  ›ÿÿÿ  ÐË 	   ð	     	         
     ¹½½š™° 
	 ™Ð™°°		         š™¹ûŸ›Û½»ËšŸ¼™ù™°›
     ÿÿð    

  ð 	
             	     »žŸ©¿	Ú	©	© 		©­›š		 	       	šÛ¹¿½»Û½¹­°™°û	žË     ¿ÿÿà  °©Ë	ð   	                  »ùŸ	°¹°Ú   š™ 	›	©©© ššš™	°¹ËÛ›Û¿šž¹©›¹é¬    ¿ÿÿÚ  ¬ °   ð© 	                  šÙú°Û		°			›Ú°
šš		°››¿û¼¹½¹¹Û	°	š     ÿÿý  ¼
šð                      	»	 	©°¹	
 		 š›	°š	 				Éšš›	©¹é¼›šÛÛù­
ÐšÙ ™žšœ° 
  ½ÿÿú °
­ © ð 	 
                  éð        °	© ›É›œš© šš		›››Û¿½»»	°¹¹	›		©©ê  
ÿÿÿ   ð¬° šÚð  	                  	›Ÿ         	 ¹Ë	¹ù	©	 			©°ð¹­Ùð¿›Û½¾™ ©
›  šÚ	    ¿ÿÿð 
	© °  °ð  	                  ù°°         ¹™°š›Ð›	
	
šš™™›™«Ÿ›é¿º›™©© 	 ™é¼	 
 °ÿÿÿ 	¬°ùËËð 
                   šÛÐ         Ð¹Ë›¹°Ð°	 ž™ùé­™©¿Ÿ¹½½       ™Ú      ¿ÿÿà ž

 à¬ð  	                  ›šš        		ž¹¹ÐŸ›Ë	©	 °
œ¹ðššÛÙ»ÚÛš     	°°Ëð   °ßÿÿ°  °ù©éð          	    
       ùùÀ     	  ù°¹Ÿš¹©©™ù °	 			¹«ù¹¹¹       	  ° š   ¿ÿÿð ©à
Ê ¬
Àð ©
š©   	             šš¹	     	šÙëšÙ½¹Û     	     ŸŸž›ËË         ¯ °    ÿÿË  žš­
°ð	       	               ™ùšÚšŸ™°ù¹»™ù»Ú›šŸ™é©           	©¹»Ÿ›        	 Ðž   ° ¿ÿÿð 

  Ê à
ð
 	 	                 	©©é¹ùð¹›Úý¹­©Û©¼›ž›Û           Ÿ½¼½»	         
É«à    Ïÿÿ   ËÀ°š ¼ð   	 	
  

 	       Ÿ››Úž›Úù¿šŸ¹Û­Ÿ›½¹ù¹ð¹ð™        šš›››š          šÐ     ¿ÿÿð °é  
°
ð ©           
       	­©½»ù½¾›ùùû½»›ùºÛŸ›Ú›©© 	     ½¼¿Ÿš           «À°    ÿÿÛ  
 šÀ ð
   š
  	  	          ©››«ûŸ¿›ûŸŸ›ß»Ë½½¹ðÛŸ    Ÿ«››™©©           žœ°  
  ¿ÿÿà  Ú š  
ð 
 
     	  	       ¼žŸ½¹ù½¯¹ùú›ù¼»»ÛŸ¹»Ë	­© 	¹ë™éù¾™           	     	ÿÿÿ°    À Úàð		 		 
	   š  
       	™	½›Ú¿›ùÛûŸ¿Ÿ»Ÿ»ù¿Ÿ°Ÿ­½«¿›ûÛ™û›ž™            
Úž	     ¿ÿÿÀ é
š
  šð
   Ê
   	
  š	        š°°š¹Úù»½½¹¹ðù¹Ëž›½»ù»›ÛÙûû››ûÚ¹°°             ©¬     ÿÿû 
 à¬
 ð    			 
 	               °ŸŸ¹¿Ÿš½½»›Û¹ù½ºŸ›Ùûù¯¼½¯›½°ù¹ùé             ºÐð°    ¿ÿÿà  š	  °Êð 	 °° 
	  
              	°°›ÛŸ¹Û¹žšÛ»Û¹ù½¿©›ûÛÛùûÚŸ›Ëš            
    ©ÿÿÿ ¼ 
  Ê °ð     		   ° 
               	›ù­½¹É©°œ¹›™É©ÛŸº›Ûû»»›©¿››™ù	             °°é 
   ¿ÿÿà 	 ¼¬© à
ð		 ššÚ 	                     	›šš™Ÿ›	©¹›­°Ûù¹¿»ÛÙùÛ›ÛË°¹             

À    ÿÿù  ¬ 	 	Àð  ©   š
	©©  	 	              	ûË		
	 ™ù›É››¹¹ûÉÚ¹«›»Ë¹¹ÛÚ            °ð
Ð°    ÿÿÿà  š

 
ð
   		 
           š   š   ›Ú°Ù¹ºÛÛ¹»»Ÿ½¯»ÚÛ©©              ½ª    Ÿÿÿ ¼  	¬ ©ð  ©  š 
 ©                 	°     		›Ù«šÙ°½»Ëùùû›¹«ù¹¹Û             °°
œ     ÿÿÿà   ° Êù ©à ©¬			 Ú              ©       	 šš¹›Û¹û›Û›Ÿ›ŸŸŸ›žŸš°ù°            Ê©     ¯ÿÿð ©¬
 
   ð	 	  	  
 

 
	           	 š      ™Ë	Ë™é¹ûÚ½©©¹½¹°½™              °ðšž     Ÿÿÿ° 	 š
šð  © š °°šš	            	
	        œ¹™›¹›¹Û¹ûðû›Ûšš            Ë
©àš   ÿÿÿÀ
   àð	   š      
	À             °        	©ð¹ù	½½¹»Û»Û››°ù­		              ¼°ÚšÉ    ÿÿÿ   À	à   ù
 ©
 °¼šžš
 š            	      š  ©›ÛÚÛ½°¿¼½¹»šš              Ê	é  	©¿ÿÿð  ° Ê Ë
ð		  À     
              š 	  	™©Ù¹©ù¹¹¹ËŸ™››Ÿœ¹	               ›Êžž°é¬ ÿÿÿð œ¬šð©Ë
Éð 
	  °°°		
	  š          	
         
Úššž››ËŸ½»ù»ëž›°               ¹¬©é©Êð¿ÿÿÿ  
›ï
ü¾žšðšÀ    	

	  °            	      ›	¹›Ùé½º›ùšÙ½¹é¹­              šžžž½¯Ëÿÿÿð
Úì°ý«éé¯ð °š	 š	é 		
   °           			é   	ššž»›šÙð¿Ÿ¿›ù¾šš               °ð
šÚËËÊœ¿ÿý  	žÿ¯ÚÚþÚð  š		 
 ©     °               		    š			¹¼¹»›Û¹¹­›™°¹	               ËËéúÚŸ¯ÿÿÿð 
éðùï¿ÿð ©© š
	  
œ   À             š 	     š	©­¯™½¼½¾ŸùºÛ	                 ¼¼°¯Ÿ­¯þŸÿÿÿ Ÿ¯úðü¿àù	À ° À    œ                 		
    	 ™™­°¹›ù¹ùš™ ©                
Úðûùéðÿÿÿà ¼ðýÿ¿í¿ð°°ð	  °	                               
	š°°½©«Ùé°©                 ½¬¹ëÏ¾¿ÿÿÿ° °ûÿ¾¼ðúßð   °	   °     	 °                         	
	Ÿ›™                  š¼ºûÏ¿ÿÿÀ ÏëÏÿ¿ÿúð °     °	  	                               š		© °š
                   ž	àûé­éé­ÿÿÿ 
ž¿ŸûËïð   ©                                       °¹	©	                   Ê žšž¼ºÿÿÿ  ËÏ¯ÿÛÿÿù          		   	                                                         °¾
Ëéà¿ÿÿÐ	 ¼Úðúü¾žðË	¬ 		É                                                               º	­­ëË
ÿÿÿ  ë®ž½ëéëú¹í«	©°°úð°¿°šŸ
Úð                                                       ðš Úð¿­ ÿÿÿ  ðËÉéþ¿­ýÿûßûü°Ÿ½¿ßðÿË­ùÿŸ                                                       ° š½¯éú
ÿÿÿ  
¼®¾ùàðúûÿÿûß¿ÿ­ÿÿ¿ÿ½¿¿¿ÿÿÿð                                                     
ÚÚ
ÛþÞÐÿÿÿð
œ©Ëïž¯ÿÿÿÿÿÿûÛÿÿÿÿÿý¼ÿÿÿÿà                                                      ð¿¯Ëú«ÿÿÿ  
ž­¯Ú­­¯ÿßÿÿëý½¯ÿÿÿÿÿúÿ¿ÿÿÿð                                                     ¼¬ ¼ÿÿéúßÿÿÿ 	ËÊžŸ®Ú¯ûëÿ½½úðŸ¿ÿßÿŸŸ›ßÿûûð                                                     ›À©ëÞ¾ž­­ÿÿÿ 

íé©úßù¼ŸŸ ÚÚðûéé©©úßÏÚ                                                     
	ž¿Ëéëëÿÿÿð œ ü¾¾¯ð ©  	© °Ð	©©                                                      ððºËË­®žŸÿÿÿ   ¼«üððúßð   
        
                                                        À­«Î½©ïÿÿü 	Êýë«Ë­úð  
 	  	 			 
	                                                     ðàšÚÎš
Ê¿ÿÿÿ 
Êý¾½í¬úÿð °  	  
	 	
                                                         ðÉà©°éé­ÿÿÿð ªýë¯úý¯ð  
 	  	                                                            	©¬¼ªÊË
Êþÿÿÿ   ý¯¼ð­¾ÿð	  	      
   
                                                   ž
Ð°ðð¼¿Ÿÿÿû 
ÛúßÏ¾ÿéàð 
  
   	  
			                                                    šÐð

Ë
šË¿ÿÿÿ  êúËÚÿ¿ðš     
  	                                                        ú	 À°šÚË¬¼©ÿÿÿà	©ùý¿¾ý­ëð     ©  
    			 
                                                  	à © ¬©¬	ïÿÿþ ®úàéëþ¼ð °     	    
  	                                                   ðÊ	 © šž °›ÿÿù 
ËŸšÛŸ¯Ëžð  °	
    	   			                                                   «	 É
Ê °Ê ­ÿÿÿ 	 à¬¬¬©¬ ð	 	   	
       

                                                 ÚàË
	 
Ê ššÿÿþð šžšššÚšÚð
	         	                                                   	© 	
  
Ê	
 ÿÿÿ 
 ¬¬¬ à ð š 	       	 
   °©  ¼                                            ¬   	 °  ¬ ­¿ÿù  Ë	é
šžžð 	 
 	     	   Ÿð                                             šÐ
   À   Ÿÿÿþ 
Ê
ÚÊÊ ð	     
       	  °šÿ                                           
  Ð
š    
  ÿÿÿš ¼°© ¼ úð  		 š           Ÿÿð                                         ¯     	   ÿÿÿ ¬ ¬
ž ù š   	  	  
 	© 	 ©­ÿÿ                                        	 

ð ¼
     

Ÿ¿ÿð 
	é šÊúÛé­Ÿ›šÛš°»É­©­›¼ûÿÿú                                        	­­¬°
   
  ÿÿÿ 	 ê °éà­ ûŸúûËÏÚý­¹ýÿ¾Ÿÿš¿š›úßÿÿý°                                 
   
ÚÊ ºüš à	
š
©ÿÿÿ é Ë
žšÚÿÿÿŸÚûûÿÛûïûýÿßÿŸíðûéþŸ¿ÿÿðà°                               
   	é °úËéé®š	 é°©ÊŸÿÿþ  š
 éà¼­ÿÿÿÿ¿ßÿÿÿýÿÿÿ¿ÿÿÿ¿¿ýûÛÿÿÿÿ½à                            
     ¾
œ¼¼°þžšù
Úë¬¼©ïÿÿû  ¬°ðêšÊšùûÿÿûÿÿÛÿûùÿÿÿûÿÿßÿ¿žÿý¿ÿÿð
Ÿ¬                          
œ  	
œžðúúÚž¹ë
éð©ï¼ûëþ¿ÿÿü Ê
éà©àÿýûÿßý¿ÿÿÿÿÿÿÿÿÿÿ¿Ÿÿùû¾ÿÿÿÿ¼¬º                           ªÊ	ª
ëËÏ¯éïàù ©é
ûÏžŸÿÿÿ° Êžž© ¼
šÿ¿ÿÿ¿¿ÿÿÿýûÿÿÿÿÿûÿÿÿ¿¼ù¿ÿÿðËÏ                          ¬¼©êÉé ðûúÚžšú›žž
ùï¾ÿ¯ÿÿÿþ  °Ë©ËËË­¬ûÿÿÿÿÿÿ¿ÿûÿÿÿÿ¿ÿÿýûÿý¿¿ÿÿÿ°¬°¬                         ú

žš°ï¾¼ééëí©ÊË
ŸžÛËÚü¿ÿÿù ž¾Þ¾®šÚÿÛÿÿùûÿÿÿÿÿÿÿÿÿÿÿûÿÿûËÛßÿÿð                        Ëàùà¾­°ðû¿¾½úÚ© àœ «¯¿­»ûÿÿþ  °é©é½®šðÿÿŸÿÿýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿¿¿ÿÿ¿ ððéË                       ¼¼°ž
ž	«àëËíééê­¬šš¼¼¾Þÿÿÿÿ  Ë¯ËÛí¯ÿ¿ÿ¿ûûÿÿÿûÿÿÿÿÿÿÿÿ½ûûÛÏÿÿÿü¿¾¼°À                    Ëàëééé¾žŸ¼¯šþ¾ŸúÚš    ºÛëé«ÿÿû  °ððû¾¬ºÚÿÿÿÿ½ÿÿß¿ÿÿÿÿÿÿÿ¿¿ÿýý«ûÿÿÿð°ûëÏ©                   ¬¼¼©¼šž°àðúËý¯ùðúéëËÀ°Êšœ¾­ÿÿÿü šÊŸ­­ÿùûßÿ¿¿¿ýÿÿÿÿý¿ÿÿßÿ¿¿ý½ÿÿùéïß¿¿ùí­                 ©
šÚËí«ËÛëËðúý¯¯½¿­ °
¯­¼ºÚ¿ÿÿû  š¼©¬¹êž°ÿÿÿÿ¿ýÿÿ¿¿ÿÿÿÿÿÿÿÿ¿ÿÿ¿¿¿ÿÿúúûÏËï¾¾ûé           
	¬
ððí©©©í®­¯¼¯¯ü¼®žÚÚ «	­úûËÿÿÿ  À©à°œ°úÿÿ¿¿ßŸ¿ÿÿÿûÿÿ¿ÿý¿¿ýÿ¿ßùÿÿÿí¯Ÿž¿¿ÚÛßž¾ž    	  ¬
 

žü¯ÛÚÚÛùëÚŸï½ë¯­ ¯¾ž½¬¾©ûÿÿþ œºÚšÊð« ÿÿßÿúÿÿŸùÿÿÿÿÿÿ¿ýÿÿ½ÿ¿ÿÿÿ›­¯ïüü¿þúûý­¯ž	 œ¬	  ©É¬  žš½¯®¯­¯½¯þ›ÊðüšÚð›éëËëžŸïÿÿù 
¼­ ðéÿûÿŸ¿¿Ÿûÿÿÿÿ½ÿÿÿûÿÿÿÿÿû¿ÿÿàÚùðûûí­½ð¾ûËÛéúÚ
™  ©  	 ž °¹­þ¼ÛÚÚÚùúÛËþ½¯¬°ž®ËþŸëëÿÿÿþ  ûË
¬¯¼ ÿÿÿÿßßûÿûÿÿÿÿ¿ÿÿÿûÿÿ¿Ûýÿÿÿ¿	ëÿÞ¿úúÿËí¾¼¾ž¼¼®ž¬¼	   ° º ðúð¯¯¾žž¼°þ­°ð¼¿êß¼¿ÿÿû °¼ðšÚùÊÿÿÿ¿¿¿ýùÿÿÿÿÿÿÿÿÛÿÿÿÿ¿ûÿÿýð¿¼úûëÚßß¿žùëÛ­©©ùéù©°¼
 
  ð°¼¯­ªžŸž¯žùëÚéé¯Ú©ëé½¾ßÿÿÿü °ë­­®¼©ÿÿÿýÿÿ¿¿ÿÿÿÿÿÿÿ¿ÿÿÿÿýÿŸ¿ÿÿ ðÏ½þßï¾¾¿­¯ž¼¾ÚÚÏ¿Úàð¼	
š 
 
©Ë
à½¯­ªÛð¼ªÚšßïëúÿÿÿû ©­°úÚúÛÊžÿÿÿûùÿßÿÿÿÿÿÿÿÿÿ¿ßÿÿ¿ûíÿÿÿ°úÛéûÏÛÏÚß­¿Ë¼½ºùüûŸÀ
 É
œš
©À éŸ¬°é®ù¯ËÉ©©ïëûüÿÿÿü 
Ê­­®šðÿÿÿÿÿûûÛÿÿÿÿûÿÿÿÿ¿ÿÿÿ½¿¿ÿÿð°ûí­¾Ÿ¾¾¾¿­¾Ú¼éêÙë«Ï¼°ðð°°¬¼ ©À¬
	
 °­°éšÏ¬
ËžÞ¿¯ÿÿÿû ¼¾¼¾¾ž¼¯ÿÿÿÿûÿÿ¿ûÿÿÿÿÿÿÿßÿÿÿßÿýÿÿÿžžÚÛþ½¬ÛËÛËÚÚ½é¾›¯Þ¿­¯ÊÊÉ©©Ê	 	Àš

Ë©ààË ÿï¿Þðûÿÿþ 
ËËéééËÚÿÿÿûßÛùý¿ÿÿÿÿÿÿûûÿ¿ÿûûûÿÿùë¿ÿëËëºùêùëëÞ»í¬ðùëðúÚð¼°ššÚÚüšÚÀðà°š «àð ÚšÐ© ° ½àûí¯Ÿÿÿÿð
ž¼¾žž¾«ëÿÿÿÿ¿½ëûßÿÿûÿÿÿÿÿÿÿ¿ÿÿßÿÿþþßëß¾ŸÏŸ°ý«ÞšÛ¾ŸËËÊ¬­¯í©«
šÊ é ©Ê à Ð ž
¿œ¾°úÿÿÿù š°úÚúééüüÿÿÿÿÛûý¿¿Ûÿýÿÿÿÿ¿ŸÿÿÿŸ¿¿ÿÿúŸ¿ßÿßúùûéðÚ
Ú¼ú­°Ëëúðð¼°¼°›	é«ËÉééË
ž
©   ð œ
¯ úËÿÿþ  ËËéËº¿ÿÿÿÿ¾Ÿ¿ùûÿÿ¿ûÿÿÿýÿ½ÿ¿ÿéÿÿÿ­ï¾úûßþÿÞû­½­šË½¼½¼¾›ððšúžÚ¼ºÚž¼°éé«
 	  	 ¼­ °ÿÿÿÿ 
ž¼¾¼úûÏÊÿÿûÛý¿ßž½ÿ½ÿÿÿûùûûÿ¿ÿÿŸÿÿþšŸ¿ÿÿþþûÞ¿Ë©ëË®›ËëËëËÎ °©­­é©ËÏéÊžššðð¼Éà

    
 ¿ÿÿð ¼«
Ú¼¼ú¹ÿÿÿÿ¿ÿ¿½¿¿ÿûÿÿÿÿÿýÿÿÿÛûÿÿùàþüÿßÿÿÿÿÿûÿùÿ­¬	¬°½­©é»ÚšÉëËË­©­©é­­­Ê
šÐÐ
	 	
 
Ÿÿÿð 	Éé­¯ËëÊÿÿÿýùÿßÿ½ý¿ÿÿÿÿÿÛûÿÿÿÿý¿ÿÿš›ûúúßùï½ïÞ¼¿Ûûðùí¯šÚžËéé šž¼°ðððúðð¼°úðúð¼½  © À 
 	 ¯ÿÿÿ 


Êš¼¼°¼ÿÿÿ¿¿ûûÛÛûÿÿÿÿÿûÿÿÿÿÿ¿Ÿÿÿü¼ÿÿúÿÿï¿ÿÿþÿ¯ËË
šžË¼¼¼Ëé¯ËËËÚÚËÊžžž°°°©
   Ÿÿÿú ©Ë©ËËËËËÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿû ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ËË °°ð¼¼°ð¼°ð¼°ð¼¿­©©©é©         ¿ÿÿð   
  



                Ô­þ, 'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5, 'http://accweb/emmployees/davolio.bmp'),
	(7, 'King', 'Robert', 'Sales Representative', 'Mr.', '1960-05-29 00:00:00.000', '1994-01-02 00:00:00.000', 'Edgeham Hollow
Winchester Way', 'London', NULL, 'RG1 9SP', 'UK', '(71) 555-5598', '465', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          T  BMT      v   (   À   ß          S  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ þÞÍ¬þüêÞÎËÎïïìÿïÏîíïïïÍëÎÿïÏíïÏïìýïü 
àíþÎŸßËùùüüïÏÀ  üàÎàü¾ÞÊËÊì¬ïÎÌ¬éàþíàààîÚÎÀÎÞü¬®Î®Þìü¬üíïàíïìüþßþÿüþîÎïÎþßíïþßïïé  žœ­ïàü½ü½½ÏŸŸýïü¯  ÀÊÜ¬žÊÌüì¬­ìíïÏì¬ì®ÞÎÎÚÏÏÎÞ¬ðþðîúÎÜ­ïíËÊÞîúîÞþïÏîþþïïïí¬¼ðïíàþþþÏîþÿðàìÞúÏËÛËßéý¹ééÿÊÀÊ ÀïÊÌììÊÎÎÞËÊÀàííëÍàüðéîþàéàÞÊÎýüÌ¯ÎìþïÎÎÎžÏÏïÎžïííïÞÿþÞÞÎïíþþþÿÏþýïÞÿ  éìïíéí­ý¯Ÿ	íùœùïÿÊÀÀìœ¬éÏÀðàìüþÏÎëÊÌêÎÊÎÎÏËÏÎÎìüííîþ¼ì¼ÏÊððìíîüþþþÞþþþÿîÿêÎüüîÿÏïÏîþïþÿï°ÀàðëÎžŸÚÛÜðùšÞ¹ïýì  ¬ÚÀìÚÎÉììüþËì­ÎÎ¼ÎžÎÊÞ¬ìúËìžàüêÞðÎþÎþëïÎÎÚÊíêüíìþÚÏïîßíüéîßîþÞþýíþÿïÿ  þüÚÙéí¼ûßœ½™Éðüýï¼À Ì¬ü¬ÊÌ¬ÊÊÀàüìËÎ­¬ÎžÎžžÎÞþÞüËìÞëíïü¬ïïÞÌÊÀîÎÞÏÏþÿïïþÞÿþþ®Þìþþïÿþ¾Þïïüþüð ÊîÞ¼¼žœ½­½é©ÉÎž	Ðþüþš ÊÏ àÌ­ÊÞ­íîÞÎîÏÎÏàìàììðì­îÏîÏ®ÞÞþÿËÊÀÎïëíï¼®þþïÞÞÏïïïÞÜ®ÚÏïýïïÏïÿîÿíïûÀß¯ËÚÙËÐýËýù
™Éü¼¼ïÏí ¬ìÎÚÎÊÊÀí¯ÊÉàéàÞÊÏÊÊÎÞþéàùîÏîþíÿþü¼ìêÎþÎÌìïÞþïïïïÞþþïÌìïüþþÞíîÏýïÿïï¼íËÉÉéÐý¯œ½­œÐÐÙéïé ËËÀììàììþÎÏìïÎÎ¬íàìüàìéîÞîÞðüÿúÿíþþûÊÐÌàíðúÏþïÏÏÎÞÞþÿïïýïïíïþÿþþþþÞÿÀ°¼žžžŸ	ÙíÚÛÉÏÎÞð ÌìàÉÎËÊÌü¼¼¬­Îœ¬ÉàüúÞÏìüëÎïë þþíüüíîÊœÎîÌþÎÞþúïïïïþßí¬ïþÿþÿïÎüïïïÏïþÿÎÉééÍ¼žžŸ­ðš¹		œ¯îÚðàÎ¬àÞÏËîÎÎìîÍìàÎÏ®ìàìîúËÎüíÿ° ÿÏþïîþéüïþÿïííàþþÿïàìíïïïíþÞÿïþüÿïÿÏïðÐžšËÐùéÞŸ™ÉÀÚÐ¼	ÀÏï ÎÏÎÊÎ¬¬îÐí¬®ž¬¬ÀËÎÏííîúÏþðÀàþþÏüýíîïÎëÎÞíîþþþÏÏïÿþËÎþÿþþþþÏþüÿíîþþü¯­¼ùÚÛÉðùéàš­	àþ°úÐàÀÌíïïÊÎÌìÎÎÌÏÊÎÌ¬¼ðîÞÏÎÿë ÿíþËî¾ýì¾ÞéÀìþýïííîþþÞÏìïÏïÏÏíïþßïþÿÿüþÚÐÐðÚÙ¼	ð  ðœïí íì¬¬ì¬ìí¬ÚÊÊÀðààì¬¬üîïéàþÿ¼àðþþïþíí®ïíîÞþàþíïîüþÿïúÎÿþþÿïïïïîÿïïïï¼­­éÚßžŸ½ŸÉðœŸ	 Îÿ¬þðààÀÎžÏÊÎ¬í¬ÎÎÀÌààü¼üïïúÊ üüüíþþÞÞÎžþÞðìïþü­ïïïþÏïïÞþüþüþÿþÞüþÞÏÀÐðÛÉéàÙðÛÉéŸÀ  ÎÿÏéïí¬ìðí¬Ì¬ÎÀÉíëÏÏïÎýéé    ÿï¯îÞÏï¯ïíï¬þžïïÞÎÞÞÿìïÞþþüþüïíïïþþÿïÊœ¼ŸŸŸŸ¼žÐ›© üïþþÌþàìü¬¬ÊÊÀÀìëîÊÌàìÊÏýïÿ  
  þüüðïÎÞÞïìÿìþü¬þî¾þÿïïïßíïíïþÿþýïÏÎü°ÉÏùïËÛÙðÐùùé©ÀÐ	© Þüü¾ÊÎðàÞÌàÌìþÀ¼Ëïþþþ      ÿþîþüïéîþÞËÎÏíéÀïýíïþüïÏïîþüþÿíþïþïïïÏž¹Þ¼ùßŸœžœœ©
	 Î¼þ¾íàÊéÎààÊÀàìÎìÿïíïÏð     üÿýíîüîÞïþïïïïÿÌîïïïþþüþÿíïïÏïïßïüþÞ		ÉÞ½Û­éý½½™ééðùœ	  îýíì¬àÎ¬ÀÌÊÎ¬ìííí¯àüþþð
      úÏïïéïžÎüîÞÞÚÏÎï¯îÞþÞÿîßÏïüþþþÞþüþÞûËÊÚÝëÍýÛÞžžžÚÐÐ  	  Üïì¾ÚÀÏÀÊÎÀìîÀÀÊËËÎÞÞþÏÏë       üðÿïÏìïéÎÚïïïþÿÞüì­ïþþüÿîÿþþÿíþÿïïïþ œ™ý¾¿­ùýùù½ù­­°ÐÚÐ êü­ìì¬¬ÀÀà­íìÎÊÞÎïïÏþº

     ÀþÿþÏþÞúííííìþïþðÎïïüþþÿþíïÎþïþýïÏàŸËÏËÙÿíÿß¾ßžùí	ËÉ	À    íÎþžîÚÀ¬ÍìÀéïÌ¬­¬¼ìúÞÞþ®   
    
ðð ïþÏ®ÏÎïîþÿÏþÿïðÌþÿíïÏíþþÿÏÿÏþþðÉÀœ½½ïéûß½ý¾ÛÏÛÞšÛÐðÀ  Î¼üììÎÏ­Î¾ÞÎÎÎÚíëí¯É    
 °
¾
 þÿüþüýìðïïþÞüþÞ¬ÏþþÿþþþÞþþþþþÞïšœ½íí½ÿßíþŸÛý½­¹éÍ­­©	  àïÊÊÊ ÀàîìÊàðéàìþÎïÊ É 
   
  ð  þþü¯êþïíïïïïïïÐïïíïïïÎÿÏïïïÏïÐËÛûß¼ÿ¿ÿÿýëßŸÏŸ©ÐÚÐ™     Ïàüì¬ÊÌ¬ìÐìíÏÎÞÏËÀÿÎ©À     
 š
ð   ïþÞÿÏÏÏïÞÿÏÏïþÿüþþüþÿîþüÿÏï©œ¼½ïÞÿÿÿß½ûÏ½ééùðÝ­½	ð   àÏÎ­¬¬¬ÊÞžÚÎêÎÏì© À       ÿ  žÿþÎþþþïïïÏïíþïþïÿíþÞþßïþÞþüü	éýÿŸýþßÿÿÿß¿ÛÛß°žœ¼
ÐÀ 
ÏîÎÌÊÞìàì¼úÌ¼ÏÎÏï

 ©        þ°š   
ÿþÏÏÏþÞþþþþýïýïïþïïÏïÞÿïíïÉýûÿÿÿÿÿÿß­ü½ùûÏÙéÛÙ	   žðéàÊðü¬àðí¬àÎžÊàÏéêÊ	 ¬
        þÚ   Ïíï®þÏîÞþßïîþþþýïÞÿþþÿïíïàœžüýÿëÿßÿßýÿ¼¿ÛÛÚÚÐ¹¬šÐ   àììüÀìÊÊÍ¬ÎÀÎÀì­Îþž 
	  

     ù     ÿþÞÞÿïþÞþÞÿÿÏÿïïïïïïþÞþðÐùÛÿÿßÞÿÿÿÿýÿý½í­½ŸÀÙý­ù	  Ààü¬¬ü¬íÊÀààÌÊÞëË

  
	        ¾
    îÿïïïüïïïÏïþÞþÿïþýïïïÏéËËÏïßÿÿÿÿÿûÿ¿Ÿë›ÛÉéŸžðšÐÐ  ¬ü­ïÊÀÞ¬ìÎðéììý   
Ð 


 
 ð 
	     ÏíþüÿüþýïïþÿïÿÏþÿïþÿþþÚŸß¯ÿÿÿýÿÿýÿßùýí­¿žùíŸÉ   ÀÏÊÀü¬¬þÀÀàÐÎÎÏûàð  à¯ š         ù 	      ¬þíïïïíîüÿíþÿîÿïþþÿÏïí ÚÜü¿ßýÿÿÿÿýÿÿÿÞùùùÉééÐšÐ½éÀ  àíïÊÞÎÀ¬ÎÀþ°  
ßÉëà °        	        ïÿïþßïïïÿïþÿþÿíÿþþýé­¿ÿÿÿÿÿßÿÿÿÿÿŸ¿Ÿžžž™©í›À™	   ìü¬­àÀÀìÌðàïé     ¬

  š
 
    	ð          ïÿïîÿíîþþþÿíïïþïïíî éÞÞ½ÿÿÿÿÿÿÿÿÿßýýðùùùìðœ›Í½¼¼  ÀþÏÎààÊÀÚÎÏé         àð  
      «          
ÏÿÿÎþÞÏÿÿïþÿþÿþßþßœžŸ½ÿýÿýÿÿÿÿÿ¿ûï¿ý½­	™À°ÚÙ	©  ËÊü¬ÎîÎÏü°          
  
À    Ð           ¬þþÿÿïïïïÿïþýïïïïà­üÿÿÿÿÿÿÿÿÿÿÿßßü¿ïŸùí¹ÍŸ¼¼  ÉÎÏÀÀààíï°   

       é   ¬
                 ïÿþþÞÿþÿþÿïþÿÿþÚÚÞÿÿÿÿÿÿÿÿÿÿýÿÿ¿Ûýùùž© ÙÙÉ   Ìí¬¬¬Êï°    À          
 	  
  š             ÿÿþþÿþÿïþÿïïïé­ý¿ßýÿÿÿÿÿÿÿÿÿŸßÿŸžÞùùðœ¬ù ¼¹  
ÜÏÊÌÊüð    

 
    
  
	
Ê     é      À°      ïþÿÿþÿþþýïþÿÞð¯ßÿÿÿÿÿÿÿÿÿÿÿÿÿŸÿùùððŸÉ›œ™À ÀàÚÞÊÌ¬ìú    	
        
É¼  © ¾     š        ïþþÿþÿÿþÿïïï Úýÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ	ÿŸŸ™éœžœšÛÊ™   ÀìëÀÊÏ¯       ¬       

  
  ©  ð   éË        žÿÿþÿÿïïþÿþðžžßÿÿÿÿÿÿÿÿÿÿÿÿÿùýùÿððüž™é©É­ž  ÀüîÚÐ         à       
  
     ü    
         
  ïÿïïÿþÿïíð ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿŸŸ½¹ùðÐ¼›ËÚ	 ÀÀÎ¬îž       

À       
         ¯   
             ÿÿÿïïïÿþ©ËÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¯ùéÚÚŸžœ›É¼° ¼Þž              
 
    
    þš             
  þþþÿÿþþÿÿÿÿÿÿÿÿßÿÿÿÿÿÿÿÿ¿ùþŸ¹ŸŸ		šËË		 
ÊÎ            ª  

 
   
 ¬	
    ú  


        

  ÏÿÿÿïïÿüþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸßŸ™ùÉàÐšÚÐÙ­ÚÐ ÊÐ             
          
	    ÿ     

           ÿïïÿÿïËšßÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûûÛ¼™É	 ËÙ° Ààü     
             
    
  
   þ°             
  ÏÿþþÿþðÿÿÿÿÿÿßÿÿÿÿÿÿÿýÿßÚùùéÛËÉ¼¼¼›À­	 àà  š  

             
         ûÀ          
  
 Ê 	ïïÿÿþÿéÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûùžÚÛé¹ÉÛÚÙ ÉÐð À© ¬š   
    
 
 

            þ°       
      À° Ïÿÿïïþÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ½¼žý½ùÛÚÞŸ¼ŸŸÉž
™
Ìú úÉ¬ 
           
        

ð          
    ¬  ÿïÿþüéÏÿÿÿÿÿÿÿýÿÿÿÿÿÛÛßŸùúßðù¹ðßééŸ	ÉÀ ¬ 
¾ Ê             
        
 ÿ°        
     
 àÊ	ÏÿïÿÿÿÿÿÿÿÿÿÿûÿÿÿÿŸÿð¼ðÿß¿ùÿüý¿½½ÿŸž°ÀÎ°
    	¬°      
      
   
     °          À     Êœ©ÊÿÿïëÿÿÿÿÿÿÿýÿÿýûßÿÿÛÿý¿ßßùûûÍÿÿ¼ùùÛÉ ù     	      
              
  
 ð                 ê­­ÿïÿüœÿÿÿÿÿÿÿÿÿýÿÿúðÿý¿ý¿ÿûûßýýûéýÿž½©ËÀ       
  
           
  
     ­          
   À  Ú  ÏÿþûÿÿÿÿÿÿÿÿÿÿûÿŸß½¿ýÿÿßýÿÿÿûýÿ¿ŸýÛŸ	ÉÌ°    
Ë 
         
 
 é
      úÚ          

  Ú ¬¬° þÿþœÿÿÿÿÿÿÿÿ¿ÿÿÛÿ½ÿÿÿÿÿÿÿýÿÿýûßßùûýé©ðšš     é¬° 
        
       
 
  ÿ          
œ    
     ÿÿíÿÿÿÿÿÿÿÿýûûÿÛßýÿÿÿÿÿÿÿÿß¿ÿûÿžŸŸÛ­ 
  
¼é
  
  
       Ê  

     ú  
      
 ¬
        ïþûÿÿÿÿÿÿÿÿÿýýÿÿÿ¿ÿÿÿÿÿÿÿÿ¿ßýýùÿý½¿šÛ™Ë  
  
Êš      
  
  
  
    
   ÿ           
 À      	Ïÿü ÿÿÿÿÿÿÿÿÿÿÿùÿÿÿÿÿÿÿÿÿÿÿÿýûûÿÛÛÛÉý°ÚÐ
    
À 
         
  
         ü      
    
           Þÿ¼ÿÿÿÿÿÿÿÿûÛûÿÿÿÿÿÿÿÿÿÿÿÿÿûÿßÛý¼ùÿŸ°š  
             
 
 À         «        
             ïþÐÿÿÿÿÿÿÿÿßÿßÿÿÿÿÿÿÿÿÿÿÿÿßÿßÿ¿ÛÿŸ™ùù›Éð    
     ¬  
  à    
 
        ð
     à            Ë  Þÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûùý¾½­¼¼¼¹	Ú   à   

Êš
 



 
  
             À¬š         ©
 šïéïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûùýÿŸ¿Ÿ›Û™ÚÚ	 

             
  
   
  
   ¹ Ë  
š 

        	 
 ¬ÿüÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿ¿ŸŸ½ŸŸ¼ý­¯	­
  
Ë

   
     
    
         à ¬
          
      
  ËÏëÏÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿßÿ½ùùðÚùùË›ÛÙ½©° 
                      
    °
À°             	      ¬¯üÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ŸßžŸ™ù™É¹ü¿šÚœž
 


             
           à 
À°   
             
ÜÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßùûÛÙéŸŸÜ¹Ð½½›	Ðœ      
      
  
            š  ¬    
          
     ïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸŸ½Ÿ	Ð°¹Þ½ÚÚÐð° °   

    
          
       à      
 ÊÊ     
         ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿Ûùù™ùÛ™ÙÐ¹Ú½½¹™ÉÐ  
                           
       	   à°  Ê  
   
ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý½ß©ÐùÙéðžŸ
                
           à  
    ¬Ë
  ë 
       	ÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýûÛùý¹Ùùù™ÐŸ	ëŸŸ	 ™                
        
  ° 
    

 
Î  ÀéÀš


   ¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ßýÿŸÛßŸË™Éù­¹ùù

     
         à           Ê        ­©à     ¬ À   
ÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÛÙùý¹ð¹™Ëœ¹ÛÏð              
   
   


   °          à
     ¬ °   ©àßÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿÿÿÿÿý¹½¿Ÿ›™Ð™Ûž½ùŸ	

              
Ú       
  à       



      ­ àÀ	   
ïÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿûý¿ßÙÙÿýûé¹°Ðœ™ËŸù	ž                       
   š                   š    	ÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿýÿÛ™ÿÿÿûßýï°Ù		é½­¿ž™é

            
 ¬       
  é 
  
  

        
¬  é  ¯ÿÿÿÿÿÿÿÿÿÿÿÿÿùùýÿßÿ½½ÿÿÿÿÿÿûßŸ° ÛÛùéð    
     
        
  
    °       


    
 
 °é ÊÐÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÙÞÿÿÿÿÿùÿùëž™  ¼ŸŸ™­             
 ¬       
 Ê à
       
         °° °ž°¬¿ÿÿÿÿÿÿÿÿÿÿÿÿûùùûß¯¿ÿ¿ÿ½ÿûÛ›œ™Ë   ™ééðù	  
             À       ÊÚ Û    ÊÚ
        
 


 
ÊÉË
ÏÿÿÿÿÿÿÿÿÿÿÿÿÿûïßûùßÛÿý¿ûû™	   ŸŸÛŸ

 
 
   
 ¬   
¬
     ¬¬  êÊ                       ÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¹ÿ	ï½ÿ›Ùœ½››Ÿ			 Ðù¹Ð   
 
      

 
 °    
 
É ð    

    

 
  
     	 ÿÿÿÿÿÿÿÿÿÿÿÿÿ›ßùŸùùÛÛÛÛœÐÐš™ ý©­©
   
        À  ÊÀš      
 ëààš
        
     
    
  ÿÿÿÿÿÿÿÿÿÿÿÿÿûý°ù  ŸŸŸŸ½½½½ûùý¹Û›ÙÐÙœ½›ÙÉÊ              
    Ê    ü°      
 à	é  
š	
  ° °
Ïÿÿÿÿÿÿÿÿÿÿÿÿÿ¹Û™½½ùýùÿÿÿŸ¿™ééÉ­© šÙ°¹
         

 

 
 êÚ
 ð   ûÎ°ð      à
  ° 
     ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹ËÛÿÿÿÿÿÿý½ðûÐûÛŸ¹Û™ùžž›            
    
 ð¬    ü°
œ    ð¬ ° 
  
  
ïÿÿÿÿÿÿÿÿÿÿÿÿûšœ½ÿÿÿÿÿÿùûÿ½¼Ÿœ™éÜ°ÛËËùù©À           
      
ž	     «©­
Ê  
 ° 

	é  
 	 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ›ßÿÿÿÿÿÿÿýùÛÙ°™éš›©œ™œ¹  
   
       
       É
   Þ  
°   
       à°  ð  ¬¼ïÿÿÿÿÿÿÿÿÿÿÿÿ½°½ßÿÿÿÿÿÿ¿¿½­™ 	ËÚÛ›ËÙ°¹   
	          

  
	Ê	
  ©   
ÊÚ  ¬     

Ð 	®   ÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÿÿÿÿÿÿÿÿßÛÛÛœ™ ž™	Ð™ÛÐð   
 ÊÚ           
 ð    ð   ©	   Úð    
	À 

ÉëÊ  ¯ïÿÿÿÿÿÿÿÿÿÿÿûß™ùÿÿÿÿÿÿ½¿½½½	žŸ›ù	™ 
   š  
À 

  
   ¬     š 	     ¬
	     °
  ©  ÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ™Ÿÿßÿß½ûÙÛÛûÙé	ž			œ½ŸŸ™	     ¬š
 
Ú	  
 	   ° 
  àé   ©  
É       š  íî°  ÿÿÿÿÿÿÿÿÿÿÿÿÿý½ù™ùÿ¿ûÿûÙ¹½ÿÛùÛœ™©žŸ™ðùÐ°ð 

 
  
  ¬  ¬ 	     ž°      	
      ©   éé  ÿÿÿÿÿÿÿÿÿÿÿÿÿÿûùðŸ½ýÿùý¿ýÿ½ÿŸ½©­›ÙÉž™í½ž›Ý    
    

  
	 
   
 ¬ š  
Ú 
 Ïš  	 é  
žÊŸÿÿÿÿÿÿÿÿÿÿÿÿÿûßßŸßûý¿ÿÿÿÿÿùûÛÙÙ¼°š	éŸ›¹ðÙ©    

     à  Ê
«É


Ïð          ðà



É	   ¼°Êÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûùù©ý¿ßÿÿÿÿÿÿýÿžšÙ¿™ÛðýúÞ«Ð            À¼œ 	À   í®š 
Ë©  Îÿ    	     
Û¿ÿÿÿÿÿÿÿÿÿÿÿÿÿýÿŸŸ™¯Ûÿÿÿÿÿÿÿûß½½¼Ùé¹ù¹Ù½¹Ü½°   
     
 
 

Ë  ¼š  
Ïé ¬ðš
À	
œ¯ 
 °

     ý½ÿßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸŸ½ÿÿÿÿÿÿÿÿûÛÚÛ¿™ûÏŸÞ¿ÛÞ›Ú   
         š Àé    
°°

Ë   
ÉÊÐðœ°Ê ©   °ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸûÛÛûßÿÿÿÿÿÿûýùùÛÙ›Ë›Ý°ù½ð°         ©  
îð   
Ê     


°é    ­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßùûßÿÿÿÿÿÿÿýûÛÉééùûý½ý»ßŸÚŸ      éé    
  þš      ½     
   	é­­é ¬ š ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿß½ÿŸÿÿÿÿÿÿÿùù¹žŸŸŸÛŸÞŸðý­©   
    
  	  
Àëé      Ê   
 

      
Ð ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ß¿ÿÿÿÿÿÿÿùûÛÉùðùé½ðùý¿›Û   
 



    
  šœ    
°  
À °ÉÉ      ¬­
ÿÿÿÿÿÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿÿßÿÿÿÿÿÿûß½­Ÿ›ÛÛßŸŸ›ÉüšÐ              
       ¬é      š 	  
  ðúððÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßûÿÿÿÿÿÿÿÿûÛÛ	ùý½½ðùùý¿™ù­

  
  	  	 
 °š 
    ú°  àÊ
   é
   îü°ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿŸù½ùð½­ûŸŸž½œúš 
 
     

 ééÊÉ      ½   ž° 	     

ËË¿ÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿ¿ÿßÿÿÿÿÿÿÿÿÿŸÚžŸŸÛœùùùÛû™ù	àà  
   À°	 ž 
	    
  ð©  à   

   
 ¾°éïùÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿÿÿÿÿÿÿÿÿÿùð¹ùùù¹û›ÐùúÙÏ	Ë 
    
 ¬¼
   
       ©   
	      
     
ßÿÿÿùûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿŸÿý¿ÿÿÿÿÿùÿŸ	ééÉœ¹éÙé¹Ú 
 à  ©	  š    
     
þšš
 
       
 

  ÿÿùÿ½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿Ÿý¿ùÿ¿ýÿÿÿÿÿÿùù©ùŸ›Ÿ¹	š™žž™ù   
Ú	


          
 ¹	    Úš          
	ÿûŸßÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸùÿùÿÿÿÿÿÿÿÿÿ¼™			›ÉÚÛÙ¼  	à  ­ 	 š       
  
ð    ¬      

 
 ÿŸ¿¿Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûß¹ù½¿ŸÿûÿÿÿÿÿûÛÙ°¹Ð¼¼™­É© Ê   Ú°©¬­¬ 
          ©	    © °       
  ÿ›ÝÿßÿÿÿŸÿÿÿÿÿÿÿÿÿÿÿÿÿûÛËÛÉùùýÿÿÿÿÿÿ½°ÙÐ¹	½™½™­°½°Ð 
 
 ËÊÚÚ     
      Ú          
       ÿù¯ŸÿÿûÿðÿÿÿÿÿÿÿÿÿÿÿûÛ½¹	¹Ÿ¿ûÛÿÿÿÿÛÛ 	ð™éËÐš™É	Û  Ë 
   ¬¬             ©     
  
      
 ÿ¹Ùù½ÿûÛ	ßÿÿÿÿÿÿÿÿÿÿÿÿûùùùÉ¹	Éýÿÿÿÿûÿ™©™ð™¹ÙË	ðÐðÏ¬                     ð
       
     © ÿÿ›ÿ½¹éïÿÿÿÿÿÿÿÿûÿùÿŸŸÛŸ›Ð™›Ÿ¿ßÿÿýù	ðÉíŸžœ½°Û	é

 
            
      
	
   


 
      ÉËÿÿ»œ¹ùÿß›	ÿÿÿÿÿÿÿÿÿÿùÿ¿ÿÿ¿ùù›Ÿ	ËÛÿÿÿÿ¿	™é™ 		 Ðžœ  
    
       
  


   °              


ùÿý¹ðŸ¿	 ßÿÿÿÿÿÿÿÿÿÿÿÿÿýùéËÉ	½½ÿÿÿùùù 
™      °		             
   
      é          
      ¿ÿÿŸ™™ùùœÿÿÿÿÿÿÿÿÿùÿÿýÿÿùùù¹ù©žŸŸÿÿÿú	       É		ù                 
  


  °       

      
ûÝÿÿÿ™ÿœ©
ßÿÿÿÿÿÿÿ¿Ÿÿùÿ½¹Ðœ¹ùÿÿÿÿ     À°   
 

    
   
    
   
                   í¿ÿÿÿû¹¿ÿÿÿÿÿÿ¿Ÿû™›     		ÿÿÿùû	    		é		›   
  

   é
           Ú       
       ÿßÿÿûùé 	 ßÿÿÿÿÿÿßùý¾½	    		™ýÿÿÿŸž 	é	­¼¹	 ÐÀ          
         
         
          éùÿÿ°		 ÿÿÿÿÿÿ¿ÿûÙûÛûÐ ¼™Ï¿ÿÿÿù™		 	ËÉ	 ›Ë	¹     

  



    
    
         


      
ßŸÛû	   šÿÿÿÿÿÿÿÿŸŸûœÿßÿ¹ÐÙ			éûß¿ÿÛš	 				ÊÀ		À   
            
      
ð                 ûßÿÙ    ßÿÿÿÿÿÿÿÿÿùù™ùŸß¹©		½¿ßŸ¿ÛÙ 	¬°™™Ú	        
     
       

          
        ¹Ûð™ 	  	¯ÿÿÿÿÿÿÿÿùÿ¿šŸ	É	™¿žŸ¿ùùŸù­¹ 			ÛËÊÛ	    
      


 

 
      ð                 ùÛù™à	©  šßÿÿÿÿÿÿÿÿÿùÿýùùù°¼¹­	ùùùÿðŸ™©   		™       
            


          
          é½œž™ù   ßÿÿÿÿÿÿÿýÿÿý¿¿ŸŸÛÚ™ÐŸŸùÿŸùðù      	       
   ¬   
       
                    ßž›Ûßž™   	¯ÿÿÿÿÿÿÿûûßÿýýûÚ 	ÙÛÉÿùÿžŸŸ­        Ë               


  

  Ê°             
   ™ß¿™ 	   Ùÿÿÿÿÿÿÿÿß­½û°	 		©é¿Ÿß½ùý­°™©     		       




            Ê                 ½ïûÙ     ÿÿÿÿÿÿÿÿùÛÚ	 	   Ÿùýýÿ¿ß¿ûÛý½­	É   Àœ                

 

            
          ™™    	Ïÿÿÿÿÿÿÿÿ¹	 ž	Àð¼žŸÿÿŸÿûýý¿ß½½ðùý°Ðùà›
           °        
   ž                    	       	ÿÿÿÿÿÿÿÿÿÿßŸ™Û½ŸÛÛßŸŸýÿý¿¿ûýÿÿÿÛßÉ©  É         
      


 
 

 ©                             Ÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿÿÿÿÿ¿ùÿÿÿßûýùùý­ù½™ù              ©    
     ê
   
          	         	   ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿßÛÿßûÿÿûÛœšžÉ	            
  
           ° 
          
               Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿßùý½½	½	 °            

            à
                             ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßùÿßÿÿÿûÛ	ð °          
 	            š      

    °   	            	Ëßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿŸÿ°™	 É	 	            
  
          à  

                         Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿß¿ÿŸýýÿÿ™°ž¹ 	             

 


  
    °        

       	            ¼ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿÿ¿ýûŸŸ™© 		                  
      
          š                 Ùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿßÿ¿	›	©	Ð™ š            
   
   
  
  ð        ¬                   É
Ùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿ¿ýÿ» Ðš™é 	               
          
    
          	           š¾ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÿ¿ßûùÙ¹Û¼š			              
 
 
      àð 


  
 

	   	 	         		Úÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿýÿûýù Ûœ¹ Ù                   
     

«     
 
  
	  	           žžëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùýÿ¹¼›Ú™©                


        
Ê
       

               		©­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÛðÛð™ ù 	                
  
   
 ° 


  
                  	 ðÙïßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßùÿÿÿ™ÙðŸœ¹	­			                

é   Ê             

              ÚÙ	½¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿûÛùžž™ù©ð                  àÏ 
	à°   
ð       
 	 	      	    	   	 °ðÞßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿŸ	›Úœ	             	
  àú	    
     

  
      	         	ÉŸ½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûßù°Ð½¹½©	               Àð  ©¬¼ 
   ð 
     
  
   	          ÐšÐýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿûßœŸœœšÉ		              ¬   ðê 

š 

        
 
	              À ûÏÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¿ý½ûšÛÛ›               ÊËàÀ
       

        
Ê             			Éðÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ½Ù		©	              ©àüà°¬       
 ê 


 
    ©  	            Ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýý½ûù­¼¹œ°                 ©®Ë     
   °               		           	 Úýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿûûßŸ™œ©	               Îé 


 

	
	
 

                  	      	 ¯ÚÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛýýðù¼©   	             À¬ªš
 ¬    À©
 à  
 
             	     		   ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿÿ¿Ÿ½¹	© 	                     
š	 
žš  °         
      	           Êßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿½½ûý½ðù	°	 	              Îš ¼  
    éé Ê   
   
       	            ½¯ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ýÿÿ½›Û	œ	 	   	          	 ¬
    

ÊÊÚš
   	
   
 
           	     Ðýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùûß¯Ÿ 	               
	  ©
  ­ 
Ë
 °   ª 
                    	  ­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½ÿùÿý¹Ù™	Ù		      	         à  
    ¬š	œš
Ê    é       	   	          	 žßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÿ½¿ÿ¿ùð°     	   	      
  ©

 
À    °   ¬
    
  
  				         	ëÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸùéðš™­	  	           	 àÀ
 àÊ     àé     
À 
 
 
     ¼À     	
­½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿ½½ÿŸŸ½               ¬©¬    
	¬
ÚÚ  à   
š 


     		        œßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿßÿûÛùù©	Ë	      	        œš  ¬®	  	Ê ¬¬ é °     À      	               ¼Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿Ÿ½½¾ŸŸ›	                 š  	à	 ¬Ë  à               À  	      	ŸÿÛÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛËÙ	  		 	À        	

  
©
œ 
Ë  
             Ê  	       žŸÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿùý°½¹	©	                 
  ° ­¬ Ê
 ž
Ú 
š
     
 	             ÉùÿßÿÿÿÿÿÿÿÿÿÿÿÿÿŸÿ¿Ÿ 	  		 		 ©Ë      œ


 °àÊ à
Ú  ©
©  
À  
 
   		   			          ÛÛÿÿÿÿÿÿÿÿÿÿÿÿý¿ûÛÙùù 		 	    	   	      
 À©¬ à ­®Ð­©©
 à   

      Ê       	         	 ¼½ùûýÿÿÿÿÿÿÿ¿½ûý­¼ú™	Ð™  	         	     °ÊËà	 ®Ê¬¬ °       à   
	ž	             ©É¼¿ÿÿÿÿÿÿÿÿÿßÿ¿Ûùù™ÚÙ© 	   		    	 	     éàú
àààé í­Àê	 à           		é   		       ¼ŸŸŸŸ¿ÿûÿ½ûùùù½ŸË	°	      	         	  	

žííêžš ¬
Ê®à š            ©ìð               	šÐûýùðý¹û¿žŸ›	™		     	    		       œ à®ºœ©àðà°©ÊÊÌÚì
Àà          
  	é Ð 	       	 œÐ­ÐšžŸ›Ëœ¹	™   	                     		¬ËÌï à Ê ¬ª¬
¼
š         


ž  	            	­™	 	   	 	 	          	    	  
œ	 ¬êðªÞÚð ¬Ì¬ÀàÀ¬              		é      	    		   		 	 	                 	      		ÉËËÊËÏœ¬¬
 àºÀ® ð       
  
    žšš	              	  	 	     	                 	     °œ¬°¬®þ­ëëÊ àìÊàÉ  à           °š   œ	œ©	          	 	 	  	                    		©Ê ©­ëÊžíéêÎ éÎ
 ÀÀ                  °Úš œ 	                                           °š ðÐàúþýë à­¬à¬   ð         
  
ÚŸ	­ 	          	         	             	 	Ë  				ï®®Îí®¼à
ÊÊ     
               °ð	š	      	      	         	      	    	   	­	š ÚÚðï¯üëÊÊÞ¬¬¼
Ê  ð        
   


œ°°ù© 		                                	š     °°ÐÐ í¯ì®¼þïþž ì¬
À¬ 
             
   
 ÛËÍ 	° š            	       	     	    	 ð			   °éÉ©©
ÚÚîÎþÿ¬¬Ê

         
  
    
   œ°ùÐÉ	É  	    	       	           	 š   Ðœ	šÐ
 ¬¬éêÏ¯ïþÿ©àà Ú     š               
ššÙ›	 Ú	    	     		À	 À  œ   	      Ð ° 	¼­­  ÊþÿïÊž¬   
 à                 	­¹àÐÚú©   	 	        œ °       
	  À		°à Ê	ààéàïïþþž àà
  À                   


ÊÐœ°ùÉÚ 	  	   	 É	 			   š	À    šÐ 	  ËŸ	Ï žÎ¬¯ìÿïéà  à
  
À °              
   	Ëž›	ËË   ð	   š Ð   œ		 	      	 	 	 Ûœœ ðàà°ËÀààþïÿþ¼  à      à     
 

 
      °  œðÉé Ð   	É	  	É	é			     	  	  »ÉÊÊÚž¬­¬­ïïþÚÀÀ

  
   °                   à°ùÉË		 Ðšš   ðžž	
	 		 ðÛ	 
	ððÐÐ¬¼¬àððËÊÊîþÿí             
   
  
      ­ ° ùùËËššÀ	 ÉÉ 	  ÉÏ
Ðš É   žž		ð 	ÉÛ	›	© žž¬Þÿïþ­ ¬ à 
 Àð 
 
              
°½š	É	 	› À 		©šÙ		
				ùð  š¼žœ°ÊÀ¬¼¬¼­¬¼¯ïþûÀ      ¬   

   

    ° 

      ÉË›Íéà°Úœ°œšÐÐÉÐ©		 ðÐé	 	 	ËÐ™ ©	½ùËË	¬ðêÊÊÊÀ
Êþÿïï    
 À ð                  Ðð° Ð¹Ÿ™É­
Ë	©¼»ÐžŸ	©	é	ÚÙ	 	 ¹É¹é Ù	ÐûÛ
ž ÊÊ¼­¬­ ¬íïþÿ    à  
 
          
     Ê

ÀÚÞžšÙ©ÐÐ°ËœðÙé Ðž½©
Ðð	À¹­œšÝºÛœÙð¼¼ºÉêÐìºÊ

®ÿïþž     Ê 
 š  
 
    
     
 ©  é­¹ûÙ ÐË	ù­™ Ÿ›É 	
ÞŸ™	°›ËÚÙšÙ¹Ú®¯
Ì¬   Ïïÿëà àÀ  
 
 à   
 
         ¬¬š© ðéÉ¼™­ œ›šÉß	É­°œ™À™©éÚÛÉœ¼¹­°Ú¹ùðúàÊðÊÀ  Ú
  
þÿþÚÀ
   
À  š      
      
 © š     °Ëœ©Ùžð½šÛÉ  œ ¹Ë¼›ËËÛ›Ë™Ëž	à¬Ê¬ÊÊ  
 Àéïþÿ­ à

 à      
          
	
        š
 °Ùœ¹	Éé	­©éé	Ð­œ›	é °	É¼¹ß›ËÛí½¼°­¬¼ž°êÀ Ð¬	 
Ê 

ÎþÿúÊÀ ¬   Ê
À à            Ê	     

    ©
Ð°šœœ­›œ°½	©Ë °ù©í½©ššššÚ¬œÀ®

  
À¾ÿÿïð¬  

    š   ©      é   à   

   
 
 ©	©	©Ë	é Àœ©		 	­	ÐÙù¼¹Û°Ú
Üºðàà¬ œ  
 À
 Îïïþž
    
 à
 É         
	     
   
  ©šš¼ðÐ½ù¹	­ ÚÛ	¹Ûù¯›ÚšÚ©ð°ù«ÀÊÚ Ë


 

 
ÊÿÿïàÊ  

  Î 

       °  
           

šÜœ ¼™
Ð½ÀðÚ­é	œ¿ËÉéËÙý­©Û©í ì¬ ð    À   àïÿïþ°¬ ¬  


à©    
    
 
š       

   ÐÎ	É©©	 ÊÝžÚÐù½éÐžœ©É½¿ŸùïÛž°¼¾¼¾šÏ
àšÀ¬
Ê

 
  ÎïÿÿÎ À 
ÀÀìàþê

            š       à
   ©à­ð
ÛËûÚÚÙðÚŸŸÛ	é¿™ý¬¹éëËÊÚÉ ¼     
  

ïþü½   
 ¬®žþï° 
   
  
  
 
  
   ¬É
  ð­
	­Ïù¼œ­ŸžŸ½ð¼ð¼ùßŸ	
Ûàº­ ž°ªÉ¬


 ¬    ÀîÿÿûêÊÀÀ ÊÊÏïïÿÀ

   
 
             
À¾
  
 ð© àËË©	éé™©ëÛÉ©ÛÛß™­¹©	é­°°©àëœ
       Ê
  
Ïïïþð

Î¼þÿïÿþ¾    
        	
   

 šÀ 
    	 °Ðð›ÚÛ­¿œ¼¼¹ÿÛËÚÚšÚÎ¼ºË
Ú°
à 
  
   Ê®ÿÿÿ ààì¼îþþþþÿ
   

       

      °     °	  
 
 É	 žœ¿›ÛÚ	ï¼°ûË	©ËÉ ð°Ë à 

  
   À 
Ïïÿïþžžïþÿÿÿÿï¼    
 
     
       À  ¼       		
 	à°›	éé©úšÛÏ¼¼¾žþ¾ž¿ûûÿ¾š¬
  À¬ À   ¼ÿÿÿ¬¼îïþÿþþÿïÿà   
   ¼   
         ©À ¬°        	
š	ÀàË	¼¾ûûûùï­­¿ÿÿÿÿûš
            îþÿïïîÿÿïïïÿþÿï°      
      °      °     ššš     
  
ÊÚÚ¼ºËûÿÿÿ¿½þþÿÿÿÿÿÿù©  À   

À ÿïÿþÿïïÿÿÿþÿÿÿË

š     

  
  °	     š
  ÐÚÀé  š	      àð°°¼°	­ÿÿÿÿÿúü¿ÿÿÿÿÿÿ¿©
 

 à   àîÿÿÿïïÿþÿïþÿþþÿð      
    ÊÊ    

   


 ° é        àš
Úðûžºÿÿÿÿÿÿÿïÿÿÿÿÿÿù ¬  

    à¼ïïÿÿÿÿïÿþÿïÿïÿë 	       
 
   °ÊÚ   
  ÉÉ
š  
	   

¬Ÿ¼½«ßûÿÿÿ¿ÿúÿÿÿÿÿÿÿºœ 
   
 Îÿÿÿïïïÿïÿÿÿþ¿¬¼ð    
    
   ÐÊ     
 
Ê

   ©  ¼ 

  ©	 °¾›ëÚûÿÿûÿÿ¿ïŸ¿ÿÿÿÿù     
 ÊÊðþÿþÿÿÿÿÿïÿïïï¯ÌúÊ©     
  °     
  

      °  À    ž	  °­

œ­éûÿžŸ¿¿¿¿ÿÿúûûÿÿÿÿ¾ 
 à¬¼îÿïÿÿÿÿÿïÿïÿþúÚº  ð           
  ©
 
   

œ °°   
  
 š

°© 
š½¿ÿ¿¿¿¿ÿûûÿïì¼¿ÿÿÿÿ¹ °    žÏïÿïÿïÿÿÿïÿïÿêð¼¬
  

   

         	 
  
    	 ©		 	   	 
Úûûûÿÿÿ¿¿ÿþÿûÿÿÿÿÿ¼°À 	žéîþþþÿïÿïÿÿÿ¾ÿì¯ à   ð
        
Ê    
     © ©©   ¬©     ©
š
 
šš¿ÿÿÿ¿ûûûûûÿþý¯ûÿÿÿÿ©  ©
àààþÿÿÿÿÿþÿÿÿÿïï¬«Àê
ÀÊÊ 
     	      
   š       
    	 
  	
	 éàéûÿ¿¿ûÿÿÿÿÿÿûëðÿÿÿÿÿ¿
ÉžÿïïïþÿïÿÿÿÿÿþðúÀ  À¬¬¬ð                           ° °°°°°°© °© ©
›¹¿ÿÿÿÿÿûûûûûÿïü¿¿ÿÿÿÿð°à­®ïïïÿÿÿÿþÿïïÿÿÿéî
Ê                                          ©ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿëûÿÿÿÿÿ¹¬¼þÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþààààààààà                 p­þ, 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.', 5, 'http://accweb/emmployees/davolio.bmp'),
	(8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '1958-01-09 00:00:00.000', '1994-03-05 00:00:00.000', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'USA', '(206) 555-1189', '2344', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          T  BMT      v   (   À   ß          S  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ ð	      		° 	      ›ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ œÀùé¾    Ð	        °   	  ð	Í   	    ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ	 žŸÉ 	 ¿©     		   Ð        ›    		  		¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÐ  žž	 	 ùßÿð  	  	 °     	ð  ð  	  	   ¿ÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿé¬ 		 	ž Ðÿþ      ð        ž	   		  œ›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð	    	  Ÿ 			í   	        	à Ÿ      		éÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûûÿÿÿÿÿÿÐ					 	 ¼ 	½©     ¾ÿà        		   	   ¿ÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿË¿       Ÿà   ü 	 ûÐ°         	žÐ 	   Ÿ  ›ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÉð  		   	ž   °	  ü Ð   		     	      ð	­ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿ¿ÿÿÿÿÿžŸù   	 	½		É   	 °            	   	  ›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿûÿÿÿÿðŸ 	 	     ¼  		  	ð ð   	           	  Ÿ žûÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛÿïÿÿ   	    	¯ÛÐ 	 Ÿà     	 	           ü›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ½ûÿÿûÿÿÿð        	        	  ð                  	 	ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿßÿÿûÿÿÿÿÿÿ				      	 	 	     °	    	 
        ð 	 	 ¿ÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿûÿ¿ßÿß¿ûÿÿ        	     ›ð	ð     		       	 ùà 	ýÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ËßûÛÿýÿûÿÀ 	        	 	 	ÏÉÿ°            	 š  	¿¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÿÿûÿþ¿ÿýÿÿý 	 ÛÛ       	¿úÚÐù 	 	         	  ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿ¿ÿ¿ßùÿý¿¿ÿïž°   ­ûËÉ  	  ¼ÿÏ ð	 		         	    	 ›ÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½ÿ¿ÿÿÿÿÿûûÿÐ  ™©ßÿûÏ   	Ð° °š         	à 	  	¯ûÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¯ÿÿÿÿÿŸ½¿½ûßß¼º  ™þßàŸûÀ  
œ  ð½ š  	        ™à °	 ™ýýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù¯Ûÿ½¿ïÿüûß¯¼ÿßÐ  ÿðùÀ	àœ¼  žšý   ù Ð	À	  	          ûûûÿÿÿÿÿßÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÛïŸþùùùûß­ùûÛëþ	½ ›Ÿéð 	É    °Ÿ ¹  	          		  	ÿÿÿÿÿÿÿ¿ûÿÿÿùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ûÿÿ¿ùð™ëŸŸ¼¾Ÿ«ÛþÿïýûÀ þšþùàŸ         ð	    		           Ÿùûÿýûÿ½ü¿ÿ¿ÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿þÿÿ¾ýúÛùùýü¿Ûùûÿð  	½ÿí          °¹	ð°        
     	 ÿý¿ûý½ûûý¿ÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿ¿ýûÛéùù°½ÿ¾úûÛýÿÿþÿ 	   	        ùË ¿É	   	 œ	       	Ÿ¯ùÿ«Ÿ¾ùÿý¿ÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿ¿ýûÿÿÿÿïËŸ½ùý¿þ¿¯ÿ½¿ð             ð™é      		­©      ¿Ûž¹Ùù­½¿ÿ»ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿûÿÿ¿ûÿŸ­½½¼¼û¯»éùÿß¼ÿÿÿ               °©à™éÀ°            ›É›Í¾¿ÿÿÿúßÿÿÿÿÿÿÿÿûÿûÿÿÿÿÿÿÿûÿûÿÏ¿ÿýûÿÛÿúùŸýÿßÿûÿÿÿûÚÀ               ù	 ° š     À          šé»ùý¿¿¿ÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ¿ýÿýÿ½ûÛúýëÿ¼½ëÙéûËûúßûÿûþÿŸ             üœ		 		  À        ™žœ¿¯ßßÿý¿ÿÿÿÿÿÿÿÿÿûÿŸÿ¿ÿÿÿÿ¿ðÿ¿ûÿþß¿ß­ûÛÛïŸÿßûüûÞÛÚð	ùù            û	©
 	 	   
          ¹ûÛÛûûÿÛÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿûßï¿ûß­ùûûß¿Ûí¯¼½¯¿Ÿÿ¿žÛÿûÿÿŸ   	           °ð	 °  °		 		       	 	œ¼½¿­ÿÿ¿ÿÿÿÿÿÿÿÿÿÿýûûùýûÿÿÿŸÿŸûß¾ÿŸëé¾›ùËûùðúÛËÿ¿ÿðùà              ðŸ
	  			à               ›Úùÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿûÿßÿûÿÛß¿ùûÿûÛÛéýÿÛÿ¿žžÛÛÿý½þŸý¿¼Ÿ               ùÙé               é½¿ŸÿßŸ¿ÿÿÿÿÿÿÿÿÿÿ¿ûßÿûÿ¿Ëÿßùï­½¿»šù­¼¼½»ëð›úûÛðúÐûÉÐ            °°š  	    	 	         	šÚÚûÛú¿ÿÿÿÿÿÿÿÿÿûýÿŸûŸŸÿÿ¿Ú¿ûß¹ûëÚÞý¾ßÛúßŸÞÿŸ½¿	°©              ð©	    	  	            	­¹½¼¾ÛßÿÿÿÿÿÿÿÿÿÿÿûÿéþÿŸùý¿ü½¯Ÿéùéû›­°½­­½¯ùùÿ¹°ùéðÛÀ              ðœ°šÐ°    	            ùéûÛð¿¿ÿÿÿÿÿÿÿÿÿûüùÿÛÛùÿ¿éûûùëŸŸ­ïÛËËŸŸ«Û¯Þÿž ¹              ¾				    	 	           ››½½½ÿ¿ÿÿÿÿÿÿÿÿÿûÿ¿ÿ¼¾Ÿéÿ¼½½éúÛ››Ë¼°ùý­½¹ð©šÛÉð                ù ð°À	 	 	 °  	  		      ÛÉùËð¿¿ÿ¿ÿÿÿÿÿÿÿýÿûü½ÿýûŸ¹ûÛúÚŸ¼üü½ª™­¾šÛËÏ	Ÿ»Ë	š	                °ð›		°   	  	           	ºŸ­¿	ëß¿ÿÿÿÿÿÿÿÿÿ¿ŸÛþ¿Ÿ½ÿùééùðû›°ùÚÛÉ½¾Ÿ›ž œÚ             	   ð›Àš	 	  š  	°      	 	©š¼¹¾½ÿÿÿÿÿÿÿÿûÿÿþ¿›ßðûËý¯ŸŸšß	ù­¼Ÿ	©©ºÚ©ééË                	 ð	°œ °  	    	           ›ÚÙÛÉÙúß¿ÿÿÿÿÿÿÿÿÛýüÿ­¿ß½¿Ÿ­°ù©ð½šÛéðÐÐ­©ù°šË	                   ðš	Ð  		 	 °  	      	   	 °°¿Ÿ¿ÿûÿÿÿÿÿÿûÿûûùûÛðûéûÛËÚÛéð›Ú›¼¼                   °™ 	    	                	›ŸŸ	­¿½¿ÿÿÿÿÿÿÿÿÿß¼¾Ÿ½Ÿ­½­°ù¼©ééÉ½©	¹	                      ðš
	    		                		éÚùþûÿÿÿÿÿÿÿý¿ÿ©ðÛùûÛëûðð°Ûš° œ°ð©À°	                  	  û	žœ	        		            	 °½¾›ÿÿÿÿÿÿÿÿÿùÿß¿¼½ééùÏŸŸŸ­°ùéðÙð™ð°™	Ð°	                      ð 	©  	                    		 šÙÿŸ¿ÿÿÿÿÿÿ¾ÿðúÛËÚ›ûË¹é©é›	¹«Ê	É¬°©	                       ùž© 	     	              		ÛéÿÿÿÿÿÿÿÿÿžŸ¼¹ëß¿ÞŸŸðÚÛÀðÐÐ	©	                    		 	¾	© ÚÙ  	 ™      	  	             	Ÿ¿ÿÿÿÿÿÿÿÿÿûúÛ©úÐ¹ðÚŸ°›	°°­š	                	      ùð›	«   
                     ¼¼¿¿ÿÿÿÿÿÿûÛÚß­ð¹ðÛùéû­©ðùË°ÚÙ©  	                	        ð°ð œ  		                     	¹ýÿÿÿÿÿÿÿþþ½°Û­©Û›ð›™é­©
Ð› 	                     	 	  °°¹  	šÐ   		    	              	ûÿÿÿÿÿÿÿÛÛÛ°ùÐðÙð°Û­¼¼ù  	                  		       ù	©	¼   °	   		                 šŸÿÿÿÿÿÿÿÿ¿	ðÛ›Û­š›	¹¼¼° 	                          úšÚ¹©©                          	ûÿÿÿÿÿÿÿ½éþ›¼°ðœœ›ÐùÉéÉ		É¹                  		     	  ð šÚ œ  š	 	   		                Ÿÿÿÿÿÿÿÿÿ¿	¼š™	é­©©©ššÚššÀ                        	   °›½		©¬ 	    	                   	¿ÿÿÿÿÿÿ¾½¼›É­šš›	ÐÐ¼¹É­	É		©                   	        ð ËúÐ›	
	    š                    ¿ÿÿÿÿÿßÙúÛð¹™ÀÚ	Ëššð                          		  ù©	 ð™     		                   ŸÿÿÿûÙ©é	Ð©©	š™É	°°Ðœ°©	                             ð°½¼	À	                      	¿ÿÿùü¿Û›Û›œÐ°Ú	
šÉ­°°œ°Ð                          	   °¯Ëš¼°	   	 ©                    ¿ÿýûÛü¹í°ü™Ë™ ¼œ¹ Ú›		É©	 	                          ù	›É 	    	                    	ÿÿûÿý¿ÿ°ý¹ú¼¹	©	 Û	žð¼°                      	       ú¼°ð¾ššŸ    		  		                ¿ÿÿßÿùÿß¿éŸŸ	°Úœ°š	©°°™	©É                         	  	 ùàžŸ™­	©	     	 	                 	¿ÿÿ¿½ÿùûßŸéðž›					 Ð	©É¬°Ð°                           	  ð› ©šž›°ž                       	ÿÿÿÿÿ½¿ÿûÿŸ©ù¼›
šðšð¹	°                        	    	ºÀšËéü¹
°                    	ÿÿÿÿÿÿÿùþÛýÿÀÙ			 ù°é	                           		 ù°­		š›Ëœ œ      	                 ÿÿÿÿÿÿßÿùý¯Ÿ½ù¹©
ž° °™	à	                             ð­ °­¼°ù©                     ¿ÿÿÿÿÿÿûÿ¿ûý¿Úžžð	 Ð		
		°š                             °™
 ›ËŸ       	°                	ÿÿÿÿÿÿÿÿßßŸ›ü¿ÛÛš	© Úš		                            ð
É
Ÿ ¼°›	é	 	    	 	              ›ÿÿÿÿÿÿÿÿûûþýûß­¼°	¹É š	š	ð	                              	«	šÐšÚÐð                        ¿ÿÿÿÿÿÿÿÛýí½¾Ÿ¹ûËÛ°ðÀ°ž	 	 	
                         		 ð  š©	¹©	                      ÿÿÿÿÿÿÿûÿÛùûÛžß¼½­›¼šœ°š	                             ›°		ééŸð                       ›ÿÿÿÿÿûÛß½¯Ÿ­žÛšŸžšÛ½¬š	©
	 	 Ð	                      	   šœð ° š °™ð                       Ÿÿÿÿÿÿÿÿ­ùùéÚ›
ÛÐù½°Ú›É°ž		                             ™°	š	©Ëà›   	                   	ÿÿÿÿÿÿ½ùù¾Ÿž½­›©­Ë½é°ÚÚœ 	
                         	  
Ðð
 ­ Ð°›ÉÚ                     ›ÿÿÿÿÿÿþ¿Ÿ°™	šœ›š°ÚŸ©		                               °›  š™	
œ¼°©                     ¿ûÿÿÿÿÿÛÐÚÛ	ðù­	¼¹©Ë­¹ðšž		  	                          Ð¼ð ©ªš	©©     	                	ÿÿÿÿÿÿûý¿¹ðœðÐ¹ÚÚßù	é	  ©                          	 	°	 šÐ¼	Ë½    	    	            ¿ÿ¿ÿÿÿß¼ÚÙù	ËË	™¹©Úšðš	                            ð°

É©©éË    	               ŸÿÿÿÿÿÿùÛŸ¼ùÚÐÚ™Ÿ­©­                           		 šÛ à 	  žš¹      	            	ÿýûÿÿÿßŸ½ÿÛý½­©	š›É°Ð°¹ëÛœ¼©	 	                          
	 	° 
» Ú	½   	               ¿ûýÿÿÿ¿ýÿÛÿÛÛÙÛ	É©É­	ÉŸ­©©	œ°	  	                         ð	°
   °©ð™    	
              Ÿÿÿ¿¿ÿÿÿÿÛÉ °œ½°ššššÛÛÐÐ¼°	 	                           			 ð 
šš		ðúÐ   		 	           	ÿÿùéÿÿÿý¼°›Ù©­	é	­		É		¿«É°é 	 	                       	 ð Ë     š›		 	                ÿ¿ŸŸÿÿÿÛÉŸÿúßùé	 ™­°ššÚ›Ï	                             			°°
 °	¬½é©é     		          Ÿ¿ý©¿¿ÿ½›ÿÿÿÿÿïðð© 			¹ë	É			 	                        š   ð 

  °›œš	               ¿ÿûÚŸÿÿÐ¿ÿÿÿÿÿÿù¿­šÐ	°ð¼šÛß°°Úš                          					 °  
 ùé	À  	  ™         	ÿ¿™ÿÿðÿÿÿÿùëÿÏÚŸ  ™	­ë		©                           ° 
 š   
  ËžšÉ©      
         Ÿÿÿùù©Ÿÿÿùð	½°ðû©Ë	­ žš½¹Ð½©			©                         	 		©ð 
 
 °	©°š    	 ™         ›ýù½ÿß	¿ÿžž™Ð 			À°ð	  	©šß©Úžš                           š   š°  °  ©ðÐš            ¿ûþš›		 ùùùùé½›°		 	 ù°ð				                        	 	  °ð    
š	©éà©     	        	ÿÿ		Ðš›ŸŸŸŸŸË™		   	 ß½¼šÚœ°	                         	   ›Ë°
 
 
ššÐžŸ™œ	  	 š      Ÿÿ¹ù©ýûÿÿÿÿÿÿ¿Ûð½©Ë
­™	¹ 	©		                           	 °   
    °½©
Û ©              ûé	ŸûÿÿÿÿÿûÿÛðŸ	Ú›Ùéš	©©©¬°ž›šÐšš	                           	©ð  ° 
  ËÙ­½ ° 				       Ÿß™ °úßÿÿÿÿûßŸ¼¿	ð½­©ž©É	¹ÀÙ	É		                           	 
°
     ššÚš	             ¿û¼°™½¿¿ÿÿûÿúùûÐš		Ÿ	©žšš		 ¹ ðš™
                        	  	
	ð 
š   °	­­©­	   	 		      ÿÛÉ›Ëÿÿÿÿÿý½Ÿœ™­©ðšÐðÐž›	é	Ðš	                     	    	É 
        °ÛÛ	éé	           ™ûý¿À™½¿¿ÿýûÊš	¬›Ð¹	ùžš                         	  šš°°        ¼ºÚš          ÿûÛÙ¹©úßÿÿÿŸ™à	©š›œ½œ°ûÐ™ › É		                          ©ð 
    
›Ð°ž    	      Ÿÿÿÿ¿	ÐŸûßÿûéð™  	›šš™°¹½ŸÐ¹é ½© š                         	­©
 °  
    	 ÿ©           	¿ÿ¿ÛÐÛ©¿ŸÿÿŸÛé°	 	¼½	ËÉé›Ú	é	
                        	 °û      
 ©žšž°    		     ÿÿÿÿ¿½ž™ûÿÿûýùÉ¼›	É°	°šù½¿½¹é­°©°š	                        ©

ð        šœ½­	­	          	¿ÿÿ½ý¾™ð½¿ÿÿûÿ¼›© Ÿ	ù™ËËŸ›ÙÀÐ	 	   		                 	 °
¹° 
   
 °©©šž¼     	    ÿÿÿÿ¿ùþ›ÛÿÿÿÿÛËÐðŸ	 žûÛï½½©éé©¹©©	 ° 	 žšÚ                 © «
  	     
	ééðš         	ÿÿÿ¿ÿŸù¼½ÿÿÿÿ¿Û	ð°™ ¹¿½¿›ÛŸ›ŸšÐÐœ	  	 			                š	©«ð      
	 
¼¼½	        ÿÿÿÿŸÿŸÛûÿÿÿÿß­ùÛÉàÙ©ËÙÛËý½ùéééÉ©©©© 	  œ	°               	 ©
¾
 ° 
      °¼š›
ð          ›ÿÿÿÿÿûûý½¿ÿÿÿûÛ½»™ ›ž¾¿¿ŸéûÛŸ››Û	  	© É               
š™ °ð 	 

   	 °¼¼½     	    ÿÿÿÿûßÿŸÿÿÿÿÿ½ÿÛšœš™ü½½ùýù¿¼ŸšÞžð½	 	  É	°               	à °
  

		 
š
	©°¹à        ŸÿÿÿÿÿÿŸÿûÿÿÿÿß¼¹éËËŸŸ¿Ÿ¯ý½¾Ÿ›™Ë™
œ 		 ð                	© ° ð  šª     °©œ š        ÿÿÿÿûÿÿ¿ÿÿÿÿÿ½ÛÞ¹	°¹½ùëÞûßšÛùððð¼ž©     °              	©­
š 
 °  ºé     	žš	¹        Ÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿûé©ù¼½šŸŸ½¿½ÿŸŸŸŸ›	©	©		  	©Ë                š	 °ð 



 


	©šÀš	        ÿÿÿÿÿÿÿÿÿÿÿÿÿßŸŸÐ™	¹ËÚÛÛýûÛùùðž¼Ÿžž
 		 œ               	ÊÚ
             »Éà¼°        Ÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿûËÐ½ÚÛ½¿ÿý¿½¿ŸÛÙ©					  	  	              	©	  š 
°     
 
    °›		   	    ›ÿÿÿÿÿÿÿÿÿÿÿÿÿýð½ ù©¼°Úù¼¿ËÞ½¿éù­œºÚÚšž   °                 	 °š   ð      
   
šŸ šœ       ÿÿÿÿÿÿÿÿÿÿÿÿÿ¿Ÿ	Û	Ð™ÛÛßûÛÿ½¿ÛŸŸ›©Ù	°Ð		   	                  
 ° š      š 
     ¹©         ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿËÚ	ù©é©­¯ŸÿŸÛý­úÚÐÛÚÙ©	  	                  	 ž

 © °  

      ›ÊÀ É  	    ŸÿÿÿÿÛÿ¿ÿÿÿÿÿÿý½©Ÿ
ÐŸÛÙð°ð¿ËŸ¹ÛŸ°½© ð  	 °               	  ©
  à

	   
     ¹©
      	¿ÿÿûÿÿÿÿÿÿÿÿÿÿ¿Ÿ ™Ÿ©­¾½½›Ù½ûß­é	œŸ		©   	                š©© ©© °  
        °ð¬°	  		   ÿÿÿÿ½­½¿ûÿÿÿÿßÿ©½­¼	ý¼™ÚÚð¾›Þ½¹¿™ð»	©©                      

 
 ð    
 
   ©         ŸÿÿÿûË›Éýÿÿÿÿÿ	Ð™¼š›ŸÙü¹ÚßÉ­ÐðÐœ™	                   		©  

°          ° °Ú  	  		   ŸÿÿÿùùðÙ›ÚûÿÿÿÿŸËËÉ©Àù°°©Ÿ«Ú›Ú½šš                       ° 
 ° 
 
      

šš ™        ›ÿÿÿÿÿ¿ž¹ŸÛÿÿùé		É	©	¹	©Ú½	ðË                   ™¬š	  ° ð      ©  	  © 
À	 	   ÿÿÿÿþÛùùËËÿÿÿÿÛÛ°ÚÐ°°ðûËËÉ©žš›š                      ›	   
 ©   
   
  
  š°	      ÿýÿÿŸ¼¼¼¹ŸŸÿÿÿ¾œ	É	Éù½ šÐ¹°¹­­	°                   	  ° ©©
° 
       ° 	­­
  	    ›ÿ›¿ðûÉ		šËÛÿÿûÙœ°ššÉ¼½»Ððù¼°šÚËÚÙ°¹                    šš	ª  š
 ú         
   ºš›É	       	ÿüŸü   	¹¿ÿÿ­©	 			ÀûÉ 	Ë		™	­­	© 	                   š
	
   °  
   
   
   °ð      ÿ	ÿ    	ßÿýûË™ 	Ÿà  	   šœÚ                   ¹	 ù  © ° ð     
      
š©½	  	    	ûË 	ï	   ù¿ÿÿ½™  ÿ     °©©©Ë	                 	 		 ë	  šš  °         
 
	àð­­       ÿý©    ™©°ÿÿûÉ   ½ Ÿü	     		ÐÙ©	 	                 	 ÚÉ°
š°° ©  ð            
¿«š 		   ™ÿûÚ  	  œŸ¿ÿÿþ ð		
Ÿ      	 	  	                	  š	°é 
  
 °              š°ðœ   ©  
Ûÿÿ½	 œ›	ÿÿÿ½©	 Ð		      	éœ©	                  	 	  °šº   ð        
    º©žš     ›ÿûýÿ½ðð©šœ¿ÿÿùÿœ°š© ðð  				©                      Ð° ©  
   
        
  
 © 	      ÿÿÿ¾ž›Ÿ©Û½ûÿÿéË		 		Ê™ Ùœ°šÐ¹                  	   	

šÊ°©
  °             š
šÛé  	 	  ùÿ¿ßŸž°™©ÿÿûÿŸ¼›  °š™Ê™
		É©ÊÀ	                     °© °
° 
   ð 
           ©  	      	úùé­ 	¬ž›ÿÿûü»Ÿ		É™Ë™ 	                       
š  ©   °            

	©
Û  ›   ›ÿžœ  Ù¹ÿÿýÿûÐù   šœšÐŸ	©Ðš                  	  © © 
                  
 	 		     	ÿÿ›  		­ºÿß¿ûÿ­¯	  			­	­¼¹žš                           
š
š  

  ð            

  	   ÿÿÿûÛŸ¿ûßŸ¿ùÿýûßé		   ¼	 				à                    		­© °       °
            °©  ¹ 
	  		ÿÿÿÿÿÿÿŸ¿ÿÿÿÿûÿ¿ž½
     	©©Ë   °                          ©ë š
    ð               			    ÿÿÿÿÿÿÿÿÿûÿÿ¿ÿÿßÿÚù	  				                     	©
žš
   
                    °	° 	   Ÿÿÿÿÿÿÿûÿÿÿÿÿÿÿûÿûÿýï 	 	 œ°                           	©  ©      ð
           ©  	 °	 	 		ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿÿ½¼½ š	 š°     	                  	  ú 	        °              ©  	 žš 	 Ÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿ¿ÿÿÿÿ¿ÿûËÛÉð 		                          
	 ° 
       à            
    °			«ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿúßùé°                           	 Ú
        °                
› °¼ 
Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ÿÿßûž½                              	 	
        ð                  ™­			 ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿÿÿ¿žù 			                           	 
                            ¬š°  œ›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý¿ÿùÞ	    	                       	
š°         ð                 			Ë 	¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ý¯ž¹ Ú  	                          	É
          °                 
°°š	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿÿûùù 	 	 	                         ©­ °          à                 	 ÚÐ 	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛßÛË	                             œº
          °                  šÚ° š›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°¼½ °	 	                      
½	           ð                  		ËÐ Ÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿûÿúùÛš	  	                         	 	                                °°ð ™¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿéÿ©Àš	  		                       ½©©            °              
  		É	ëÐ›ÿÿÿÿý¿ÿÿÿÿÿÿÿÿÿûÙ	ëÚ 	 	                        	  œ °      
    à                  	­°­ š¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿéûÛ	 ¹    	                      	¼©             °                 
ŸŸš	™ÿÿÿÿûÿÿÿÿÿÿÿÿÿÿÿÚŸ­ù 	À 	                      	  °	
                              é ­	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿûÿ	Ÿ š°	 	                     	­žà
            ð                 °šžŸššžŸÿÿÿùÿÿÿÿÿÿÿÿÿýÿ	ùù© 	 	  		                       
	                                 	éé©Éé		½¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿšžžÐ  	                      	
š
	            °                  šŸžšð›Ëÿÿÿý¿ÿÿÿÿÿÿÿÿÿûÀ›Úš 	  		   	                  ¼ 	É 
            à                 ™­ °©ééÀ¹ûÿÿúÿÿÿÿÿÿÿÿÿùü™ý©   š 		 	                	 °° 	            °                  Úý	žž½Ÿÿÿý¿ÿÿÿÿÿÿÿÿÿ¿ š	à š 		                    	 ð	ËÀ  
           °                		©¬™ú™­šÚ¿ÿûÿÿÿÿÿÿÿÿÿÿÞ 	 ™    	        	         Ù š°             à                  ÚÚÛ­	¼	½ùÿÿŸÿÿÿÿÿÿÿÿÿ¯	›	  		  		               	   
Ð°Ú  
            °                 ©°½°éúÚ›ËÛËŸÿðÿÿÿÿÿÿÿÿûùýÀ 	 š 
	© 	                	œ	© š              
            
    	Ë›	ùé°°šÛÿÿÛÿÿÿÿ¿ÿÿÿÿðÀ°°      	     	 	         Úœš 
              ð       
         Êœ¼ðð¼¼éË­¿ÿ­¿ÿßÿÿûÿý½û	É	 ž	   		         	       	 ù 	              °         
  
     	›ž›™©ËšŸûÛÿß¿ÿÿÿÿûï¼š  	 	                °   žÙ 	                          
    
  ° Àý©ËÊý¹ß½ËÿÿÿýÿýûßÛÉ		 				 
     ©    	   	­©  °               ð      
            °šß	½šž™©ÿ¹ÿ¿ûûûûý¯½°   	
            	       	 ž°                 °         
 
    
   ©	­ð°úÝ©ëÚŸíŸùýÿÿß¯¯Ë   	  	 	  	    	   	
   	 é ©  
                   
 
           	 
šŸ«œ¹í¹©ÿûúÛÿÙëÛœ	 	   	       		  	    	   
Ðð©                 ð                  	 	éÉùððÐÚžœ›žŸý½ýÿÛš™ùé         		         	      ™	       
   
              
        
    °Ÿ¯­	©éé­»ï¿Ÿ¾Ðÿ   	     	        š    š  ÊÐ 
  
     
         °         
           	¼­ŸšœœšßŸÛðù©Ùð    	         À     	   © š                 à     
  
          
	à°Ÿšðß	­©©	°ù­¯ž™ù©		         	         	  	 ž	     
          

  °               	 
   °		­­	 šœé°ý½¼žš        	    © Ð	É   š  š	                           °  °   

  °	 À ¾ÚÛÉË 		É°¼›	              é 	

        °   
 
               °                      ™©°° ¼É­°            	  	  	   	 	 ¼ ðšš  	           
 
 à     
           
      žü°œ é	 ¼š	            	  °šž  °      ° ð   

 	      
      °                
      	éé

 		­	              ¬š   	À  
 žë
šš
	 
      
               
               	°ÉËÉÉý 	  	à      	 	   			 ° Ð	é    š	©°©     
     
     	
  ð                    
   °ù°°š 
Ð  	     	   	 
 Ð°	ËË °   	  ­
ËÊš	 
š 
 °                      
	 
 
 
         	 À­	ÿ    é       œ°   			©­©	 	     œ°°°©šÊ  	               °       


      ©    
  š¼šÿ        É   ¼šžžË     	   ›
 š© ° © 
                à        
  	 
      
	©  		Ë ð   š 	  °		 	 ¼	Ë         œ°°Úš	 °	©   °

    
        °    
    
        š         ªœ° 	Ë É­		àË    ™àù Ê     	 ©  é©©Éë  ¼°
 

  	           
           
   
	   
   
  ðÉýºÐ¬¼	  À	      		 ÐÚ› °û
 °°              
   ð          
             

 
	  šÐ	¾ššÙÀ°É š¼		     	 °   ½©©¬Ë  °  
      
   
 
          
    
   °
 
         	 °Ùí Ð	ÉÛÉ ¹Ë½­­ ­ 
     
   	É žžš °°
šš                  °         	   	
     
     
 
Ú¯
 ­ÚËé  ­ 
Ð   š    		 	 °ð›	 © 
     
 ©
            à       
š
      
  	       š	 °½ÐÐ	šÐà­  	  	        Ðà	
Éà 	 © 

 
 
   
 
 


    °    
                      
   «ëêÊœ
    	      		©	 É	­ºð	
 	  	  š 	©

                  
  ©© 
    
	
           ššœœ½	 œ Ë   	         
À  Ð¼¼š	
 	 ©  š

š 	 
	 š      °     °      š 
    	  
   
           ©  à© ð
        É		 ©	éªÀ© ©    ° š 	    
     š    à     °   š    
 	                		üœ­Àð 	à šÐ    	Ë   ¬žðð°Ð° 	   ©à ° 
 
	  
     ©     °       
  
                      

úÛ	Ë À     šÚ ÉË	É©©
	

   °š š  	 ° ©                       
  ©     
  
           	 ­íà¬ù°    ›É	ðšÐ°žšðÚ	  
  
 
 °©
	  	              °      	   °    	       
     
     Ð 
ËË		­­¯Êžœ°­éé© šš    
	© 
ù                  à      

		  °©     	             
      ­ °ðÚÚúÚÚÙ½éúßÚðšš     š     
 »
 °°          
    
°         

š      	          
       © °°¬°ùéšÚà½­š	   
 °  ©  °°©¬°š          
 
  	©     
 °
š  	
       
       	
 	    °š	É¬¼°°­­Ÿ
 ° ššš  °	        
š
 š

               °           ©  
 
š
         
    
  
 ° °
	 š   	
      	 

   ©©
	 š          š    à         © ©  	©             
       
	 
š š
	

š 	
         ©©   ©

  š
š	  © 
 
     
 °        ©    	 °

 °      
           	   °š
 °   ©	¬

	 	    šš   š  š 	 

	  °  
  
                
  	
     
     
  š
 		  ©	    š °           š

  °   	ª         š   ð         š
 ©   °        
       	

 	
    © 
 ° °	   	 © ©© © 
  		  
 š                  

 	
  	  °  ° 
         š
	 © 
 
 
   	      ° 
  	  © š	

	 š	

    
     
 °        	 ° 	
  ©
   š   
     
  

   š  
  

š  °° 
š  
  	 © 	© 
  	 š 
 	         
  à         ° 
	 °©
	   
  	 	   
  	 ©
	          

  °      



š ©   ¼š    °  
   	 °          © 	
       	    

   
   
          	  
     
              º  °  
š  
               © © ©  ° ©
  
   
 
    ° ©
	         ° 

 	©

    
	   ©  °š
	©     ©      	 ð             š     
  	   š     
      
 
  	   °	 š 	   °    
  °	   š © ©  °    
  
            
šš °   
 © 
    
        
	   
      
  

  
     

  
› °°  ­© 	  	«  
     °           © 
       ° 

    

  	 	      š      	
š š 
  		 ©  «­°
	


   °¼°       à            š	©
 
       	  
   	  š

  
©      	 
   š 
 º     º
° 
	 °    
š   š  
 °           © š    
   
   
   
   
 	
        

  
	
    š¼  	 
 		 °š 
	 
	©   
                  Ú šš
          
  
  
    °° 
 	   	 š  
    © š
 

	 	  
	¬	 š	       
  °          © ©  	    
    
     
	
 
š

   	


       °°©	  
š©	  š
   š  
   °       à           	  šš       
   
   	
   	 
   	 	  © š ©       ªÚ
  
 š¬ š°
š š°      °          
š š              
	 	
  

  

    	     
     °©©
  ©
 © 
š
	 
 
   ©à   
            	  °  
        
	 š   
    
		  
	      
 °°°°©©© 	   š©©©©
 ššš	 	
 	 °šš   	   ð          © 
            
  © 	 °	

	©	  	 	©   
   š      š	
  
 š  	 ª  	 
	
 ©     
          
                   
 © 
     
  ©©  
 ©©©©	©   
 °©© °	©© ©	    °š°ºš 

  ©°                                                        
           ° 
 
 °  ©                                ß­þ, 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2, 'http://accweb/emmployees/davolio.bmp'),
	(9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '1966-01-27 00:00:00.000', '1994-11-15 00:00:00.000', '7 Houndstooth Rd.', 'London', NULL, 'WG2 7LT', 'UK', '(71) 555-4444', '452', /       ! ÿÿÿÿBitmap Image Paint.Picture         PBrush          T  BMT      v   (   À   ß          S  Î  Ø                €  €   €€ €   € € €€  ÀÀÀ €€€   ÿ  ÿ   ÿÿ ÿ   ÿ ÿ ÿÿ  ÿÿÿ Ù™Ù™™™¹ÙùÙÙÙ™ÙùÙ™½ŸÙÙÙÙÙßÙùùÛÛÙÛÙÛŸÙýÿÿÿÿÿÿÿÿÿùÙùÛý¹ù½ùùÙÛÙ½Ÿ™ÛÙ™™™½½›ÝÙùÛÛÙùÙÙ›Ù™Ù™Û™Ù™ÙùÙùÙÙ™››ÛÙŸ™™ÙÛÙý½½½½½Ÿ½™ýŸÙýÙÿÿÿÿÿÿÿÿÿÛß½ÙùÛÙÝÙÙÝ½ÙÙÙ™™™ÙùÙÙÝ™½Ÿ½ŸÙÝ™¹ÛÙ™Ù™Ù™Ù½½½ÙÙÝÙ™™™™ýŸŸÙÙÙÙùÙùÙÛß™ùßŸŸŸÿÿÿÿÿÿÿÿÿý™ß¹ßŸŸŸŸ›ÙùŸŸ½ùÙ™Ÿ™½ÙÙùùùÙÙÙ›Ù™™Ÿ™Ù™™Ÿ™ùÙ›™›™Ù™ÙÙŸÙÛÝý½½ŸŸ™ßŸÙýŸßÿÿÿÿÿÿÿÿÿûß™ÙßÙùÛÙÙÙÙÝÙÙÙÙŸ™™™™¹ÛÛÙÙÙ½ŸŸ›Ù™ÙùÙ½™›ÙÙ™™ùùÙÛ™™½™ùÝ¹ùÙùùÙÙÛÙ½ŸÙÿÿÿÿÿÿÿÿÿÿýÛÛ½Ÿ½½½½™ùùŸŸŸ™Ù™™Ù½Ÿ™ùÛÛÙÙÛÙÝŸ™™½™™™Ÿ½›ÛÙý›Ù™™™ÙßÙùÝùùÛÙÙùÙÙÙýùßÙýßÿÿÿÿÿÿÿÿÿÿŸÛÙùÙÙÙÙÙýùÙÙÛÙù™™™ÙÛÙÙÙÛÙÙÙÙÛÙÙÙ¹Ù™ÙÙÙ™™Ùù™Ù™ùÙ¹™™ùŸÛß½Ÿ½½½Û½ŸŸÿÿÿÿÿÿÿÿÿÿÿÙý½½½½½ùùÙ½ŸŸŸ™™½½Ÿ½Ÿ½ŸŸ½™™½Ÿ›™™™ÙÙ½›Ù›Ù™Ù™ùùŸÙÛÙÙÙùÙÛÙÙÙÙÙÛßÙÿÿÿÿÿÿÿÿÿÿÿŸ™ÙÙßÙùÙÝÙýÙÙÛÙÙÙÛÙ™™™ÙÙÙÙÛÙÙÙÛÙùÙÙÙŸ™ÙÙ™™ýŸ›ÛÝùŸ›Ù™™ÙÝŸ½½½ŸŸŸŸŸ½›Ý½ùýÿÿÿÿÿÿÿÿÿÿÿÝùý½½½¹ù½™ùùÙÙùÛÙý™›ÙŸ½Ÿ½½Ÿ›ÙÙ™™ù™™ÙÛ™ý™ÙÙÙÛ™™ÛÝ¹ÛÙÛÝÙÙÙÙÛÙÙÙÛÙýŸÙßŸÿÿÿÿÿÿÿÿÿÿÿûÝÙùÙÙÙÝÙýŸŸ™™Ù™ùÙÙùÙÛÙùÛÛÙÙÛŸ™™™™™Ûß™ÙÙŸ›Ý¹ÛÙÙ›½½ÛŸŸŸŸÙÙùùùÙÙý½ùßÿÿÿÿÿÿÿÿÿÿÿý™ùŸ½½ùùý¹ÙŸŸ½Ÿ™™Ù™½ŸŸŸ½½ÙÙÙ™ÙÙÙ™Ù™Û½Ÿ™ÛÙ™™¹ÛÝÙÝùßÝÙ½½½½½ÛßÿÿÿÿÿÿÿÿÿÿÿÿýýŸÝ½ÙßŸÙÙùÙùÙÙù¹ÙÙ›ÙÙÛÙÛÛÙÝùÛÙŸŸ™™ù™™Ÿ™ÙÙÙÙÛÙÙÙý›ÙÙ›Ù¹Ù™ùùùùÙÛÛÛÙÙÙÛÝßÿÿÿÿÿÿÿÿÿÿÿÿŸÙ½ÛÙùùù½™ÙùÙÙùÙÛ™¹ÙÙŸ½½¹ùŸ™ÙÛ™™™™ŸŸ½ŸŸŸ™ÙÛÙ™™ÙÛÝÙÝ½ýùŸŸŸŸùùÿÿÿÿÿÿÿÿÿÿÿÿÿÙßÛÝÙß½›ÙÙùŸ™ùŸÙùùÙÝùùÙÝ™ùÙ™™ÙùÙÙÙÙÙÙÙÙŸ™Ÿ™¹ùŸŸŸŸ™ùÙùùùÙÙßŸßÿÿÿÿÿÿÿÿÿÿÿÿÿý½¹ùùý½½¹ÛÛÙùÛÝŸ™™™Ùý½Ÿ›ÙÙÛÛÛ½›™™½™½½½½Ÿ›Ù™›ÙùýÙßÛÛÝÙÙ½½½ùŸÿÿÿÿÿÿÿÿÿÿÿÿÿùÛßÝÙÙÙÝ™ùÙÛùÙ½™ÙÙÝÛßÙùÙÙÙùÙ™Ù™›ÙÙùÙùÙùÙÛÙÙÙß™ÙÙÝ›Ù™Ý™ùÛßÙÙÙùùÙÛÛÙßÝÿÿÿÿÿÿÿÿÿÿÿÿÿÿÝ¹ÛÛŸŸŸ›ÛÙùÛÙÙÝ¹Ý™™½Ù™Ùý½½½½¹ýŸ½½™™ÙÙÙÙÛÙùÙÛÙÙùÙ™™Ÿ›Ý™ß™Ûß½™ŸŸ™ÙùýŸ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ›ÛÝÙÙÙÝŸŸ™ÙŸÝ™½½™ÙÙùùÙÝÝùùÙÙÛÙ™Ù½½ŸùùÙùÙ½™Ù½½Ù™ùŸÙÙÛÙÙÙÙÙýŸ™ùùÿßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÝÙÛŸ½½ùùùý½Ÿù™ù¹ÙÙÙý½ŸÛ›ÛùÛÙÝ™››™ÙùÙù™ÙÙ™Ù½Ù½™ÝÙŸŸ½½½½›ÙÙý™ßÙÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿûŸÙÙùÙÝÙùÛÙÙùù™Ýù¹Ù™ùÛÛÛÝÝÙý™ÛÛÙ™ùÛÙ½Ý½½Ù½Ÿ™™Ùù½Ù™¹ß½ŸÝŸŸŸßŸýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÙý½¹ùùù½ŸŸ™Ù™ÙùÙ½Ý¹ù½Ûß›ÛÙÙ½™™ßùÙùÙùÙ½™Ù™½Ù½™Ý™Ùùù›ÛÛÙ›ÙÙÙÙŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸ™ùÛÙÝÙùù™™Ý½Ù¹ÛÛÛÙÝÝ½™ÝŸÛÙ™ù½½Ÿ½™ÙÝ™Ù›ÙÝ½½Ù™Û½ÛÝŸÝŸŸŸ›ßýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½½½½½½ÙýùŸ›ÙÙÛÛÙù™ÝŸŸŸ›ÙýÛÛÙÛ™ÙùÙÙÛÙÙÙÙù™Û™ÙÙùÙÙ™ÙÙÙÛÛ›ÛÛÙ›ÙÙÙÝŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙùùÙùÙÙÝ™ùù½™™ÙÝ¹Ÿ™Ù½™½›ÛÙÙÝÝ½ŸÙÛÙÛÛÙß½Ÿ½Ÿ½ù™ù½½¹™½½™ÙÙÙßÙùùý½ŸßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÙ½ŸŸŸŸŸÝÙÝ™™ÙÙÙÝ½ÙÙý™Ý½½¹ŸÛÙùùÙÙÙÙÙ½ÛÙÙÙÙÙùÙÙÙ™™ÙÙùÙ½™Ù™ÙùÙùŸŸ™ÙùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùùÛÙÙÙÙÙÙÛÛÙŸ›ÙùÝù½¹Ù½™Ý¹ÙÙÙÝùÙß½½½ý½Ý½ŸŸŸŸŸ½ŸŸÙùÙÙùÙÙùÙ™™ß½½½ÛÛÛÛŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýŸŸŸŸŸŸŸŸÙ¹™ÙÛ¹ŸŸŸŸŸùùÛÙÙ™ÛùßÙÝÙÙÙÙÙ™ùŸ™Ù™½™ÛÙ™ÙÙÛÛÙßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙÛÙÙÙÙÙÙùùÙ™Ùù™ùŸŸŸ™ÙÙÛÙÙÙÙÙýŸÝŸÛßÝßùŸ›ÛŸŸ½™Ù½ŸÙùÙÛ™ÙÙŸÙùŸŸŸŸŸ™ù½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿŸ½½½½ŸŸßý™ß›ÙÙÛÝ½½½½Ÿ›ÛÙ½›™½ùßùÝÝÙÙÝ½½™ÙÙÙ¹™Ù™Ù›ÙÙ™ÙÙÛÛÙÙÙßßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙÙÙÙÙÙùÛÙÙÛ™ÙÙ™Ù™ÝŸ™¹ÙùÙÝ½ÝŸÝùÝÛßÙÝùß½¹½½¹ùÙÙÙùÛÙý™™™ù¹Ù½¹ùÙÛÛÛÙŸŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÛÙùùùÙÙÛÛÙÝŸ™Ý¹Û¹ÙÛÛÙÙ™ÛÛÛÝ¹ùýŸ½½ŸŸŸ™ýÙÝÙÙÝ½™ùÙÙ½™ÙÙŸ™Ý½ŸÙßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÙùÝŸŸŸ¹Ù¹™ßŸŸŸÙùùÝ™ùùÙÛÛÝýÝýŸ¹ý½½ùùùÙÛÛÛÙ™™™Ù™½ÛÙ™Ù½½¹ÛÛÙ½Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½½ÙùùùßùÙÙŸÙŸ™Ÿ›ÛÙŸŸŸÙÝŸŸÙÝ½ÛÛÛÙÛÝÙÙÝŸ™ÛÙ™½ŸÙÛ™ÙùÙ½ŸÙÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÛÛÙÙùÛŸ™ÙŸ™Ù™ŸŸ½ÛŸ™ÝŸÙÙÙß›Ý½ùßýýÝýùÙùŸŸ›ÛÙùÙùÙÛ™ÙùÙÙ™ù›™ÙÙùÙ½Ý½½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ™ÙÙùÙùÝŸ½ÛÙÙ¹ÙŸÙÛÙÙÙ™Ù™ŸŸŸ¹ÝÛÛß½ŸŸŸùßÙÙÝÙ½Ÿ™Ù™™›™Ý½™Ù¹ÙÙùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿß½Ÿ™Ù™ùÙÙÙ›™Ù¹ÙŸ½™ŸÙÛÙÙùÝ½½Ùýýýýùýùß½½¹ý½ÙÙÛÙÙÙŸ›ÙÙÙ¹ÙÙÙ¹ÙÝ¹ÙùùÝÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½ßùÙùÛß™ÝÙ¹ÙÙ™ÛÙÙùùùß™ŸŸ™ÙÛÛß½ÛÛßÛÝ½ÛÝÙÝ™Ù½½Ÿ™ÙÙ™™Ý¹ù½Ù¹ÙÛŸ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÙùù™Ù½™ß™½™Ù™ÙùÙùÙ¹ÙùùùÛÙßÛÝ½ÙÿßÿßßÛÙùÛŸÛùÝ½›ÙŸ™™Ù™ù™™Ù™ù½ÙÛÛßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿýÛÙÙýùý½½ŸÙÙÙ™ù¹ÙùÙÙÙ½½ÛÝ½½Ÿý½ùýùßÙÙ¹ÙÙÝ™ÙÛ™™ÛÙÙÙÙ™™ÙŸßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½™™ùÙÛÙŸÛ›ÙÙ™Ù½ŸŸŸ™ùÙùÙùÙùýÛßßý ŸßßŸßùßÛßÙùù½Ÿ™›ÙÙÙ™ù››ÙùŸŸ™ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹ÛÝ½™›Ù™›ÙÛÙÙÙÝ¹½ŸÙùßŸùýÿ›ßŸßý½™ÛÙ™ùÙ™ù›Ùù™ÙÛ™™ùÛÙßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÝ™ÙýŸ›ÙùÝ™Ù›Ÿ™Û™ÙÛÙŸ›ÙÙÙÙÛßŸÙýýŸÛß	ŸÿÛßÛßÙùýùß½›Ù™™Ù™™™ÙŸÙÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙÛ½½™™ÙÙÙÛ¹Ù™Ù™ÙßŸŸŸ½™ÝŸ½ýýýÙ™Ýýùý½ÙÙ™ÙÙ¹Ùù™™™™¹™›™ù½™Ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ™ÙÙÙý›Ù™ÙÙ½™›™ÙùÙÛÙÛÛÙùÝýùýßÛÛýÿ Ð›ŸýŸùÛÛßŸÙùŸÙÙÙ›¹Ù¹ÙùÙ™ÙÙÛßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÝ½Ÿ™™ùÙŸ¹™™Ÿ™ÙÙÙÙ½Ÿ¹ÛßŸùýýÿßÉÙ		ßýùÝ™ÙùŸ™Ù™™™Ù™™™Û™™™Ù™ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ›Ý¹ÙÙÙ½™ÙÙÙÙÙ½¹™ÛÛÙÙ½½ŸŸÝ½ýŸßŸßÿ›™É ½Ÿßùýùý™ÙÙ½›™™™™™™™™½›ÙŸŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ™¹Ÿ™Ù™ÙÙ¹›™Ù™™Ù™ÙùÙÛÙùÙÛÝûÛý½ýÿý é		ùýùÙÙ™Û™ÙÙ™Ù™Ù™™™Ù™™›ÙŸÙßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙÙùÙÙÙ½™›ÙÝ™™ÙÙÛ›Ý¹ÙÙÙÙÙý½ÛÝýßßýýÿ¹Ú	 	›ŸùßÙÛÙÛÙ¹™™™™Ù™Ù™™™™™™™ÙŸÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù½™™™Ù™ÛÙ™™™ÙÙ½›™ÙŸŸŸŸŸÛÙùûýùÿßß Ë™	Û  Ÿ™Ÿ™Ù™Ù™™™™™™™™™™™›Ù¹ßÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿùÙÙù½½™™›™™™›Ù™Ù½™ßŸÙýßßÝÛßßÿÿ° ™  ž½ŸÙÙŸ™™Ù™™™™™™™™™™™™½™Ýÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿý™½™ùÙ™™™™ÙÛÙ™Ù™¹ÙŸ™ŸŸŸŸÙùùÿÿýÿßßÚ™ 			™½™™™™™™™™™™™™™™™™™™ù™ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ™Ù™™™Ù™Ù™™™¹™Ùù™ÙÛÙÙÝùùßßßÛßßßÿÿ	 			 ™  ™™™Ù™™™™™™™™™™	™™™™™™ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ™™™Ù™Û™™™Ù™™Ù™ù™™Ÿ›½½¹ßŸŸÛßßýÿýÿÿšð    ™™™™™™™™	™™™™	™™™Ù™™™ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙÙù™™™™™™™™™Ù™ùÙ™ùÙÙÙÝ½Ýý½ùÿßýÿÿù  ™	    ™™™™™™™™™			™™™™™™½Ÿ›ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù™™™™™™™™™ÙÙ™Ù™™½½ÛÝ¿Ÿßßýÿßÿýš 	Û          	™™™™™™™™™™ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿù™™ù™™™™™™™™™™™™ÙÛÙ½ŸŸÝùùýÿßÿù¹¿œ™ š        	™			 		™™™™™™™›ÿÿÿÿÿÿ¿ÿ¿¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ›™™™™™™™™™™™™™™™™™½ÙÿÙùßßßßÿÿ™Ü	 ° 	              	 ™™™™™ÿÿÿÿ¿ûßŸýÿŸ¿Ÿûÿÿÿÿÿÿÿÿÿÿÿý™™Ù™™™™™™™	™™™™™™™ÙÙ½¿ßùÿßÿù™É©ÿ™		
			                			™™™™™™Ÿÿÿÿ¿ÿ¿û¿¿ûûùû›ÛÛùÿ¿ÿÿÿÿÿÿÿ™™™™™™™™™™	™™™Ù›ßŸŸßÛÝÛßýÿù	ðŸßù°	 	                	 ™™™		™™™Ÿÿÿýùûù½ÿû½½¿½¿›½¿½ý»ÛÿÿÿÿÿÙ™™™™™	™™™™™™™™ÙÙÙ½Ûýýÿ¹	ù½ÿ	 	 ¹	                				™™™™ÿÿ»ÿ½ÿûÛýûûÛûÛý½½»¿Ûÿ›ûÿÿÿù™™™Ù™	™™™				™™™ÙùùýÛÝÿÿ		 	œ› ž›À                 ™™	™	™Ÿÿû¹ÿ¿Ÿ¿Û½½½½¿›ûûßÛÿŸÿŸ½¿ÿù™™™™™™™™™™™™™™™½™ý¿™™ 	 °Û		 	 ™                   	™	™	Ÿÿ™ûÿûùûùûÛûûûÛ½ùùû»ùûù¿ŸŸÿù™™™™™™™	™ ™	™™™™Ù™ÙùÛßÛÙ	 	 		½™À›Ú                    		™™™ÿ©¹½½¿½¿¹ùùý½½ûûÿ½ý¿½¿Ûûù¿ù™™™	™™™	™™™™™™¹ÙùÛÙ™™  		Ù	° ™  		                   	 ™	™ù™½»ûÛûÛÿ¿¿›ûûŸŸŸ¿¿ŸŸ›½½¿¿™™™™™™™™™	™™™™	   	  ð­		™ù		                     	 ™™Ÿ°›ŸŸ¿Ÿ¿›ÛÛÿŸÿûÿ¿ÛÛûûý»ùù»™™™™™	™™			™™™™™™™       ù  ™ÙÙ š                       		™™ð		™ý¿½½½½ûûùÿŸ½ùý¿¿ÛÛÛŸ›ùù™™™	™		™™™™™™™™         				›™  ¼                        			Ÿ›››½»ûûû½½¿¿ùÿ¿ûûÛÿûûùû›š™	™	™™™		™™™™	    			   šÐ° ðù	Û				                       	™Û	 ½»ÛÛÛß¿¿ÿÛûùùÿŸùûŸŸ¹½½™©™	™			™™	™	™          		š	™Ë°  ¹                            ››½¿¿¿»ßÛù¿ŸŸ¿½ûÿ½ûùÿÛ›¹™		™	™™™		™        	      		­					                        	 			›ÛÛß½½û¿ŸùûûßŸ¿Ûß¿Ÿ¹¹ù°™				™	             	 ™¹ûÐš  		                              ½»ûùûÿ¿Ûù»¹½»ûÛÿûÛùÛû™©	 			™                	
™ Ï½™  š	                           	ŸŸ¿ŸŸ¹½¿¿›ÛŸ½¹ûùû½Ÿ¹››™			                	  ­¹™ûž 	                              ™ùûÛûûÛû›»™½½»ÛÿýûùûùÛ		  			 	              		   	Ð	™™	©                              ›¿½¿½½½¹ùÙŸ¹¹½»Û›»ÛŸ›¹™°		 ™	                    	
™ËÉ ° š                             	½¿½»Û¹ù›¹¹™½¹ù¿ÿß½»ùÛ		                       	 		
ù›°	 		                            ™¿›ûÛùù»Ù››Û››Ÿ™¹¿Ÿ™û½°                       	 š™		û© š	                              ùûÛù››Ù¹½½¹ùùù¿Ÿ¹ûûŸ›™	                        	  ©	À°ùË œ ©  °                            ›Ÿ½»›»Û››ÛÛß›ùùù›Ÿ™¹ÿ›                        	 				©	ß	 š› 	                            ½¹ûùùÙ¹¹ù½½»ý¿ŸŸ½¹ÿŸ›ù¹                             		›Éù­		 ™	 ©                             ûÛ››¹ŸŸ›ÿß¿ÛûùùÛ›ùù¿                          		
šÐšÙŸ°š›  	°                            ›Û½½¹Û›¹ÿÿÛÿÿÿßÿ¿¿Ÿ›¹ù¹                       	  	  ½	ÙþŸœ¹©	™ð                            	½»Û›™¹ûßûß¿ûÛÿ¿ùýùù½Ÿ½°                           ¯™¹		 	                           
ÛÛ¹¹ÛŸŸùÿ¿ÿÿÿÿÿÿûÿûÛ¹¹ù                      	    	 	ýÐ
› 	                            	¹½½¹¹ûùÿÿÿÿÿÿÿÿÿÿûß½›Û›                        	
 ½ùú™©¹é	©	 	                           	¿¹¹™½½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½¹ù                       
É ° °ýýœ	š› ™
                           Ÿ›Û	»Ûûÿ¿ÿÿÿÿÿÿÿÿÿÿûÛÛÛ                  	    ™			™ÿù	»	 	 	                          ù½›Ù¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿½¹                     Ÿ 	
	ËÛÉßÛÙ›¹š° 
œ	                     šð    ¹½¹¹¿Ûß¿ÛÿÿûÿÿÿÿÿÿÿÿÿÿŸ›                      ð  ™		Ÿùé¹ © 	                      	    Ÿ››Ÿ½¿ûÿÿÿÿÿÿ¿ûûÿÿûÿÿýûý                   	  ° ÐšßŸž™ ½°	  š                     
Ðû   ù»ÛÛÛÿÿÿ¿ûÿ¿ùÿŸÿÿûÿß¿ûùû                 		 ›  		 	©­¹ùÉéŸ	 °	                     		 Ï  	»Ù¹ûÿûÿ½ûß¿Ûÿ¿ûùûßÿ¿ÿÿÿŸð                  
 		  	ÙÛÞŸ™›ÉÙùùú°	Ê©                      û›°  ›¹ÛŸ¿ÿ¿ûÿ¿ÛÿŸùÿÿÿûÿÿ¿ÿÿûß   ›                   ð½ÿËÉ½¯›		
™	 	                   	¯šÿ  	ùŸ¿ÿý¿ß¿½ÿ¿Ûÿ¿ùùûÿÛÿß¿ŸŸû                		   	›ÛÙùù™Ð›©é 	                    ž	 žù  ›¹ûÛÛûÿûßÛùÿ¿ÛÛŸ¿ÿÛÿß¿ÿÿÿ½ù  Ð             	      ù¿ùËœ½¹šÚš	»
                   ¹°ÿð  	Ÿ›ûÿÿÿ¿ûÿÿ¹Û™¹ùÛÛÿÿ¿ûÛûùÿ¿  °               	ËßÝ¿ž™«ÉÐ™™                       ©ÿ  ›ý½¿Ÿ¿Ûß¿›Û™¹Û›™½½¿ÿÿÿÿÿ›Ûð               	    	 š™ÿŸ½™	¹›	° ™                        û   ›Ÿ›ûÿÿùÿ¿Ûù¹ýß½ýÿÛÛý½½½½¿ÿÿÚ                  		 ™		ŸýžŸù½©Û°                       ›   ½ûÿŸ½¿Ÿûù½™ýûûÛÛ½¿ýûÿûûÿÿŸŸ¹              	 © œ	š¼¹Ûÿýý ­©»	°	
                          »Ÿ›ýûûÿ½½¹ÿûÛßûÿÛù›½½½¿Ÿÿÿÿ              	 	Ÿ™É¼™œ¹ûÿ½Ÿ°Ú°	¹°	°  	                      ß¿ùûßý¿Ÿ›Û™Ûÿ¿ý¿ÿÿŸ™¹û›Ûûûûýð                
°›
›ÚÛßŸÿß›¹»û	¹©                          ½¹ù¿¿¿›ùùù™ûŸûÿûÿùÿÿ½	™	¿ÿßßûð              	  ½		™Ð¹Éý½ÿŸ½š›Ÿ¹°°                          Ûÿÿÿßý¿Ÿ›™›ùÿ½ÿ¹ûÿÿ¿ù 	›ÿÛûûßù           	    °šœ½›Ÿýùð»°°¹°¹		   	                     	½¿Ÿ¿¿¿¹›™ ½¿Ÿ››™™¹Ÿ›¹  ŸŸ¿ÿÿûû               	éÐ¹™™ùÿ¿ý™ë		š›šœ°                      ¿ŸûÛßÛÛ™ 	û›™™Ù¹™™™™™Ÿ›¿ÛûÛýÿÐ             			Ð©Ú°ù	ÛÛ	½¹
š› ©šš                       ¿Ÿÿ¿ÿ¿¿¹  ™™™™½›Ÿ›¿¹½½»ßÿûÿ»           	    ›	©°š™ýž¿¼°°©	°Ûš™©°  	                  ù  ùÿ¹ùûÛùŸ›™™™™ŸŸ¿Ûùùûß¿ÛÛÛý¿ŸŸÿÐ          	  	
Ÿšùš¹°ùùÐ		¹©¿©©°ùð                        ¿¿ÿûÛ½¿¹½»ÛŸÛÿÿ½¹¹ûÿß¿ß¿›››Ÿ»ÿûý            	 	 ý¹°›ÉÿË«š° ©°š›¹	ù©°                  ° 	ùùûÛ½›™ûÛÛýûý¿››	™›Ÿ¿ûûÛù½¹ùý»ßû            
 ›Ù	ÛËÙù°	Ÿ	«Û		 š°                     ûÿ½½»ùû››ŸŸ¿ûùð™Ÿ›Ùùùÿý½¹›ŸŸ›ß¿ù              	ðð½¯Ÿ	Ÿùéùíé
½¬  	šš                     ŸŸÛÛûŸ™¹ÛÛûûý½¹¹½¹Ÿ››ÿùûÛ™ùùù¿ùÿûÐ         	 		¹	™ËÙù¹°	Ûßš›™°š›š	                       «ûû¹ùùûÛ›Ÿ™ý¿¿›™›Ÿùùù™¿Ÿ¹¹½¿¿ßŸ¿ÿ         	 	  žšùðÚ¼Ÿßù©   ù    °
                 	¹¹ÙûßÛ›ŸŸ½¹›ÿ¿Ÿ›™™ŸŸÿÿŸŸŸùùŸŸÛÛûùùÿ             ™ ý ©©ýÛÛýýÿ  	šš 	   
 ™                 ŸŸŸ¿½»›Ûùùûù¹›Ûûùùûÿÿÿÿÿÿý»™¹ÿ¿ÿßÿÿÿð          	  	©		 Ÿ°œŸŸ¿ùËÿý 	™«     		 	               ðÿ¿ûßŸ½¿ŸŸûßŸ™½¿ŸŸŸýÿÿÿÿÿÿÿ½¹ßÛýÿ¿ŸùûÚ         	     ½©				›ËÙ™ŸŸÿ   	       	                ™ûß½»ûÛù¿¿Ÿûùù™Ÿ¹ÿÿ¿ÿÿÿÿÿÿÿ™›ûÿÿ½ÿÿÿÿù           	 ™	É  °	½Ÿ°šÿß    	  
 	 š	              ¹ÿ¿ûÛÛùÿÛßûßÿÿ¹¹ÛŸÿÿÿÿÿÿÿÿÿ¹ùÿÿÿÿÿÿÿÿÿ          	   éŸžÛ™ÉÛ¿  ð	  	©  	                 Ÿùû¿¿Ÿ½¿ûßûßùÿ™¹ÿûßÿÿÿÿÿÿù™ÿÿÿÿÿÿÿÿûû            	 ü¹	úÛ™	ð›Ù­ß  šž 	                     ÿ¿¹ûùý¿ûÿÿûÿûÿùù™ûßÿÿÿÿÿÿÿÛÿÿÿÿÿÿÿÿÿÿß        	 	 	ÛÞž½¼ ™¹ù¿  		  
    	              ÛÛÛ›ÛûùÿÛýÿŸÿÿÿûùŸ¿ûÿÿÿÿÿûùÿÿÿÿÿÿÿÿÿÿÿ°         	  ¹ùÙ	ß› Ðù ™	©  ™	 	   	               ¿ÿ½½½½¿¿ÿûÿÿÿÿÿÿûùùÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿ð            °		½ýÿ	½ð¹É  	  	   		               ›ß¹û›¿¿ÿßÿÿÿÿÿÿÿÿÿÿŸ½ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ         			Ïýù				¹  °
	 šš  
		              ½ûÛ›ŸÛÛÛÿ¿ÿÿÿÿÿÿÿÿÛÿÿ¿ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿          š	›	©ù»›¹			«	  		 ° 	 ©	 
              ûÿ¹ý¹¿ÿÿÿÿûÿ¿ÿÿÿÿûÿ½¿ßÿÿÿÿÿÿÿÿûßÿÿÿÿÿÿÿÛð       	 		 °	Ûœ
œ¹°ù°°    š	É            	ÿŸ›¹››ÿ¿¿ßýÿÿÿÿÿýÿùÿûÿÿÿÿÿÿÿÿ¿ÿûÿÿÿÿÿÿÿ½°       	
™	éðÜ½­»ùœ¹	©ËÙ ° 	  š               ¹¹½»ÿÛÿÿ¿¿ÿÿûý¿ûÿ¿ûßûÿÿÿÿÿÿÿÿ¿ÿÿÿÿÿÿÿÿ›Ð         	
Ÿ™	¹ýŸÿÚÛšŸ¹ °š	 °©Ê	 °           Ÿ½¹ùùŸ¿ßŸÿÿ¿ÿýûÿŸûßŸÿŸÿÿÿÿÿûùûßûûÿÿÿÿÿÿ™°       	 °¹©ûÿÛÝù©¹ÿœð 	°		
š			                ÿ›»	›ÿÿ¿ûùÿý¿»ÿÛûŸ¿ùûÿÿÿÿûý½¿Ÿ¹ŸŸ¿ÿÿÿÿÿ°ù        	 °© œ›½ûýù¹Û›° ¹  °	 
°		            ››™	°	ûÿûÿÿ½ÿÿß¹½½½¹¿ß½ÿÿÿÿûû›™›™½ùÿ¿ÿÿÿÙ°       	 ™	½¹©É¹ÿý½°Ù°É  °		Ë©û°	 
             ù			 ›ŸÛßùûÿ¿›¹›š››Ÿ›¿Ûÿÿÿý½›Ù¹½¹ù¿¿ßÿÿÿ¹ù      	 	 ­° ¿ùÛß	ýšš
›ðººÛ©©
šš           ° Ÿÿ¿ûÿ¿Ûù½™ù™™™	½ù¿ÿÿÿ»û¹››Ù½»ÿßÿÿÿÿ°        	ÚÙ°¹Ù©Û	½ù	š  °›Ÿ¼»š¹© ©©           	  ŸûÿŸß½¿››šŸ›	››Ÿýÿÿÿß™›™š›¿¿ÿ¿ÿŸ›       		°	©	 ™ËßðÙÿ	© ©«°ûšš °
            ™		 ¹ýûûûû›	¹™¹™›¹»¿ÿÿ¿ðŸ°	™™›Ÿÿÿ       ¼žŸð°ú½½½	­ß š°¹ÿ©©° ° ¹           	©»š ÿ¿¹ù¹™™			­¹	¹ŸŸßÿÿÛ›½	  	 ¹ùÿÿ™	        	©		ë°œ™	ÙïÛ ™ÿ™»ù	º› ¯ÿ
  °            ŸŸ Ÿ›ßŸ›™      Ÿ 		›Û¿¿ÿ¹		    š¿ÿÿ         ™ð	¹ËÉûðŸ›Ù 	ùÊ	
	 ©«¿ë¿ð°©©           ¹°  ›ÿ¿¿½½°     ™ ¹½ÿÿ½½¹	     ¹¿ÿÿû         ©©	¹ûÉÛÐÐ½¹šÛ™ž™° °
šßü¿ÿÏ©­¼Ú           ›™	  ½½¿›ûŸ      	Ë›Ÿ¿ÿûÐ  ©¹	™ûÿÿ     	 ™É	Ð¹		ûÉ™™Ù ßý¼™© 
 ©©«»›ÿÿ»ÿû°          	    ¿›ýÿŸ›    ™›Ÿ¿ßŸ½»	š›™ ¹ûßÿý         šž™ÀÐ°š½­	ÙÿÿßÛÚ	¹©¹ š›»½ÿÿÐ               ›Ù«Û¹¹¹	° 	  ©°¹ùùûûÛ™  ™  ™Ûùûÿû      	 ›		¹ 	ÙŸÿý¿¿¼	 û©àð º 		º»Ÿ¿  À             	»Ù¹			¹	¹	 	™›Ÿ¿½½»Û™™ ™©¹½ÿù        © ù	šÙ	ÿßš	ÛÛ	©©é»©    ™ ©šš        ©     ™¹    	™°Û™Ÿ›ûÛŸ¼š™ 	 ›™Ÿÿ      	 °šŸ		Éÿÿ	Ëß½ùÿð¿¿­ºÉ­ °                	    ››  	 	    	©	¹ûùù½¹ù›™  			ýÿ¹       °	É›ÙŸßß™ßŸßŸÛÐù		°š›š°°    		  	               	  ™° 	      ÛÛŸ›ÛÛÛ½©		 	  šßÛÿŸ      	 ›	ðÿýÿ»¿Ùùûù½¼Ÿœ°™¼» 
©     	 
 	
	                      		©¹ùù¹¹½›Ùš©
 	›ÿŸ¹    	  
Ð°		š™œ¾ŸÉœ™ŸŸ	»     °  	 š	                   	™›    	 š¹›Û›ŸŸ›››¿½½Ÿ™ý©ûé½½°       š›	¼¹ÙÙ°ÛÙéùù°        
  ðË  °                °¹°			½¹	ù›ÛÛ›­™Ûùÿ›Û™û       		š™	©™½	Ù		ÛÐ            ÿÿð 	                 		™   š›	››››©›™¿¿ŸŸ¹½¹Ÿ	™       	°œšÉ™œÐ Ð¼žšÐ™		    °      šÿÿÿÚ                   š›  š™¹		¹½½©™ ™™¹ù		™	¹          ¹é¾ž	°™ùý½ šÐ    
      ­ÿÿÿýð                  		  	™¹  	››¹  ¹ù¿¹ 		›       	©	™ùé™	ùŸšÛÙ ÛÙ   º     
Ÿÿÿÿÿ°                  ™	    š™  ™©Ù ™	Ù ¹š°      	  	°ð½Ÿž
© ÛÚ™	Éÿš¼›        	«»ÿÞ¿                       	  ™	° 	 Ÿ™©	 Ë	Ÿ›	 ™			       		°		Ð©ý½É	°	Ð¿ÛÐš™   °        ûÙ 	                      	 Ÿ 		¹	™°	¹°¹         °			š™	ÚŸŸ	¹¹ßù	©	  
            ð                    		 ™ ¹	 °Ú	©É û		©         	 °°Ú™ý°ù½¼ÿŸ©ÚÙ         °  ¬	 	ÿ                    °¹ 	¹°	 ™¹ ™Û¹	™ °  	        °™ ¿ûðšÛÛß	ýÿý©          Ë
	 ž°šš                  			 °™  			 	©©°™°  	        	š™ÿÿß™ßŸßÛÙžŸÿù    š       °š Û                       		©    š 	™™		°             ©	™Ëí©žŸù©ð½ùð½	ÙŸý  š  °     š   	é                 	 			 ™	  		    ¼¹ ›™            	 ™ûÚßëÐ™	ÙÛ™ËûË      °    °    	°ž                 	   	    ™ 		››™	°  	        	  		ü½¯›Ÿ©ú		Ÿùùœ™	¹É½               ­ °                    ™	 	  	©	   ™	          	 š ÛÛùÿßù™ Ÿß©š¹Ë  ° 
           š›ËÐ                    	  	       °                ›ÿ°°Ÿ¿ÿ
›	½©½™ùÉ°  
            šÉ¼¾                  	  ¹    	  	   	  		           	  ŸÞŸùßÿý üŸÛÚ™ëéÿ¼ù °	
	           	°ûÛ                    		                         		 ÿ¹ïÿÿýúŸ½½¼ŸšŸûËÚ   ©             °                   	   	
 		°  	      	  	     	   	¿ù™ÿÿûýÿß™ù	Û™ùý           

                             		 Ð™ ©		 	        
       š	ü°úŸùù¿ß¹ÐÙžŸÙúœ» ©©
        		 °                         	  °		ù šÉ°            	  		 ¿ßßÿÿð™ðÛ™ßÛùð	°   ©          ©  °	                           š™š™	°        	      

  Ÿÿÿÿý¿½¼½¹­Ÿ©°ÛË  °   
    
©	 
                      			™ 	©	                	 ™É ÿ¿ÿûðšß	Û™šÛ	©©        ©       °  É                       		 	°°Ù 		 °      	         	 °  ¿Ûÿ¼Ù½ýž¼½º              		 © ©                        ™ ™	 ™             	 	 œ	ðü¹û©ŸûÛ	½™œÛ	 ð  °     šš  
                            	 ° 		
                	 	° ©»žÐ›Ùéý½	éËð›	     	©          	                          	 ™	 		                š
Ð Ù ð¿ÿŸŸùü¿  °š   
                                   	   °                  ° 		 ¾ÿ™	 ûßù©	ý»	©›ý   ©    ° 
    
                              	 š 	                 	  ¼°	 Ÿÿéð¯½½œðŸÐ¼ž°Ÿ           	    °                           	   	              	 		 É š	ÿÿÿßÿ¹Û	ß™	«Ûùù       °º
                    	                             	     	   °	ÿÿÿù¿û	 »ÐùýÿðÿÛ    
š       °° ©©                                                    			© ›ÿÿÿ°©ÿÿ™ ½ð¿½¿›ý     	  
    	©  	         	 	                                 	      °ÐÏÿÿÿ™É	û©	½ß¹ß	ðŸ  ©      	  	©             °                                          ©Ð¿ÿÿÿù¯°›ù°ûËûûé¿­ù  	©     
  		
É          	                                        ÉÛßÿÿÿÿß¾ŸŸ¹¹°šŸŸÞÛÙ 
š 	 «  
   °  úð                                                   	ïùÿÿÿÿÿ°™ÿÿü	­©¹°¹     	  
	
    šß¼         	                                        šé°Ÿÿÿÿÿÿù	ýÿ™ù°™	   	©©    	     	© ©ëÙ©         	                                     	  é­ÿÿÿÿÿð›šž	à ÐÛ
™	
 
 
  

 
 
  ðŸŸ
         	  	    	         	                     	É°	  ™ÿÿÿÿÿÿÿ	©Ù½Ÿ›Ùš
 »	    ©	 °°         
                     
                   °	 	 
›ÿÿÿÿÿÿðÙ­ðÐŸ	       	

 °   	š	©              	              À                  Ÿ   	ÿÿÿÿÿÿ»ÛùÚ»	ðð  °š   °© °    
	š                             	                
 	  	  	¿ÿÿÿÿù	½Ÿ¹	Ð¼Ÿ™ 	©©   	ª	  ° 
 	¾          °                   
                 	  ¹  °›Ÿ›ù 
ÐÐ°š 
   ©  °	 š 
 šš	  	                        	                   	 ð   	 	©©
  	™© °°°™Ë	     š  
š	º	 ¹ 	                   	 °                             ™  	    š  
	 ›š
  
 
©  ©©
	 ©

		       
	     
                              	©
   °        ¹ ½©ž°      šš   °° 	©	­            	    	                            	©
 	  ™é        Ð›½½¹°¹ ©    ©°
 	©­©
žšš	   ©         	                                  	 Ÿ	À	 š    š
   		 ©ûð™Ë	     šð¹©
 
ž›	 °  °          
                                	  š™     
 		°š›™¬°
 	 š°» ©©«	ë
šðð       	  	                                	 ©¬­©	 	     

­	 	©™	 šššº›°°šš¹ºš›
                                            
  Ðð	      ð	  °š»	©©©¿	©©©©©¾›°»© š  š                                        
ððš	©	š   
	°	ð   šœš™ºš	«¾šš ššš›©¯š     	  	                                     	 ÀŸœš œ°°       ¬	 ™  	©«	«
ùû¹©©ª›©›ù»š	

	  	  	                     ­            		©      	  ™°	™   žš™º¹›©»
šš¹¾»›«°
  
	   	    	        	ý       	   	    ð 	 žœÐ½°°		       

Ú  	°›ÚŸúûš	©«š››©¹°	©
			  šš	   	   	    
š  
 
 É	      
 š 		
	©©©­	Ë©
	
      
Û  °©©«°¹º›© ûž¹«©°°šÚÚ 
 š 
 	 © š           	  ï ¬É     	ð°
 šœš½°š™
š   	 ¹ ©	 	  Ûžš›û©°°»š›ššš	©© 	©
   	 ©   °          
ÛÞÿÿýÿïðé	Ê
		©À		Û	­ °     Ê	Ð ™ž ©©›©«°š
 »Ë¹«¹©  ºš       š š      	    	  
››ù›šù¹À	šÚÐ¹ š ©é° ©	 	   °°›
 š	    šš 	»	«	©   
  	 	  
	           š	 éœšÐ   	©
 ¹ê			© 	šš™ 	Ð
	   	 
š © ©É°	  
›¹©©  ©°¿»° °ššš	     ©   

  š  
 	  	
	 °ºËÉ©   ° œ°ð°ššÉ 		éš°	
 ™ š	©©
š ¼› °	 ©
š  
©°°      
	 °      °    	     žŸ		°¼°      	©		 °©	™ 	 
 	 ° šð©©	     ©
¹°°  
š	  
   °°
    
     
	 ©    ­šž°š
š°  
°° š¼šœ© šÙ	šÙ Ð	 
	 	°°°°ºšš ™ °	
©
    ° 	 °    
°
°      	 	    © °		É©°ù©Ë     Ê
	©­«šš	
Ú	
Ù© 
 ©°	 °¹é©­©	 °	
 
›©   š
   š
             °©  		
›¯
¼© Ú° 	 °°°«
šºúÐ°¹™¹­		© ›	°ù«š©ªÐ½  © ©©     °°°°°©  	
        
		©	 žžšš	° Ð½¯ž›°«	
  ©É©­°©	ï½«Ë  Ë š°¹éËº¹©
š›	°°°š  š°  š

Ëšš š  šš 	   
 š©

  	©©  °«
™ºúý¯ š©	«š°ºž›ŸûÞ½»Û™©	žžš›ž›Ú°©­°°š    		 ° © ž½°©©© š ©
  		 
 ©
	©
š©©Ëð¹  Ÿÿý°¼°­«©
  ©Ë	©°»ûßùúü°°ð° ù©™©©« ¹©Ë©é©ð   ° © ° š©

ïûšššš °
ššš

  °
©   °°© 
› šÿÿï	«›
°°°©
°ûÿÿûû	™šš«É½¹ùù»ºš°°»Ú›	   š š ¹ÿž¿š©  °é°°°š °©   ©	« š ¿ÿÿÿð° ¾ë °¹
šš¹«¼ûßÿðð°ùë¹™ºšºšº¹
› °©©   
	©© °© 
žÿïð©ª°°
°¹Ë
	 
 š  °°°°š °	 ÿÿÿÿð°™©«¹š © ¹
œ­úßþÿÿÿÿ¿¹Û¿¾½¹©¹©» ©
šššš¾	 šÛšš
ššš›¿¿ÿÿð	« °
°°©
	 «©©šË
 
›
°©ïÿÿÿÿ
ššž°©°š	
¹»ÿÿÿÿÿÿÿÿ›š›û›šúššš	    
° ° ©° 		 °°ðüÿÿÿû©°
š¼«Êšª	© ©©°°ù°° °°°©»Ÿÿÿÿÿ¬°©­©
š©ªËÿÿÿýÿÿÿÿ°	©	¹ë¹¹­««    °	 	©  šš»°° ÿ¿¿ÿÿÿþÛ©©  ù©¬
©©ë«¾š›
šËË
›Ð©©°¼¿ÿÿÿÿù šÚš°° š ¿¿ÿÿÿÿ¿ÿÿÿ 
œ°¿¹ëš°     
    ©©©
 	­ÿûÏÿÿÿÿÿ°   é ¬
©©
ù	© © °°°šË›­¿ŸÿÿÿÿþŸ©©	©éªÚŸÿÿÿÿÿ¿ßÿÿÿ 	Úš™°©©     		  °¼½©	ÿ»
Úÿÿýþÿÿÿÿ ð      
©
ú¼	  ð°° °šùïÿÿÿÿù 
	
Ëÿù¯ÿÿÿÿÿÿßïÿÿÿ  °¹¹ 
°           ¼¿  ÿÏ°¿ÿÿ¾½ÿÿÿÿð
  
 À© Ð©Ê	
  	©©àËÉË¹ï›ÿÿÿÿÿÚœ
É¬ÿÿÿÿÿÿÿÿûÿŸÿÿÿ°     š             
ð  ÿûÿÿÿßÿÿÿÿÿà    
  
 
À Ê    àðð°šž½íÿÿÿÿð à  
ÿÿÿÿÿÿÿÿýéÿÿÿÿ                      ÚÛ  ÿÿÿÿÿÿÿÿÿÿÿÿ                     à
° 
›ÿûÿÿÿÿÿ     ÿÿÿÿÿÿÿÿÿ¿ÿÿÿÿ                       ¿ð                  ®­þ, 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5, 'http://accweb/emmployees/davolio.bmp');
/*!40000 ALTER TABLE "Employees" ENABLE KEYS */;

-- Volcando estructura para tabla NORTHWND.EmployeeTerritories
CREATE TABLE IF NOT EXISTS "EmployeeTerritories" (
	"EmployeeID" INT(10,0) NOT NULL,
	"TerritoryID" NVARCHAR(20) NOT NULL,
	PRIMARY KEY ("EmployeeID","TerritoryID")
);

-- Volcando datos para la tabla NORTHWND.EmployeeTerritories: -1 rows
/*!40000 ALTER TABLE "EmployeeTerritories" DISABLE KEYS */;
INSERT IGNORE INTO "EmployeeTerritories" ("EmployeeID", "TerritoryID") VALUES
	(1, '06897'),
	(1, '19713'),
	(2, '01581'),
	(2, '01730'),
	(2, '01833'),
	(2, '02116'),
	(2, '02139'),
	(2, '02184'),
	(2, '40222'),
	(3, '30346'),
	(3, '31406'),
	(3, '32859'),
	(3, '33607'),
	(4, '20852'),
	(4, '27403'),
	(4, '27511'),
	(5, '02903'),
	(5, '07960'),
	(5, '08837'),
	(5, '10019'),
	(5, '10038'),
	(5, '11747'),
	(5, '14450'),
	(6, '85014'),
	(6, '85251'),
	(6, '98004'),
	(6, '98052'),
	(6, '98104'),
	(7, '60179'),
	(7, '60601'),
	(7, '80202'),
	(7, '80909'),
	(7, '90405'),
	(7, '94025'),
	(7, '94105'),
	(7, '95008'),
	(7, '95054'),
	(7, '95060'),
	(8, '19428'),
	(8, '44122'),
	(8, '45839'),
	(8, '53404'),
	(9, '03049'),
	(9, '03801'),
	(9, '48075'),
	(9, '48084'),
	(9, '48304'),
	(9, '55113'),
	(9, '55439');
/*!40000 ALTER TABLE "EmployeeTerritories" ENABLE KEYS */;

-- Volcando estructura para función NORTHWND.fn_diagramobjects
DELIMITER //

	CREATE FUNCTION dbo.fn_diagramobjects() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	//
DELIMITER ;

-- Volcando estructura para vista NORTHWND.Invoices
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Invoices" (
	"ShipName" NVARCHAR(40) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipAddress" NVARCHAR(60) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipCity" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipRegion" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipPostalCode" NVARCHAR(10) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipCountry" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"CustomerID" NCHAR(5) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"CustomerName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Address" NVARCHAR(60) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"City" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Region" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"PostalCode" NVARCHAR(10) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Country" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Salesperson" NVARCHAR(31) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"OrderID" INT NOT NULL,
	"OrderDate" DATETIME NULL,
	"RequiredDate" DATETIME NULL,
	"ShippedDate" DATETIME NULL,
	"ShipperName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ProductID" INT NOT NULL,
	"ProductName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"UnitPrice" MONEY(19,4) NOT NULL,
	"Quantity" SMALLINT NOT NULL,
	"Discount" REAL(24) NOT NULL,
	"ExtendedPrice" MONEY(19,4) NULL,
	"Freight" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para tabla NORTHWND.Order Details
CREATE TABLE IF NOT EXISTS "Order Details" (
	"OrderID" INT(10,0) NOT NULL,
	"ProductID" INT(10,0) NOT NULL,
	"UnitPrice" MONEY(19,4) NOT NULL DEFAULT (0),
	"Quantity" SMALLINT(5,0) NOT NULL DEFAULT (1),
	"Discount" REAL(24) NOT NULL DEFAULT (0),
	PRIMARY KEY ("OrderID","ProductID")
);

-- Volcando datos para la tabla NORTHWND.Order Details: -1 rows
/*!40000 ALTER TABLE "Order Details" DISABLE KEYS */;
INSERT IGNORE INTO "Order Details" ("OrderID", "ProductID", "UnitPrice", "Quantity", "Discount") VALUES
	(10248, 11, 14, 12, 0),
	(10248, 42, 9.8, 10, 0),
	(10248, 72, 34.8, 5, 0),
	(10249, 14, 18.6, 9, 0),
	(10249, 51, 42.4, 40, 0),
	(10250, 41, 7.7, 10, 0),
	(10250, 51, 42.4, 35, 0.150000005960464),
	(10250, 65, 16.8, 15, 0.150000005960464),
	(10251, 22, 16.8, 6, 0.0500000007450581),
	(10251, 57, 15.6, 15, 0.0500000007450581),
	(10251, 65, 16.8, 20, 0),
	(10252, 20, 64.8, 40, 0.0500000007450581),
	(10252, 33, 2, 25, 0.0500000007450581),
	(10252, 60, 27.2, 40, 0),
	(10253, 31, 10, 20, 0),
	(10253, 39, 14.4, 42, 0),
	(10253, 49, 16, 40, 0),
	(10254, 24, 3.6, 15, 0.150000005960464),
	(10254, 55, 19.2, 21, 0.150000005960464),
	(10254, 74, 8, 21, 0),
	(10255, 2, 15.2, 20, 0),
	(10255, 16, 13.9, 35, 0),
	(10255, 36, 15.2, 25, 0),
	(10255, 59, 44, 30, 0),
	(10256, 53, 26.2, 15, 0),
	(10256, 77, 10.4, 12, 0),
	(10257, 27, 35.1, 25, 0),
	(10257, 39, 14.4, 6, 0),
	(10257, 77, 10.4, 15, 0),
	(10258, 2, 15.2, 50, 0.200000002980232),
	(10258, 5, 17, 65, 0.200000002980232),
	(10258, 32, 25.6, 6, 0.200000002980232),
	(10259, 21, 8, 10, 0),
	(10259, 37, 20.8, 1, 0),
	(10260, 41, 7.7, 16, 0.25),
	(10260, 57, 15.6, 50, 0),
	(10260, 62, 39.4, 15, 0.25),
	(10260, 70, 12, 21, 0.25),
	(10261, 21, 8, 20, 0),
	(10261, 35, 14.4, 20, 0),
	(10262, 5, 17, 12, 0.200000002980232),
	(10262, 7, 24, 15, 0),
	(10262, 56, 30.4, 2, 0),
	(10263, 16, 13.9, 60, 0.25),
	(10263, 24, 3.6, 28, 0),
	(10263, 30, 20.7, 60, 0.25),
	(10263, 74, 8, 36, 0.25),
	(10264, 2, 15.2, 35, 0),
	(10264, 41, 7.7, 25, 0.150000005960464),
	(10265, 17, 31.2, 30, 0),
	(10265, 70, 12, 20, 0),
	(10266, 12, 30.4, 12, 0.0500000007450581),
	(10267, 40, 14.7, 50, 0),
	(10267, 59, 44, 70, 0.150000005960464),
	(10267, 76, 14.4, 15, 0.150000005960464),
	(10268, 29, 99, 10, 0),
	(10268, 72, 27.8, 4, 0),
	(10269, 33, 2, 60, 0.0500000007450581),
	(10269, 72, 27.8, 20, 0.0500000007450581),
	(10270, 36, 15.2, 30, 0),
	(10270, 43, 36.8, 25, 0),
	(10271, 33, 2, 24, 0),
	(10272, 20, 64.8, 6, 0),
	(10272, 31, 10, 40, 0),
	(10272, 72, 27.8, 24, 0),
	(10273, 10, 24.8, 24, 0.0500000007450581),
	(10273, 31, 10, 15, 0.0500000007450581),
	(10273, 33, 2, 20, 0),
	(10273, 40, 14.7, 60, 0.0500000007450581),
	(10273, 76, 14.4, 33, 0.0500000007450581),
	(10274, 71, 17.2, 20, 0),
	(10274, 72, 27.8, 7, 0),
	(10275, 24, 3.6, 12, 0.0500000007450581),
	(10275, 59, 44, 6, 0.0500000007450581),
	(10276, 10, 24.8, 15, 0),
	(10276, 13, 4.8, 10, 0),
	(10277, 28, 36.4, 20, 0),
	(10277, 62, 39.4, 12, 0),
	(10278, 44, 15.5, 16, 0),
	(10278, 59, 44, 15, 0),
	(10278, 63, 35.1, 8, 0),
	(10278, 73, 12, 25, 0),
	(10279, 17, 31.2, 15, 0.25),
	(10280, 24, 3.6, 12, 0),
	(10280, 55, 19.2, 20, 0),
	(10280, 75, 6.2, 30, 0),
	(10281, 19, 7.3, 1, 0),
	(10281, 24, 3.6, 6, 0),
	(10281, 35, 14.4, 4, 0),
	(10282, 30, 20.7, 6, 0),
	(10282, 57, 15.6, 2, 0),
	(10283, 15, 12.4, 20, 0),
	(10283, 19, 7.3, 18, 0),
	(10283, 60, 27.2, 35, 0),
	(10283, 72, 27.8, 3, 0),
	(10284, 27, 35.1, 15, 0.25),
	(10284, 44, 15.5, 21, 0),
	(10284, 60, 27.2, 20, 0.25),
	(10284, 67, 11.2, 5, 0.25),
	(10285, 1, 14.4, 45, 0.200000002980232),
	(10285, 40, 14.7, 40, 0.200000002980232),
	(10285, 53, 26.2, 36, 0.200000002980232),
	(10286, 35, 14.4, 100, 0),
	(10286, 62, 39.4, 40, 0),
	(10287, 16, 13.9, 40, 0.150000005960464),
	(10287, 34, 11.2, 20, 0),
	(10287, 46, 9.6, 15, 0.150000005960464),
	(10288, 54, 5.9, 10, 0.100000001490116),
	(10288, 68, 10, 3, 0.100000001490116),
	(10289, 3, 8, 30, 0),
	(10289, 64, 26.6, 9, 0),
	(10290, 5, 17, 20, 0),
	(10290, 29, 99, 15, 0),
	(10290, 49, 16, 15, 0),
	(10290, 77, 10.4, 10, 0),
	(10291, 13, 4.8, 20, 0.100000001490116),
	(10291, 44, 15.5, 24, 0.100000001490116),
	(10291, 51, 42.4, 2, 0.100000001490116),
	(10292, 20, 64.8, 20, 0),
	(10293, 18, 50, 12, 0),
	(10293, 24, 3.6, 10, 0),
	(10293, 63, 35.1, 5, 0),
	(10293, 75, 6.2, 6, 0),
	(10294, 1, 14.4, 18, 0),
	(10294, 17, 31.2, 15, 0),
	(10294, 43, 36.8, 15, 0),
	(10294, 60, 27.2, 21, 0),
	(10294, 75, 6.2, 6, 0),
	(10295, 56, 30.4, 4, 0),
	(10296, 11, 16.8, 12, 0),
	(10296, 16, 13.9, 30, 0),
	(10296, 69, 28.8, 15, 0),
	(10297, 39, 14.4, 60, 0),
	(10297, 72, 27.8, 20, 0),
	(10298, 2, 15.2, 40, 0),
	(10298, 36, 15.2, 40, 0.25),
	(10298, 59, 44, 30, 0.25),
	(10298, 62, 39.4, 15, 0),
	(10299, 19, 7.3, 15, 0),
	(10299, 70, 12, 20, 0),
	(10300, 66, 13.6, 30, 0),
	(10300, 68, 10, 20, 0),
	(10301, 40, 14.7, 10, 0),
	(10301, 56, 30.4, 20, 0),
	(10302, 17, 31.2, 40, 0),
	(10302, 28, 36.4, 28, 0),
	(10302, 43, 36.8, 12, 0),
	(10303, 40, 14.7, 40, 0.100000001490116),
	(10303, 65, 16.8, 30, 0.100000001490116),
	(10303, 68, 10, 15, 0.100000001490116),
	(10304, 49, 16, 30, 0),
	(10304, 59, 44, 10, 0),
	(10304, 71, 17.2, 2, 0),
	(10305, 18, 50, 25, 0.100000001490116),
	(10305, 29, 99, 25, 0.100000001490116),
	(10305, 39, 14.4, 30, 0.100000001490116),
	(10306, 30, 20.7, 10, 0),
	(10306, 53, 26.2, 10, 0),
	(10306, 54, 5.9, 5, 0),
	(10307, 62, 39.4, 10, 0),
	(10307, 68, 10, 3, 0),
	(10308, 69, 28.8, 1, 0),
	(10308, 70, 12, 5, 0),
	(10309, 4, 17.6, 20, 0),
	(10309, 6, 20, 30, 0),
	(10309, 42, 11.2, 2, 0),
	(10309, 43, 36.8, 20, 0),
	(10309, 71, 17.2, 3, 0),
	(10310, 16, 13.9, 10, 0),
	(10310, 62, 39.4, 5, 0),
	(10311, 42, 11.2, 6, 0),
	(10311, 69, 28.8, 7, 0),
	(10312, 28, 36.4, 4, 0),
	(10312, 43, 36.8, 24, 0),
	(10312, 53, 26.2, 20, 0),
	(10312, 75, 6.2, 10, 0),
	(10313, 36, 15.2, 12, 0),
	(10314, 32, 25.6, 40, 0.100000001490116),
	(10314, 58, 10.6, 30, 0.100000001490116),
	(10314, 62, 39.4, 25, 0.100000001490116),
	(10315, 34, 11.2, 14, 0),
	(10315, 70, 12, 30, 0),
	(10316, 41, 7.7, 10, 0),
	(10316, 62, 39.4, 70, 0),
	(10317, 1, 14.4, 20, 0),
	(10318, 41, 7.7, 20, 0),
	(10318, 76, 14.4, 6, 0),
	(10319, 17, 31.2, 8, 0),
	(10319, 28, 36.4, 14, 0),
	(10319, 76, 14.4, 30, 0),
	(10320, 71, 17.2, 30, 0),
	(10321, 35, 14.4, 10, 0),
	(10322, 52, 5.6, 20, 0),
	(10323, 15, 12.4, 5, 0),
	(10323, 25, 11.2, 4, 0),
	(10323, 39, 14.4, 4, 0),
	(10324, 16, 13.9, 21, 0.150000005960464),
	(10324, 35, 14.4, 70, 0.150000005960464),
	(10324, 46, 9.6, 30, 0),
	(10324, 59, 44, 40, 0.150000005960464),
	(10324, 63, 35.1, 80, 0.150000005960464),
	(10325, 6, 20, 6, 0),
	(10325, 13, 4.8, 12, 0),
	(10325, 14, 18.6, 9, 0),
	(10325, 31, 10, 4, 0),
	(10325, 72, 27.8, 40, 0),
	(10326, 4, 17.6, 24, 0),
	(10326, 57, 15.6, 16, 0),
	(10326, 75, 6.2, 50, 0),
	(10327, 2, 15.2, 25, 0.200000002980232),
	(10327, 11, 16.8, 50, 0.200000002980232),
	(10327, 30, 20.7, 35, 0.200000002980232),
	(10327, 58, 10.6, 30, 0.200000002980232),
	(10328, 59, 44, 9, 0),
	(10328, 65, 16.8, 40, 0),
	(10328, 68, 10, 10, 0),
	(10329, 19, 7.3, 10, 0.0500000007450581),
	(10329, 30, 20.7, 8, 0.0500000007450581),
	(10329, 38, 210.8, 20, 0.0500000007450581),
	(10329, 56, 30.4, 12, 0.0500000007450581),
	(10330, 26, 24.9, 50, 0.150000005960464),
	(10330, 72, 27.8, 25, 0.150000005960464),
	(10331, 54, 5.9, 15, 0),
	(10332, 18, 50, 40, 0.200000002980232),
	(10332, 42, 11.2, 10, 0.200000002980232),
	(10332, 47, 7.6, 16, 0.200000002980232),
	(10333, 14, 18.6, 10, 0),
	(10333, 21, 8, 10, 0.100000001490116),
	(10333, 71, 17.2, 40, 0.100000001490116),
	(10334, 52, 5.6, 8, 0),
	(10334, 68, 10, 10, 0),
	(10335, 2, 15.2, 7, 0.200000002980232),
	(10335, 31, 10, 25, 0.200000002980232),
	(10335, 32, 25.6, 6, 0.200000002980232),
	(10335, 51, 42.4, 48, 0.200000002980232),
	(10336, 4, 17.6, 18, 0.100000001490116),
	(10337, 23, 7.2, 40, 0),
	(10337, 26, 24.9, 24, 0),
	(10337, 36, 15.2, 20, 0),
	(10337, 37, 20.8, 28, 0),
	(10337, 72, 27.8, 25, 0),
	(10338, 17, 31.2, 20, 0),
	(10338, 30, 20.7, 15, 0),
	(10339, 4, 17.6, 10, 0),
	(10339, 17, 31.2, 70, 0.0500000007450581),
	(10339, 62, 39.4, 28, 0),
	(10340, 18, 50, 20, 0.0500000007450581),
	(10340, 41, 7.7, 12, 0.0500000007450581),
	(10340, 43, 36.8, 40, 0.0500000007450581),
	(10341, 33, 2, 8, 0),
	(10341, 59, 44, 9, 0.150000005960464),
	(10342, 2, 15.2, 24, 0.200000002980232),
	(10342, 31, 10, 56, 0.200000002980232),
	(10342, 36, 15.2, 40, 0.200000002980232),
	(10342, 55, 19.2, 40, 0.200000002980232),
	(10343, 64, 26.6, 50, 0),
	(10343, 68, 10, 4, 0.0500000007450581),
	(10343, 76, 14.4, 15, 0),
	(10344, 4, 17.6, 35, 0),
	(10344, 8, 32, 70, 0.25),
	(10345, 8, 32, 70, 0),
	(10345, 19, 7.3, 80, 0),
	(10345, 42, 11.2, 9, 0),
	(10346, 17, 31.2, 36, 0.100000001490116),
	(10346, 56, 30.4, 20, 0),
	(10347, 25, 11.2, 10, 0),
	(10347, 39, 14.4, 50, 0.150000005960464),
	(10347, 40, 14.7, 4, 0),
	(10347, 75, 6.2, 6, 0.150000005960464),
	(10348, 1, 14.4, 15, 0.150000005960464),
	(10348, 23, 7.2, 25, 0),
	(10349, 54, 5.9, 24, 0),
	(10350, 50, 13, 15, 0.100000001490116),
	(10350, 69, 28.8, 18, 0.100000001490116),
	(10351, 38, 210.8, 20, 0.0500000007450581),
	(10351, 41, 7.7, 13, 0),
	(10351, 44, 15.5, 77, 0.0500000007450581),
	(10351, 65, 16.8, 10, 0.0500000007450581),
	(10352, 24, 3.6, 10, 0),
	(10352, 54, 5.9, 20, 0.150000005960464),
	(10353, 11, 16.8, 12, 0.200000002980232),
	(10353, 38, 210.8, 50, 0.200000002980232),
	(10354, 1, 14.4, 12, 0),
	(10354, 29, 99, 4, 0),
	(10355, 24, 3.6, 25, 0),
	(10355, 57, 15.6, 25, 0),
	(10356, 31, 10, 30, 0),
	(10356, 55, 19.2, 12, 0),
	(10356, 69, 28.8, 20, 0),
	(10357, 10, 24.8, 30, 0.200000002980232),
	(10357, 26, 24.9, 16, 0),
	(10357, 60, 27.2, 8, 0.200000002980232),
	(10358, 24, 3.6, 10, 0.0500000007450581),
	(10358, 34, 11.2, 10, 0.0500000007450581),
	(10358, 36, 15.2, 20, 0.0500000007450581),
	(10359, 16, 13.9, 56, 0.0500000007450581),
	(10359, 31, 10, 70, 0.0500000007450581),
	(10359, 60, 27.2, 80, 0.0500000007450581),
	(10360, 28, 36.4, 30, 0),
	(10360, 29, 99, 35, 0),
	(10360, 38, 210.8, 10, 0),
	(10360, 49, 16, 35, 0),
	(10360, 54, 5.9, 28, 0),
	(10361, 39, 14.4, 54, 0.100000001490116),
	(10361, 60, 27.2, 55, 0.100000001490116),
	(10362, 25, 11.2, 50, 0),
	(10362, 51, 42.4, 20, 0),
	(10362, 54, 5.9, 24, 0),
	(10363, 31, 10, 20, 0),
	(10363, 75, 6.2, 12, 0),
	(10363, 76, 14.4, 12, 0),
	(10364, 69, 28.8, 30, 0),
	(10364, 71, 17.2, 5, 0),
	(10365, 11, 16.8, 24, 0),
	(10366, 65, 16.8, 5, 0),
	(10366, 77, 10.4, 5, 0),
	(10367, 34, 11.2, 36, 0),
	(10367, 54, 5.9, 18, 0),
	(10367, 65, 16.8, 15, 0),
	(10367, 77, 10.4, 7, 0),
	(10368, 21, 8, 5, 0.100000001490116),
	(10368, 28, 36.4, 13, 0.100000001490116),
	(10368, 57, 15.6, 25, 0),
	(10368, 64, 26.6, 35, 0.100000001490116),
	(10369, 29, 99, 20, 0),
	(10369, 56, 30.4, 18, 0.25),
	(10370, 1, 14.4, 15, 0.150000005960464),
	(10370, 64, 26.6, 30, 0),
	(10370, 74, 8, 20, 0.150000005960464),
	(10371, 36, 15.2, 6, 0.200000002980232),
	(10372, 20, 64.8, 12, 0.25),
	(10372, 38, 210.8, 40, 0.25),
	(10372, 60, 27.2, 70, 0.25),
	(10372, 72, 27.8, 42, 0.25),
	(10373, 58, 10.6, 80, 0.200000002980232),
	(10373, 71, 17.2, 50, 0.200000002980232),
	(10374, 31, 10, 30, 0),
	(10374, 58, 10.6, 15, 0),
	(10375, 14, 18.6, 15, 0),
	(10375, 54, 5.9, 10, 0),
	(10376, 31, 10, 42, 0.0500000007450581),
	(10377, 28, 36.4, 20, 0.150000005960464),
	(10377, 39, 14.4, 20, 0.150000005960464),
	(10378, 71, 17.2, 6, 0),
	(10379, 41, 7.7, 8, 0.100000001490116),
	(10379, 63, 35.1, 16, 0.100000001490116),
	(10379, 65, 16.8, 20, 0.100000001490116),
	(10380, 30, 20.7, 18, 0.100000001490116),
	(10380, 53, 26.2, 20, 0.100000001490116),
	(10380, 60, 27.2, 6, 0.100000001490116),
	(10380, 70, 12, 30, 0),
	(10381, 74, 8, 14, 0),
	(10382, 5, 17, 32, 0),
	(10382, 18, 50, 9, 0),
	(10382, 29, 99, 14, 0),
	(10382, 33, 2, 60, 0),
	(10382, 74, 8, 50, 0),
	(10383, 13, 4.8, 20, 0),
	(10383, 50, 13, 15, 0),
	(10383, 56, 30.4, 20, 0),
	(10384, 20, 64.8, 28, 0),
	(10384, 60, 27.2, 15, 0),
	(10385, 7, 24, 10, 0.200000002980232),
	(10385, 60, 27.2, 20, 0.200000002980232),
	(10385, 68, 10, 8, 0.200000002980232),
	(10386, 24, 3.6, 15, 0),
	(10386, 34, 11.2, 10, 0),
	(10387, 24, 3.6, 15, 0),
	(10387, 28, 36.4, 6, 0),
	(10387, 59, 44, 12, 0),
	(10387, 71, 17.2, 15, 0),
	(10388, 45, 7.6, 15, 0.200000002980232),
	(10388, 52, 5.6, 20, 0.200000002980232),
	(10388, 53, 26.2, 40, 0),
	(10389, 10, 24.8, 16, 0),
	(10389, 55, 19.2, 15, 0),
	(10389, 62, 39.4, 20, 0),
	(10389, 70, 12, 30, 0),
	(10390, 31, 10, 60, 0.100000001490116),
	(10390, 35, 14.4, 40, 0.100000001490116),
	(10390, 46, 9.6, 45, 0),
	(10390, 72, 27.8, 24, 0.100000001490116),
	(10391, 13, 4.8, 18, 0),
	(10392, 69, 28.8, 50, 0),
	(10393, 2, 15.2, 25, 0.25),
	(10393, 14, 18.6, 42, 0.25),
	(10393, 25, 11.2, 7, 0.25),
	(10393, 26, 24.9, 70, 0.25),
	(10393, 31, 10, 32, 0),
	(10394, 13, 4.8, 10, 0),
	(10394, 62, 39.4, 10, 0),
	(10395, 46, 9.6, 28, 0.100000001490116),
	(10395, 53, 26.2, 70, 0.100000001490116),
	(10395, 69, 28.8, 8, 0),
	(10396, 23, 7.2, 40, 0),
	(10396, 71, 17.2, 60, 0),
	(10396, 72, 27.8, 21, 0),
	(10397, 21, 8, 10, 0.150000005960464),
	(10397, 51, 42.4, 18, 0.150000005960464),
	(10398, 35, 14.4, 30, 0),
	(10398, 55, 19.2, 120, 0.100000001490116),
	(10399, 68, 10, 60, 0),
	(10399, 71, 17.2, 30, 0),
	(10399, 76, 14.4, 35, 0),
	(10399, 77, 10.4, 14, 0),
	(10400, 29, 99, 21, 0),
	(10400, 35, 14.4, 35, 0),
	(10400, 49, 16, 30, 0),
	(10401, 30, 20.7, 18, 0),
	(10401, 56, 30.4, 70, 0),
	(10401, 65, 16.8, 20, 0),
	(10401, 71, 17.2, 60, 0),
	(10402, 23, 7.2, 60, 0),
	(10402, 63, 35.1, 65, 0),
	(10403, 16, 13.9, 21, 0.150000005960464),
	(10403, 48, 10.2, 70, 0.150000005960464),
	(10404, 26, 24.9, 30, 0.0500000007450581),
	(10404, 42, 11.2, 40, 0.0500000007450581),
	(10404, 49, 16, 30, 0.0500000007450581),
	(10405, 3, 8, 50, 0),
	(10406, 1, 14.4, 10, 0),
	(10406, 21, 8, 30, 0.100000001490116),
	(10406, 28, 36.4, 42, 0.100000001490116),
	(10406, 36, 15.2, 5, 0.100000001490116),
	(10406, 40, 14.7, 2, 0.100000001490116),
	(10407, 11, 16.8, 30, 0),
	(10407, 69, 28.8, 15, 0),
	(10407, 71, 17.2, 15, 0),
	(10408, 37, 20.8, 10, 0),
	(10408, 54, 5.9, 6, 0),
	(10408, 62, 39.4, 35, 0),
	(10409, 14, 18.6, 12, 0),
	(10409, 21, 8, 12, 0),
	(10410, 33, 2, 49, 0),
	(10410, 59, 44, 16, 0),
	(10411, 41, 7.7, 25, 0.200000002980232),
	(10411, 44, 15.5, 40, 0.200000002980232),
	(10411, 59, 44, 9, 0.200000002980232),
	(10412, 14, 18.6, 20, 0.100000001490116),
	(10413, 1, 14.4, 24, 0),
	(10413, 62, 39.4, 40, 0),
	(10413, 76, 14.4, 14, 0),
	(10414, 19, 7.3, 18, 0.0500000007450581),
	(10414, 33, 2, 50, 0),
	(10415, 17, 31.2, 2, 0),
	(10415, 33, 2, 20, 0),
	(10416, 19, 7.3, 20, 0),
	(10416, 53, 26.2, 10, 0),
	(10416, 57, 15.6, 20, 0),
	(10417, 38, 210.8, 50, 0),
	(10417, 46, 9.6, 2, 0.25),
	(10417, 68, 10, 36, 0.25),
	(10417, 77, 10.4, 35, 0),
	(10418, 2, 15.2, 60, 0),
	(10418, 47, 7.6, 55, 0),
	(10418, 61, 22.8, 16, 0),
	(10418, 74, 8, 15, 0),
	(10419, 60, 27.2, 60, 0.0500000007450581),
	(10419, 69, 28.8, 20, 0.0500000007450581),
	(10420, 9, 77.6, 20, 0.100000001490116),
	(10420, 13, 4.8, 2, 0.100000001490116),
	(10420, 70, 12, 8, 0.100000001490116),
	(10420, 73, 12, 20, 0.100000001490116),
	(10421, 19, 7.3, 4, 0.150000005960464),
	(10421, 26, 24.9, 30, 0),
	(10421, 53, 26.2, 15, 0.150000005960464),
	(10421, 77, 10.4, 10, 0.150000005960464),
	(10422, 26, 24.9, 2, 0),
	(10423, 31, 10, 14, 0),
	(10423, 59, 44, 20, 0),
	(10424, 35, 14.4, 60, 0.200000002980232),
	(10424, 38, 210.8, 49, 0.200000002980232),
	(10424, 68, 10, 30, 0.200000002980232),
	(10425, 55, 19.2, 10, 0.25),
	(10425, 76, 14.4, 20, 0.25),
	(10426, 56, 30.4, 5, 0),
	(10426, 64, 26.6, 7, 0),
	(10427, 14, 18.6, 35, 0),
	(10428, 46, 9.6, 20, 0),
	(10429, 50, 13, 40, 0),
	(10429, 63, 35.1, 35, 0.25),
	(10430, 17, 31.2, 45, 0.200000002980232),
	(10430, 21, 8, 50, 0),
	(10430, 56, 30.4, 30, 0),
	(10430, 59, 44, 70, 0.200000002980232),
	(10431, 17, 31.2, 50, 0.25),
	(10431, 40, 14.7, 50, 0.25),
	(10431, 47, 7.6, 30, 0.25),
	(10432, 26, 24.9, 10, 0),
	(10432, 54, 5.9, 40, 0),
	(10433, 56, 30.4, 28, 0),
	(10434, 11, 16.8, 6, 0),
	(10434, 76, 14.4, 18, 0.150000005960464),
	(10435, 2, 15.2, 10, 0),
	(10435, 22, 16.8, 12, 0),
	(10435, 72, 27.8, 10, 0),
	(10436, 46, 9.6, 5, 0),
	(10436, 56, 30.4, 40, 0.100000001490116),
	(10436, 64, 26.6, 30, 0.100000001490116),
	(10436, 75, 6.2, 24, 0.100000001490116),
	(10437, 53, 26.2, 15, 0),
	(10438, 19, 7.3, 15, 0.200000002980232),
	(10438, 34, 11.2, 20, 0.200000002980232),
	(10438, 57, 15.6, 15, 0.200000002980232),
	(10439, 12, 30.4, 15, 0),
	(10439, 16, 13.9, 16, 0),
	(10439, 64, 26.6, 6, 0),
	(10439, 74, 8, 30, 0),
	(10440, 2, 15.2, 45, 0.150000005960464),
	(10440, 16, 13.9, 49, 0.150000005960464),
	(10440, 29, 99, 24, 0.150000005960464),
	(10440, 61, 22.8, 90, 0.150000005960464),
	(10441, 27, 35.1, 50, 0),
	(10442, 11, 16.8, 30, 0),
	(10442, 54, 5.9, 80, 0),
	(10442, 66, 13.6, 60, 0),
	(10443, 11, 16.8, 6, 0.200000002980232),
	(10443, 28, 36.4, 12, 0),
	(10444, 17, 31.2, 10, 0),
	(10444, 26, 24.9, 15, 0),
	(10444, 35, 14.4, 8, 0),
	(10444, 41, 7.7, 30, 0),
	(10445, 39, 14.4, 6, 0),
	(10445, 54, 5.9, 15, 0),
	(10446, 19, 7.3, 12, 0.100000001490116),
	(10446, 24, 3.6, 20, 0.100000001490116),
	(10446, 31, 10, 3, 0.100000001490116),
	(10446, 52, 5.6, 15, 0.100000001490116),
	(10447, 19, 7.3, 40, 0),
	(10447, 65, 16.8, 35, 0),
	(10447, 71, 17.2, 2, 0),
	(10448, 26, 24.9, 6, 0),
	(10448, 40, 14.7, 20, 0),
	(10449, 10, 24.8, 14, 0),
	(10449, 52, 5.6, 20, 0),
	(10449, 62, 39.4, 35, 0),
	(10450, 10, 24.8, 20, 0.200000002980232),
	(10450, 54, 5.9, 6, 0.200000002980232),
	(10451, 55, 19.2, 120, 0.100000001490116),
	(10451, 64, 26.6, 35, 0.100000001490116),
	(10451, 65, 16.8, 28, 0.100000001490116),
	(10451, 77, 10.4, 55, 0.100000001490116),
	(10452, 28, 36.4, 15, 0),
	(10452, 44, 15.5, 100, 0.0500000007450581),
	(10453, 48, 10.2, 15, 0.100000001490116),
	(10453, 70, 12, 25, 0.100000001490116),
	(10454, 16, 13.9, 20, 0.200000002980232),
	(10454, 33, 2, 20, 0.200000002980232),
	(10454, 46, 9.6, 10, 0.200000002980232),
	(10455, 39, 14.4, 20, 0),
	(10455, 53, 26.2, 50, 0),
	(10455, 61, 22.8, 25, 0),
	(10455, 71, 17.2, 30, 0),
	(10456, 21, 8, 40, 0.150000005960464),
	(10456, 49, 16, 21, 0.150000005960464),
	(10457, 59, 44, 36, 0),
	(10458, 26, 24.9, 30, 0),
	(10458, 28, 36.4, 30, 0),
	(10458, 43, 36.8, 20, 0),
	(10458, 56, 30.4, 15, 0),
	(10458, 71, 17.2, 50, 0),
	(10459, 7, 24, 16, 0.0500000007450581),
	(10459, 46, 9.6, 20, 0.0500000007450581),
	(10459, 72, 27.8, 40, 0),
	(10460, 68, 10, 21, 0.25),
	(10460, 75, 6.2, 4, 0.25),
	(10461, 21, 8, 40, 0.25),
	(10461, 30, 20.7, 28, 0.25),
	(10461, 55, 19.2, 60, 0.25),
	(10462, 13, 4.8, 1, 0),
	(10462, 23, 7.2, 21, 0),
	(10463, 19, 7.3, 21, 0),
	(10463, 42, 11.2, 50, 0),
	(10464, 4, 17.6, 16, 0.200000002980232),
	(10464, 43, 36.8, 3, 0),
	(10464, 56, 30.4, 30, 0.200000002980232),
	(10464, 60, 27.2, 20, 0),
	(10465, 24, 3.6, 25, 0),
	(10465, 29, 99, 18, 0.100000001490116),
	(10465, 40, 14.7, 20, 0),
	(10465, 45, 7.6, 30, 0.100000001490116),
	(10465, 50, 13, 25, 0),
	(10466, 11, 16.8, 10, 0),
	(10466, 46, 9.6, 5, 0),
	(10467, 24, 3.6, 28, 0),
	(10467, 25, 11.2, 12, 0),
	(10468, 30, 20.7, 8, 0),
	(10468, 43, 36.8, 15, 0),
	(10469, 2, 15.2, 40, 0.150000005960464),
	(10469, 16, 13.9, 35, 0.150000005960464),
	(10469, 44, 15.5, 2, 0.150000005960464),
	(10470, 18, 50, 30, 0),
	(10470, 23, 7.2, 15, 0),
	(10470, 64, 26.6, 8, 0),
	(10471, 7, 24, 30, 0),
	(10471, 56, 30.4, 20, 0),
	(10472, 24, 3.6, 80, 0.0500000007450581),
	(10472, 51, 42.4, 18, 0),
	(10473, 33, 2, 12, 0),
	(10473, 71, 17.2, 12, 0),
	(10474, 14, 18.6, 12, 0),
	(10474, 28, 36.4, 18, 0),
	(10474, 40, 14.7, 21, 0),
	(10474, 75, 6.2, 10, 0),
	(10475, 31, 10, 35, 0.150000005960464),
	(10475, 66, 13.6, 60, 0.150000005960464),
	(10475, 76, 14.4, 42, 0.150000005960464),
	(10476, 55, 19.2, 2, 0.0500000007450581),
	(10476, 70, 12, 12, 0),
	(10477, 1, 14.4, 15, 0),
	(10477, 21, 8, 21, 0.25),
	(10477, 39, 14.4, 20, 0.25),
	(10478, 10, 24.8, 20, 0.0500000007450581),
	(10479, 38, 210.8, 30, 0),
	(10479, 53, 26.2, 28, 0),
	(10479, 59, 44, 60, 0),
	(10479, 64, 26.6, 30, 0),
	(10480, 47, 7.6, 30, 0),
	(10480, 59, 44, 12, 0),
	(10481, 49, 16, 24, 0),
	(10481, 60, 27.2, 40, 0),
	(10482, 40, 14.7, 10, 0),
	(10483, 34, 11.2, 35, 0.0500000007450581),
	(10483, 77, 10.4, 30, 0.0500000007450581),
	(10484, 21, 8, 14, 0),
	(10484, 40, 14.7, 10, 0),
	(10484, 51, 42.4, 3, 0),
	(10485, 2, 15.2, 20, 0.100000001490116),
	(10485, 3, 8, 20, 0.100000001490116),
	(10485, 55, 19.2, 30, 0.100000001490116),
	(10485, 70, 12, 60, 0.100000001490116),
	(10486, 11, 16.8, 5, 0),
	(10486, 51, 42.4, 25, 0),
	(10486, 74, 8, 16, 0),
	(10487, 19, 7.3, 5, 0),
	(10487, 26, 24.9, 30, 0),
	(10487, 54, 5.9, 24, 0.25),
	(10488, 59, 44, 30, 0),
	(10488, 73, 12, 20, 0.200000002980232),
	(10489, 11, 16.8, 15, 0.25),
	(10489, 16, 13.9, 18, 0),
	(10490, 59, 44, 60, 0),
	(10490, 68, 10, 30, 0),
	(10490, 75, 6.2, 36, 0),
	(10491, 44, 15.5, 15, 0.150000005960464),
	(10491, 77, 10.4, 7, 0.150000005960464),
	(10492, 25, 11.2, 60, 0.0500000007450581),
	(10492, 42, 11.2, 20, 0.0500000007450581),
	(10493, 65, 16.8, 15, 0.100000001490116),
	(10493, 66, 13.6, 10, 0.100000001490116),
	(10493, 69, 28.8, 10, 0.100000001490116),
	(10494, 56, 30.4, 30, 0),
	(10495, 23, 7.2, 10, 0),
	(10495, 41, 7.7, 20, 0),
	(10495, 77, 10.4, 5, 0),
	(10496, 31, 10, 20, 0.0500000007450581),
	(10497, 56, 30.4, 14, 0),
	(10497, 72, 27.8, 25, 0),
	(10497, 77, 10.4, 25, 0),
	(10498, 24, 4.5, 14, 0),
	(10498, 40, 18.4, 5, 0),
	(10498, 42, 14, 30, 0),
	(10499, 28, 45.6, 20, 0),
	(10499, 49, 20, 25, 0),
	(10500, 15, 15.5, 12, 0.0500000007450581),
	(10500, 28, 45.6, 8, 0.0500000007450581),
	(10501, 54, 7.45, 20, 0),
	(10502, 45, 9.5, 21, 0),
	(10502, 53, 32.8, 6, 0),
	(10502, 67, 14, 30, 0),
	(10503, 14, 23.25, 70, 0),
	(10503, 65, 21.05, 20, 0),
	(10504, 2, 19, 12, 0),
	(10504, 21, 10, 12, 0),
	(10504, 53, 32.8, 10, 0),
	(10504, 61, 28.5, 25, 0),
	(10505, 62, 49.3, 3, 0),
	(10506, 25, 14, 18, 0.100000001490116),
	(10506, 70, 15, 14, 0.100000001490116),
	(10507, 43, 46, 15, 0.150000005960464),
	(10507, 48, 12.75, 15, 0.150000005960464),
	(10508, 13, 6, 10, 0),
	(10508, 39, 18, 10, 0),
	(10509, 28, 45.6, 3, 0),
	(10510, 29, 123.79, 36, 0),
	(10510, 75, 7.75, 36, 0.100000001490116),
	(10511, 4, 22, 50, 0.150000005960464),
	(10511, 7, 30, 50, 0.150000005960464),
	(10511, 8, 40, 10, 0.150000005960464),
	(10512, 24, 4.5, 10, 0.150000005960464),
	(10512, 46, 12, 9, 0.150000005960464),
	(10512, 47, 9.5, 6, 0.150000005960464),
	(10512, 60, 34, 12, 0.150000005960464),
	(10513, 21, 10, 40, 0.200000002980232),
	(10513, 32, 32, 50, 0.200000002980232),
	(10513, 61, 28.5, 15, 0.200000002980232),
	(10514, 20, 81, 39, 0),
	(10514, 28, 45.6, 35, 0),
	(10514, 56, 38, 70, 0),
	(10514, 65, 21.05, 39, 0),
	(10514, 75, 7.75, 50, 0),
	(10515, 9, 97, 16, 0.150000005960464),
	(10515, 16, 17.45, 50, 0),
	(10515, 27, 43.9, 120, 0),
	(10515, 33, 2.5, 16, 0.150000005960464),
	(10515, 60, 34, 84, 0.150000005960464),
	(10516, 18, 62.5, 25, 0.100000001490116),
	(10516, 41, 9.65, 80, 0.100000001490116),
	(10516, 42, 14, 20, 0),
	(10517, 52, 7, 6, 0),
	(10517, 59, 55, 4, 0),
	(10517, 70, 15, 6, 0),
	(10518, 24, 4.5, 5, 0),
	(10518, 38, 263.5, 15, 0),
	(10518, 44, 19.45, 9, 0),
	(10519, 10, 31, 16, 0.0500000007450581),
	(10519, 56, 38, 40, 0),
	(10519, 60, 34, 10, 0.0500000007450581),
	(10520, 24, 4.5, 8, 0),
	(10520, 53, 32.8, 5, 0),
	(10521, 35, 18, 3, 0),
	(10521, 41, 9.65, 10, 0),
	(10521, 68, 12.5, 6, 0),
	(10522, 1, 18, 40, 0.200000002980232),
	(10522, 8, 40, 24, 0),
	(10522, 30, 25.89, 20, 0.200000002980232),
	(10522, 40, 18.4, 25, 0.200000002980232),
	(10523, 17, 39, 25, 0.100000001490116),
	(10523, 20, 81, 15, 0.100000001490116),
	(10523, 37, 26, 18, 0.100000001490116),
	(10523, 41, 9.65, 6, 0.100000001490116),
	(10524, 10, 31, 2, 0),
	(10524, 30, 25.89, 10, 0),
	(10524, 43, 46, 60, 0),
	(10524, 54, 7.45, 15, 0),
	(10525, 36, 19, 30, 0),
	(10525, 40, 18.4, 15, 0.100000001490116),
	(10526, 1, 18, 8, 0.150000005960464),
	(10526, 13, 6, 10, 0),
	(10526, 56, 38, 30, 0.150000005960464),
	(10527, 4, 22, 50, 0.100000001490116),
	(10527, 36, 19, 30, 0.100000001490116),
	(10528, 11, 21, 3, 0),
	(10528, 33, 2.5, 8, 0.200000002980232),
	(10528, 72, 34.8, 9, 0),
	(10529, 55, 24, 14, 0),
	(10529, 68, 12.5, 20, 0),
	(10529, 69, 36, 10, 0),
	(10530, 17, 39, 40, 0),
	(10530, 43, 46, 25, 0),
	(10530, 61, 28.5, 20, 0),
	(10530, 76, 18, 50, 0),
	(10531, 59, 55, 2, 0),
	(10532, 30, 25.89, 15, 0),
	(10532, 66, 17, 24, 0),
	(10533, 4, 22, 50, 0.0500000007450581),
	(10533, 72, 34.8, 24, 0),
	(10533, 73, 15, 24, 0.0500000007450581),
	(10534, 30, 25.89, 10, 0),
	(10534, 40, 18.4, 10, 0.200000002980232),
	(10534, 54, 7.45, 10, 0.200000002980232),
	(10535, 11, 21, 50, 0.100000001490116),
	(10535, 40, 18.4, 10, 0.100000001490116),
	(10535, 57, 19.5, 5, 0.100000001490116),
	(10535, 59, 55, 15, 0.100000001490116),
	(10536, 12, 38, 15, 0.25),
	(10536, 31, 12.5, 20, 0),
	(10536, 33, 2.5, 30, 0),
	(10536, 60, 34, 35, 0.25),
	(10537, 31, 12.5, 30, 0),
	(10537, 51, 53, 6, 0),
	(10537, 58, 13.25, 20, 0),
	(10537, 72, 34.8, 21, 0),
	(10537, 73, 15, 9, 0),
	(10538, 70, 15, 7, 0),
	(10538, 72, 34.8, 1, 0),
	(10539, 13, 6, 8, 0),
	(10539, 21, 10, 15, 0),
	(10539, 33, 2.5, 15, 0),
	(10539, 49, 20, 6, 0),
	(10540, 3, 10, 60, 0),
	(10540, 26, 31.23, 40, 0),
	(10540, 38, 263.5, 30, 0),
	(10540, 68, 12.5, 35, 0),
	(10541, 24, 4.5, 35, 0.100000001490116),
	(10541, 38, 263.5, 4, 0.100000001490116),
	(10541, 65, 21.05, 36, 0.100000001490116),
	(10541, 71, 21.5, 9, 0.100000001490116),
	(10542, 11, 21, 15, 0.0500000007450581),
	(10542, 54, 7.45, 24, 0.0500000007450581),
	(10543, 12, 38, 30, 0.150000005960464),
	(10543, 23, 9, 70, 0.150000005960464),
	(10544, 28, 45.6, 7, 0),
	(10544, 67, 14, 7, 0),
	(10545, 11, 21, 10, 0),
	(10546, 7, 30, 10, 0),
	(10546, 35, 18, 30, 0),
	(10546, 62, 49.3, 40, 0),
	(10547, 32, 32, 24, 0.150000005960464),
	(10547, 36, 19, 60, 0),
	(10548, 34, 14, 10, 0.25),
	(10548, 41, 9.65, 14, 0),
	(10549, 31, 12.5, 55, 0.150000005960464),
	(10549, 45, 9.5, 100, 0.150000005960464),
	(10549, 51, 53, 48, 0.150000005960464),
	(10550, 17, 39, 8, 0.100000001490116),
	(10550, 19, 9.2, 10, 0),
	(10550, 21, 10, 6, 0.100000001490116),
	(10550, 61, 28.5, 10, 0.100000001490116),
	(10551, 16, 17.45, 40, 0.150000005960464),
	(10551, 35, 18, 20, 0.150000005960464),
	(10551, 44, 19.45, 40, 0),
	(10552, 69, 36, 18, 0),
	(10552, 75, 7.75, 30, 0),
	(10553, 11, 21, 15, 0),
	(10553, 16, 17.45, 14, 0),
	(10553, 22, 21, 24, 0),
	(10553, 31, 12.5, 30, 0),
	(10553, 35, 18, 6, 0),
	(10554, 16, 17.45, 30, 0.0500000007450581),
	(10554, 23, 9, 20, 0.0500000007450581),
	(10554, 62, 49.3, 20, 0.0500000007450581),
	(10554, 77, 13, 10, 0.0500000007450581),
	(10555, 14, 23.25, 30, 0.200000002980232),
	(10555, 19, 9.2, 35, 0.200000002980232),
	(10555, 24, 4.5, 18, 0.200000002980232),
	(10555, 51, 53, 20, 0.200000002980232),
	(10555, 56, 38, 40, 0.200000002980232),
	(10556, 72, 34.8, 24, 0),
	(10557, 64, 33.25, 30, 0),
	(10557, 75, 7.75, 20, 0),
	(10558, 47, 9.5, 25, 0),
	(10558, 51, 53, 20, 0),
	(10558, 52, 7, 30, 0),
	(10558, 53, 32.8, 18, 0),
	(10558, 73, 15, 3, 0),
	(10559, 41, 9.65, 12, 0.0500000007450581),
	(10559, 55, 24, 18, 0.0500000007450581),
	(10560, 30, 25.89, 20, 0),
	(10560, 62, 49.3, 15, 0.25),
	(10561, 44, 19.45, 10, 0),
	(10561, 51, 53, 50, 0),
	(10562, 33, 2.5, 20, 0.100000001490116),
	(10562, 62, 49.3, 10, 0.100000001490116),
	(10563, 36, 19, 25, 0),
	(10563, 52, 7, 70, 0),
	(10564, 17, 39, 16, 0.0500000007450581),
	(10564, 31, 12.5, 6, 0.0500000007450581),
	(10564, 55, 24, 25, 0.0500000007450581),
	(10565, 24, 4.5, 25, 0.100000001490116),
	(10565, 64, 33.25, 18, 0.100000001490116),
	(10566, 11, 21, 35, 0.150000005960464),
	(10566, 18, 62.5, 18, 0.150000005960464),
	(10566, 76, 18, 10, 0),
	(10567, 31, 12.5, 60, 0.200000002980232),
	(10567, 51, 53, 3, 0),
	(10567, 59, 55, 40, 0.200000002980232),
	(10568, 10, 31, 5, 0),
	(10569, 31, 12.5, 35, 0.200000002980232),
	(10569, 76, 18, 30, 0),
	(10570, 11, 21, 15, 0.0500000007450581),
	(10570, 56, 38, 60, 0.0500000007450581),
	(10571, 14, 23.25, 11, 0.150000005960464),
	(10571, 42, 14, 28, 0.150000005960464),
	(10572, 16, 17.45, 12, 0.100000001490116),
	(10572, 32, 32, 10, 0.100000001490116),
	(10572, 40, 18.4, 50, 0),
	(10572, 75, 7.75, 15, 0.100000001490116),
	(10573, 17, 39, 18, 0),
	(10573, 34, 14, 40, 0),
	(10573, 53, 32.8, 25, 0),
	(10574, 33, 2.5, 14, 0),
	(10574, 40, 18.4, 2, 0),
	(10574, 62, 49.3, 10, 0),
	(10574, 64, 33.25, 6, 0),
	(10575, 59, 55, 12, 0),
	(10575, 63, 43.9, 6, 0),
	(10575, 72, 34.8, 30, 0),
	(10575, 76, 18, 10, 0),
	(10576, 1, 18, 10, 0),
	(10576, 31, 12.5, 20, 0),
	(10576, 44, 19.45, 21, 0),
	(10577, 39, 18, 10, 0),
	(10577, 75, 7.75, 20, 0),
	(10577, 77, 13, 18, 0),
	(10578, 35, 18, 20, 0),
	(10578, 57, 19.5, 6, 0),
	(10579, 15, 15.5, 10, 0),
	(10579, 75, 7.75, 21, 0),
	(10580, 14, 23.25, 15, 0.0500000007450581),
	(10580, 41, 9.65, 9, 0.0500000007450581),
	(10580, 65, 21.05, 30, 0.0500000007450581),
	(10581, 75, 7.75, 50, 0.200000002980232),
	(10582, 57, 19.5, 4, 0),
	(10582, 76, 18, 14, 0),
	(10583, 29, 123.79, 10, 0),
	(10583, 60, 34, 24, 0.150000005960464),
	(10583, 69, 36, 10, 0.150000005960464),
	(10584, 31, 12.5, 50, 0.0500000007450581),
	(10585, 47, 9.5, 15, 0),
	(10586, 52, 7, 4, 0.150000005960464),
	(10587, 26, 31.23, 6, 0),
	(10587, 35, 18, 20, 0),
	(10587, 77, 13, 20, 0),
	(10588, 18, 62.5, 40, 0.200000002980232),
	(10588, 42, 14, 100, 0.200000002980232),
	(10589, 35, 18, 4, 0),
	(10590, 1, 18, 20, 0),
	(10590, 77, 13, 60, 0.0500000007450581),
	(10591, 3, 10, 14, 0),
	(10591, 7, 30, 10, 0),
	(10591, 54, 7.45, 50, 0),
	(10592, 15, 15.5, 25, 0.0500000007450581),
	(10592, 26, 31.23, 5, 0.0500000007450581),
	(10593, 20, 81, 21, 0.200000002980232),
	(10593, 69, 36, 20, 0.200000002980232),
	(10593, 76, 18, 4, 0.200000002980232),
	(10594, 52, 7, 24, 0),
	(10594, 58, 13.25, 30, 0),
	(10595, 35, 18, 30, 0.25),
	(10595, 61, 28.5, 120, 0.25),
	(10595, 69, 36, 65, 0.25),
	(10596, 56, 38, 5, 0.200000002980232),
	(10596, 63, 43.9, 24, 0.200000002980232),
	(10596, 75, 7.75, 30, 0.200000002980232),
	(10597, 24, 4.5, 35, 0.200000002980232),
	(10597, 57, 19.5, 20, 0),
	(10597, 65, 21.05, 12, 0.200000002980232),
	(10598, 27, 43.9, 50, 0),
	(10598, 71, 21.5, 9, 0),
	(10599, 62, 49.3, 10, 0),
	(10600, 54, 7.45, 4, 0),
	(10600, 73, 15, 30, 0),
	(10601, 13, 6, 60, 0),
	(10601, 59, 55, 35, 0),
	(10602, 77, 13, 5, 0.25),
	(10603, 22, 21, 48, 0),
	(10603, 49, 20, 25, 0.0500000007450581),
	(10604, 48, 12.75, 6, 0.100000001490116),
	(10604, 76, 18, 10, 0.100000001490116),
	(10605, 16, 17.45, 30, 0.0500000007450581),
	(10605, 59, 55, 20, 0.0500000007450581),
	(10605, 60, 34, 70, 0.0500000007450581),
	(10605, 71, 21.5, 15, 0.0500000007450581),
	(10606, 4, 22, 20, 0.200000002980232),
	(10606, 55, 24, 20, 0.200000002980232),
	(10606, 62, 49.3, 10, 0.200000002980232),
	(10607, 7, 30, 45, 0),
	(10607, 17, 39, 100, 0),
	(10607, 33, 2.5, 14, 0),
	(10607, 40, 18.4, 42, 0),
	(10607, 72, 34.8, 12, 0),
	(10608, 56, 38, 28, 0),
	(10609, 1, 18, 3, 0),
	(10609, 10, 31, 10, 0),
	(10609, 21, 10, 6, 0),
	(10610, 36, 19, 21, 0.25),
	(10611, 1, 18, 6, 0),
	(10611, 2, 19, 10, 0),
	(10611, 60, 34, 15, 0),
	(10612, 10, 31, 70, 0),
	(10612, 36, 19, 55, 0),
	(10612, 49, 20, 18, 0),
	(10612, 60, 34, 40, 0),
	(10612, 76, 18, 80, 0),
	(10613, 13, 6, 8, 0.100000001490116),
	(10613, 75, 7.75, 40, 0),
	(10614, 11, 21, 14, 0),
	(10614, 21, 10, 8, 0),
	(10614, 39, 18, 5, 0),
	(10615, 55, 24, 5, 0),
	(10616, 38, 263.5, 15, 0.0500000007450581),
	(10616, 56, 38, 14, 0),
	(10616, 70, 15, 15, 0.0500000007450581),
	(10616, 71, 21.5, 15, 0.0500000007450581),
	(10617, 59, 55, 30, 0.150000005960464),
	(10618, 6, 25, 70, 0),
	(10618, 56, 38, 20, 0),
	(10618, 68, 12.5, 15, 0),
	(10619, 21, 10, 42, 0),
	(10619, 22, 21, 40, 0),
	(10620, 24, 4.5, 5, 0),
	(10620, 52, 7, 5, 0),
	(10621, 19, 9.2, 5, 0),
	(10621, 23, 9, 10, 0),
	(10621, 70, 15, 20, 0),
	(10621, 71, 21.5, 15, 0),
	(10622, 2, 19, 20, 0),
	(10622, 68, 12.5, 18, 0.200000002980232),
	(10623, 14, 23.25, 21, 0),
	(10623, 19, 9.2, 15, 0.100000001490116),
	(10623, 21, 10, 25, 0.100000001490116),
	(10623, 24, 4.5, 3, 0),
	(10623, 35, 18, 30, 0.100000001490116),
	(10624, 28, 45.6, 10, 0),
	(10624, 29, 123.79, 6, 0),
	(10624, 44, 19.45, 10, 0),
	(10625, 14, 23.25, 3, 0),
	(10625, 42, 14, 5, 0),
	(10625, 60, 34, 10, 0),
	(10626, 53, 32.8, 12, 0),
	(10626, 60, 34, 20, 0),
	(10626, 71, 21.5, 20, 0),
	(10627, 62, 49.3, 15, 0),
	(10627, 73, 15, 35, 0.150000005960464),
	(10628, 1, 18, 25, 0),
	(10629, 29, 123.79, 20, 0),
	(10629, 64, 33.25, 9, 0),
	(10630, 55, 24, 12, 0.0500000007450581),
	(10630, 76, 18, 35, 0),
	(10631, 75, 7.75, 8, 0.100000001490116),
	(10632, 2, 19, 30, 0.0500000007450581),
	(10632, 33, 2.5, 20, 0.0500000007450581),
	(10633, 12, 38, 36, 0.150000005960464),
	(10633, 13, 6, 13, 0.150000005960464),
	(10633, 26, 31.23, 35, 0.150000005960464),
	(10633, 62, 49.3, 80, 0.150000005960464),
	(10634, 7, 30, 35, 0),
	(10634, 18, 62.5, 50, 0),
	(10634, 51, 53, 15, 0),
	(10634, 75, 7.75, 2, 0),
	(10635, 4, 22, 10, 0.100000001490116),
	(10635, 5, 21.35, 15, 0.100000001490116),
	(10635, 22, 21, 40, 0),
	(10636, 4, 22, 25, 0),
	(10636, 58, 13.25, 6, 0),
	(10637, 11, 21, 10, 0),
	(10637, 50, 16.25, 25, 0.0500000007450581),
	(10637, 56, 38, 60, 0.0500000007450581),
	(10638, 45, 9.5, 20, 0),
	(10638, 65, 21.05, 21, 0),
	(10638, 72, 34.8, 60, 0),
	(10639, 18, 62.5, 8, 0),
	(10640, 69, 36, 20, 0.25),
	(10640, 70, 15, 15, 0.25),
	(10641, 2, 19, 50, 0),
	(10641, 40, 18.4, 60, 0),
	(10642, 21, 10, 30, 0.200000002980232),
	(10642, 61, 28.5, 20, 0.200000002980232),
	(10643, 28, 45.6, 15, 0.25),
	(10643, 39, 18, 21, 0.25),
	(10643, 46, 12, 2, 0.25),
	(10644, 18, 62.5, 4, 0.100000001490116),
	(10644, 43, 46, 20, 0),
	(10644, 46, 12, 21, 0.100000001490116),
	(10645, 18, 62.5, 20, 0),
	(10645, 36, 19, 15, 0),
	(10646, 1, 18, 15, 0.25),
	(10646, 10, 31, 18, 0.25),
	(10646, 71, 21.5, 30, 0.25),
	(10646, 77, 13, 35, 0.25),
	(10647, 19, 9.2, 30, 0),
	(10647, 39, 18, 20, 0),
	(10648, 22, 21, 15, 0),
	(10648, 24, 4.5, 15, 0.150000005960464),
	(10649, 28, 45.6, 20, 0),
	(10649, 72, 34.8, 15, 0),
	(10650, 30, 25.89, 30, 0),
	(10650, 53, 32.8, 25, 0.0500000007450581),
	(10650, 54, 7.45, 30, 0),
	(10651, 19, 9.2, 12, 0.25),
	(10651, 22, 21, 20, 0.25),
	(10652, 30, 25.89, 2, 0.25),
	(10652, 42, 14, 20, 0),
	(10653, 16, 17.45, 30, 0.100000001490116),
	(10653, 60, 34, 20, 0.100000001490116),
	(10654, 4, 22, 12, 0.100000001490116),
	(10654, 39, 18, 20, 0.100000001490116),
	(10654, 54, 7.45, 6, 0.100000001490116),
	(10655, 41, 9.65, 20, 0.200000002980232),
	(10656, 14, 23.25, 3, 0.100000001490116),
	(10656, 44, 19.45, 28, 0.100000001490116),
	(10656, 47, 9.5, 6, 0.100000001490116),
	(10657, 15, 15.5, 50, 0),
	(10657, 41, 9.65, 24, 0),
	(10657, 46, 12, 45, 0),
	(10657, 47, 9.5, 10, 0),
	(10657, 56, 38, 45, 0),
	(10657, 60, 34, 30, 0),
	(10658, 21, 10, 60, 0),
	(10658, 40, 18.4, 70, 0.0500000007450581),
	(10658, 60, 34, 55, 0.0500000007450581),
	(10658, 77, 13, 70, 0.0500000007450581),
	(10659, 31, 12.5, 20, 0.0500000007450581),
	(10659, 40, 18.4, 24, 0.0500000007450581),
	(10659, 70, 15, 40, 0.0500000007450581),
	(10660, 20, 81, 21, 0),
	(10661, 39, 18, 3, 0.200000002980232),
	(10661, 58, 13.25, 49, 0.200000002980232),
	(10662, 68, 12.5, 10, 0),
	(10663, 40, 18.4, 30, 0.0500000007450581),
	(10663, 42, 14, 30, 0.0500000007450581),
	(10663, 51, 53, 20, 0.0500000007450581),
	(10664, 10, 31, 24, 0.150000005960464),
	(10664, 56, 38, 12, 0.150000005960464),
	(10664, 65, 21.05, 15, 0.150000005960464),
	(10665, 51, 53, 20, 0),
	(10665, 59, 55, 1, 0),
	(10665, 76, 18, 10, 0),
	(10666, 29, 123.79, 36, 0),
	(10666, 65, 21.05, 10, 0),
	(10667, 69, 36, 45, 0.200000002980232),
	(10667, 71, 21.5, 14, 0.200000002980232),
	(10668, 31, 12.5, 8, 0.100000001490116),
	(10668, 55, 24, 4, 0.100000001490116),
	(10668, 64, 33.25, 15, 0.100000001490116),
	(10669, 36, 19, 30, 0),
	(10670, 23, 9, 32, 0),
	(10670, 46, 12, 60, 0),
	(10670, 67, 14, 25, 0),
	(10670, 73, 15, 50, 0),
	(10670, 75, 7.75, 25, 0),
	(10671, 16, 17.45, 10, 0),
	(10671, 62, 49.3, 10, 0),
	(10671, 65, 21.05, 12, 0),
	(10672, 38, 263.5, 15, 0.100000001490116),
	(10672, 71, 21.5, 12, 0),
	(10673, 16, 17.45, 3, 0),
	(10673, 42, 14, 6, 0),
	(10673, 43, 46, 6, 0),
	(10674, 23, 9, 5, 0),
	(10675, 14, 23.25, 30, 0),
	(10675, 53, 32.8, 10, 0),
	(10675, 58, 13.25, 30, 0),
	(10676, 10, 31, 2, 0),
	(10676, 19, 9.2, 7, 0),
	(10676, 44, 19.45, 21, 0),
	(10677, 26, 31.23, 30, 0.150000005960464),
	(10677, 33, 2.5, 8, 0.150000005960464),
	(10678, 12, 38, 100, 0),
	(10678, 33, 2.5, 30, 0),
	(10678, 41, 9.65, 120, 0),
	(10678, 54, 7.45, 30, 0),
	(10679, 59, 55, 12, 0),
	(10680, 16, 17.45, 50, 0.25),
	(10680, 31, 12.5, 20, 0.25),
	(10680, 42, 14, 40, 0.25),
	(10681, 19, 9.2, 30, 0.100000001490116),
	(10681, 21, 10, 12, 0.100000001490116),
	(10681, 64, 33.25, 28, 0),
	(10682, 33, 2.5, 30, 0),
	(10682, 66, 17, 4, 0),
	(10682, 75, 7.75, 30, 0),
	(10683, 52, 7, 9, 0),
	(10684, 40, 18.4, 20, 0),
	(10684, 47, 9.5, 40, 0),
	(10684, 60, 34, 30, 0),
	(10685, 10, 31, 20, 0),
	(10685, 41, 9.65, 4, 0),
	(10685, 47, 9.5, 15, 0),
	(10686, 17, 39, 30, 0.200000002980232),
	(10686, 26, 31.23, 15, 0),
	(10687, 9, 97, 50, 0.25),
	(10687, 29, 123.79, 10, 0),
	(10687, 36, 19, 6, 0.25),
	(10688, 10, 31, 18, 0.100000001490116),
	(10688, 28, 45.6, 60, 0.100000001490116),
	(10688, 34, 14, 14, 0),
	(10689, 1, 18, 35, 0.25),
	(10690, 56, 38, 20, 0.25),
	(10690, 77, 13, 30, 0.25),
	(10691, 1, 18, 30, 0),
	(10691, 29, 123.79, 40, 0),
	(10691, 43, 46, 40, 0),
	(10691, 44, 19.45, 24, 0),
	(10691, 62, 49.3, 48, 0),
	(10692, 63, 43.9, 20, 0),
	(10693, 9, 97, 6, 0),
	(10693, 54, 7.45, 60, 0.150000005960464),
	(10693, 69, 36, 30, 0.150000005960464),
	(10693, 73, 15, 15, 0.150000005960464),
	(10694, 7, 30, 90, 0),
	(10694, 59, 55, 25, 0),
	(10694, 70, 15, 50, 0),
	(10695, 8, 40, 10, 0),
	(10695, 12, 38, 4, 0),
	(10695, 24, 4.5, 20, 0),
	(10696, 17, 39, 20, 0),
	(10696, 46, 12, 18, 0),
	(10697, 19, 9.2, 7, 0.25),
	(10697, 35, 18, 9, 0.25),
	(10697, 58, 13.25, 30, 0.25),
	(10697, 70, 15, 30, 0.25),
	(10698, 11, 21, 15, 0),
	(10698, 17, 39, 8, 0.0500000007450581),
	(10698, 29, 123.79, 12, 0.0500000007450581),
	(10698, 65, 21.05, 65, 0.0500000007450581),
	(10698, 70, 15, 8, 0.0500000007450581),
	(10699, 47, 9.5, 12, 0),
	(10700, 1, 18, 5, 0.200000002980232),
	(10700, 34, 14, 12, 0.200000002980232),
	(10700, 68, 12.5, 40, 0.200000002980232),
	(10700, 71, 21.5, 60, 0.200000002980232),
	(10701, 59, 55, 42, 0.150000005960464),
	(10701, 71, 21.5, 20, 0.150000005960464),
	(10701, 76, 18, 35, 0.150000005960464),
	(10702, 3, 10, 6, 0),
	(10702, 76, 18, 15, 0),
	(10703, 2, 19, 5, 0),
	(10703, 59, 55, 35, 0),
	(10703, 73, 15, 35, 0),
	(10704, 4, 22, 6, 0),
	(10704, 24, 4.5, 35, 0),
	(10704, 48, 12.75, 24, 0),
	(10705, 31, 12.5, 20, 0),
	(10705, 32, 32, 4, 0),
	(10706, 16, 17.45, 20, 0),
	(10706, 43, 46, 24, 0),
	(10706, 59, 55, 8, 0),
	(10707, 55, 24, 21, 0),
	(10707, 57, 19.5, 40, 0),
	(10707, 70, 15, 28, 0.150000005960464),
	(10708, 5, 21.35, 4, 0),
	(10708, 36, 19, 5, 0),
	(10709, 8, 40, 40, 0),
	(10709, 51, 53, 28, 0),
	(10709, 60, 34, 10, 0),
	(10710, 19, 9.2, 5, 0),
	(10710, 47, 9.5, 5, 0),
	(10711, 19, 9.2, 12, 0),
	(10711, 41, 9.65, 42, 0),
	(10711, 53, 32.8, 120, 0),
	(10712, 53, 32.8, 3, 0.0500000007450581),
	(10712, 56, 38, 30, 0),
	(10713, 10, 31, 18, 0),
	(10713, 26, 31.23, 30, 0),
	(10713, 45, 9.5, 110, 0),
	(10713, 46, 12, 24, 0),
	(10714, 2, 19, 30, 0.25),
	(10714, 17, 39, 27, 0.25),
	(10714, 47, 9.5, 50, 0.25),
	(10714, 56, 38, 18, 0.25),
	(10714, 58, 13.25, 12, 0.25),
	(10715, 10, 31, 21, 0),
	(10715, 71, 21.5, 30, 0),
	(10716, 21, 10, 5, 0),
	(10716, 51, 53, 7, 0),
	(10716, 61, 28.5, 10, 0),
	(10717, 21, 10, 32, 0.0500000007450581),
	(10717, 54, 7.45, 15, 0),
	(10717, 69, 36, 25, 0.0500000007450581),
	(10718, 12, 38, 36, 0),
	(10718, 16, 17.45, 20, 0),
	(10718, 36, 19, 40, 0),
	(10718, 62, 49.3, 20, 0),
	(10719, 18, 62.5, 12, 0.25),
	(10719, 30, 25.89, 3, 0.25),
	(10719, 54, 7.45, 40, 0.25),
	(10720, 35, 18, 21, 0),
	(10720, 71, 21.5, 8, 0),
	(10721, 44, 19.45, 50, 0.0500000007450581),
	(10722, 2, 19, 3, 0),
	(10722, 31, 12.5, 50, 0),
	(10722, 68, 12.5, 45, 0),
	(10722, 75, 7.75, 42, 0),
	(10723, 26, 31.23, 15, 0),
	(10724, 10, 31, 16, 0),
	(10724, 61, 28.5, 5, 0),
	(10725, 41, 9.65, 12, 0),
	(10725, 52, 7, 4, 0),
	(10725, 55, 24, 6, 0),
	(10726, 4, 22, 25, 0),
	(10726, 11, 21, 5, 0),
	(10727, 17, 39, 20, 0.0500000007450581),
	(10727, 56, 38, 10, 0.0500000007450581),
	(10727, 59, 55, 10, 0.0500000007450581),
	(10728, 30, 25.89, 15, 0),
	(10728, 40, 18.4, 6, 0),
	(10728, 55, 24, 12, 0),
	(10728, 60, 34, 15, 0),
	(10729, 1, 18, 50, 0),
	(10729, 21, 10, 30, 0),
	(10729, 50, 16.25, 40, 0),
	(10730, 16, 17.45, 15, 0.0500000007450581),
	(10730, 31, 12.5, 3, 0.0500000007450581),
	(10730, 65, 21.05, 10, 0.0500000007450581),
	(10731, 21, 10, 40, 0.0500000007450581),
	(10731, 51, 53, 30, 0.0500000007450581),
	(10732, 76, 18, 20, 0),
	(10733, 14, 23.25, 16, 0),
	(10733, 28, 45.6, 20, 0),
	(10733, 52, 7, 25, 0),
	(10734, 6, 25, 30, 0),
	(10734, 30, 25.89, 15, 0),
	(10734, 76, 18, 20, 0),
	(10735, 61, 28.5, 20, 0.100000001490116),
	(10735, 77, 13, 2, 0.100000001490116),
	(10736, 65, 21.05, 40, 0),
	(10736, 75, 7.75, 20, 0),
	(10737, 13, 6, 4, 0),
	(10737, 41, 9.65, 12, 0),
	(10738, 16, 17.45, 3, 0),
	(10739, 36, 19, 6, 0),
	(10739, 52, 7, 18, 0),
	(10740, 28, 45.6, 5, 0.200000002980232),
	(10740, 35, 18, 35, 0.200000002980232),
	(10740, 45, 9.5, 40, 0.200000002980232),
	(10740, 56, 38, 14, 0.200000002980232),
	(10741, 2, 19, 15, 0.200000002980232),
	(10742, 3, 10, 20, 0),
	(10742, 60, 34, 50, 0),
	(10742, 72, 34.8, 35, 0),
	(10743, 46, 12, 28, 0.0500000007450581),
	(10744, 40, 18.4, 50, 0.200000002980232),
	(10745, 18, 62.5, 24, 0),
	(10745, 44, 19.45, 16, 0),
	(10745, 59, 55, 45, 0),
	(10745, 72, 34.8, 7, 0),
	(10746, 13, 6, 6, 0),
	(10746, 42, 14, 28, 0),
	(10746, 62, 49.3, 9, 0),
	(10746, 69, 36, 40, 0),
	(10747, 31, 12.5, 8, 0),
	(10747, 41, 9.65, 35, 0),
	(10747, 63, 43.9, 9, 0),
	(10747, 69, 36, 30, 0),
	(10748, 23, 9, 44, 0),
	(10748, 40, 18.4, 40, 0),
	(10748, 56, 38, 28, 0),
	(10749, 56, 38, 15, 0),
	(10749, 59, 55, 6, 0),
	(10749, 76, 18, 10, 0),
	(10750, 14, 23.25, 5, 0.150000005960464),
	(10750, 45, 9.5, 40, 0.150000005960464),
	(10750, 59, 55, 25, 0.150000005960464),
	(10751, 26, 31.23, 12, 0.100000001490116),
	(10751, 30, 25.89, 30, 0),
	(10751, 50, 16.25, 20, 0.100000001490116),
	(10751, 73, 15, 15, 0),
	(10752, 1, 18, 8, 0),
	(10752, 69, 36, 3, 0),
	(10753, 45, 9.5, 4, 0),
	(10753, 74, 10, 5, 0),
	(10754, 40, 18.4, 3, 0),
	(10755, 47, 9.5, 30, 0.25),
	(10755, 56, 38, 30, 0.25),
	(10755, 57, 19.5, 14, 0.25),
	(10755, 69, 36, 25, 0.25),
	(10756, 18, 62.5, 21, 0.200000002980232),
	(10756, 36, 19, 20, 0.200000002980232),
	(10756, 68, 12.5, 6, 0.200000002980232),
	(10756, 69, 36, 20, 0.200000002980232),
	(10757, 34, 14, 30, 0),
	(10757, 59, 55, 7, 0),
	(10757, 62, 49.3, 30, 0),
	(10757, 64, 33.25, 24, 0),
	(10758, 26, 31.23, 20, 0),
	(10758, 52, 7, 60, 0),
	(10758, 70, 15, 40, 0),
	(10759, 32, 32, 10, 0),
	(10760, 25, 14, 12, 0.25),
	(10760, 27, 43.9, 40, 0),
	(10760, 43, 46, 30, 0.25),
	(10761, 25, 14, 35, 0.25),
	(10761, 75, 7.75, 18, 0),
	(10762, 39, 18, 16, 0),
	(10762, 47, 9.5, 30, 0),
	(10762, 51, 53, 28, 0),
	(10762, 56, 38, 60, 0),
	(10763, 21, 10, 40, 0),
	(10763, 22, 21, 6, 0),
	(10763, 24, 4.5, 20, 0),
	(10764, 3, 10, 20, 0.100000001490116),
	(10764, 39, 18, 130, 0.100000001490116),
	(10765, 65, 21.05, 80, 0.100000001490116),
	(10766, 2, 19, 40, 0),
	(10766, 7, 30, 35, 0),
	(10766, 68, 12.5, 40, 0),
	(10767, 42, 14, 2, 0),
	(10768, 22, 21, 4, 0),
	(10768, 31, 12.5, 50, 0),
	(10768, 60, 34, 15, 0),
	(10768, 71, 21.5, 12, 0),
	(10769, 41, 9.65, 30, 0.0500000007450581),
	(10769, 52, 7, 15, 0.0500000007450581),
	(10769, 61, 28.5, 20, 0),
	(10769, 62, 49.3, 15, 0),
	(10770, 11, 21, 15, 0.25),
	(10771, 71, 21.5, 16, 0),
	(10772, 29, 123.79, 18, 0),
	(10772, 59, 55, 25, 0),
	(10773, 17, 39, 33, 0),
	(10773, 31, 12.5, 70, 0.200000002980232),
	(10773, 75, 7.75, 7, 0.200000002980232),
	(10774, 31, 12.5, 2, 0.25),
	(10774, 66, 17, 50, 0),
	(10775, 10, 31, 6, 0),
	(10775, 67, 14, 3, 0),
	(10776, 31, 12.5, 16, 0.0500000007450581),
	(10776, 42, 14, 12, 0.0500000007450581),
	(10776, 45, 9.5, 27, 0.0500000007450581),
	(10776, 51, 53, 120, 0.0500000007450581),
	(10777, 42, 14, 20, 0.200000002980232),
	(10778, 41, 9.65, 10, 0),
	(10779, 16, 17.45, 20, 0),
	(10779, 62, 49.3, 20, 0),
	(10780, 70, 15, 35, 0),
	(10780, 77, 13, 15, 0),
	(10781, 54, 7.45, 3, 0.200000002980232),
	(10781, 56, 38, 20, 0.200000002980232),
	(10781, 74, 10, 35, 0),
	(10782, 31, 12.5, 1, 0),
	(10783, 31, 12.5, 10, 0),
	(10783, 38, 263.5, 5, 0),
	(10784, 36, 19, 30, 0),
	(10784, 39, 18, 2, 0.150000005960464),
	(10784, 72, 34.8, 30, 0.150000005960464),
	(10785, 10, 31, 10, 0),
	(10785, 75, 7.75, 10, 0),
	(10786, 8, 40, 30, 0.200000002980232),
	(10786, 30, 25.89, 15, 0.200000002980232),
	(10786, 75, 7.75, 42, 0.200000002980232),
	(10787, 2, 19, 15, 0.0500000007450581),
	(10787, 29, 123.79, 20, 0.0500000007450581),
	(10788, 19, 9.2, 50, 0.0500000007450581),
	(10788, 75, 7.75, 40, 0.0500000007450581),
	(10789, 18, 62.5, 30, 0),
	(10789, 35, 18, 15, 0),
	(10789, 63, 43.9, 30, 0),
	(10789, 68, 12.5, 18, 0),
	(10790, 7, 30, 3, 0.150000005960464),
	(10790, 56, 38, 20, 0.150000005960464),
	(10791, 29, 123.79, 14, 0.0500000007450581),
	(10791, 41, 9.65, 20, 0.0500000007450581),
	(10792, 2, 19, 10, 0),
	(10792, 54, 7.45, 3, 0),
	(10792, 68, 12.5, 15, 0),
	(10793, 41, 9.65, 14, 0),
	(10793, 52, 7, 8, 0),
	(10794, 14, 23.25, 15, 0.200000002980232),
	(10794, 54, 7.45, 6, 0.200000002980232),
	(10795, 16, 17.45, 65, 0),
	(10795, 17, 39, 35, 0.25),
	(10796, 26, 31.23, 21, 0.200000002980232),
	(10796, 44, 19.45, 10, 0),
	(10796, 64, 33.25, 35, 0.200000002980232),
	(10796, 69, 36, 24, 0.200000002980232),
	(10797, 11, 21, 20, 0),
	(10798, 62, 49.3, 2, 0),
	(10798, 72, 34.8, 10, 0),
	(10799, 13, 6, 20, 0.150000005960464),
	(10799, 24, 4.5, 20, 0.150000005960464),
	(10799, 59, 55, 25, 0),
	(10800, 11, 21, 50, 0.100000001490116),
	(10800, 51, 53, 10, 0.100000001490116),
	(10800, 54, 7.45, 7, 0.100000001490116),
	(10801, 17, 39, 40, 0.25),
	(10801, 29, 123.79, 20, 0.25),
	(10802, 30, 25.89, 25, 0.25),
	(10802, 51, 53, 30, 0.25),
	(10802, 55, 24, 60, 0.25),
	(10802, 62, 49.3, 5, 0.25),
	(10803, 19, 9.2, 24, 0.0500000007450581),
	(10803, 25, 14, 15, 0.0500000007450581),
	(10803, 59, 55, 15, 0.0500000007450581),
	(10804, 10, 31, 36, 0),
	(10804, 28, 45.6, 24, 0),
	(10804, 49, 20, 4, 0.150000005960464),
	(10805, 34, 14, 10, 0),
	(10805, 38, 263.5, 10, 0),
	(10806, 2, 19, 20, 0.25),
	(10806, 65, 21.05, 2, 0),
	(10806, 74, 10, 15, 0.25),
	(10807, 40, 18.4, 1, 0),
	(10808, 56, 38, 20, 0.150000005960464),
	(10808, 76, 18, 50, 0.150000005960464),
	(10809, 52, 7, 20, 0),
	(10810, 13, 6, 7, 0),
	(10810, 25, 14, 5, 0),
	(10810, 70, 15, 5, 0),
	(10811, 19, 9.2, 15, 0),
	(10811, 23, 9, 18, 0),
	(10811, 40, 18.4, 30, 0),
	(10812, 31, 12.5, 16, 0.100000001490116),
	(10812, 72, 34.8, 40, 0.100000001490116),
	(10812, 77, 13, 20, 0),
	(10813, 2, 19, 12, 0.200000002980232),
	(10813, 46, 12, 35, 0),
	(10814, 41, 9.65, 20, 0),
	(10814, 43, 46, 20, 0.150000005960464),
	(10814, 48, 12.75, 8, 0.150000005960464),
	(10814, 61, 28.5, 30, 0.150000005960464),
	(10815, 33, 2.5, 16, 0),
	(10816, 38, 263.5, 30, 0.0500000007450581),
	(10816, 62, 49.3, 20, 0.0500000007450581),
	(10817, 26, 31.23, 40, 0.150000005960464),
	(10817, 38, 263.5, 30, 0),
	(10817, 40, 18.4, 60, 0.150000005960464),
	(10817, 62, 49.3, 25, 0.150000005960464),
	(10818, 32, 32, 20, 0),
	(10818, 41, 9.65, 20, 0),
	(10819, 43, 46, 7, 0),
	(10819, 75, 7.75, 20, 0),
	(10820, 56, 38, 30, 0),
	(10821, 35, 18, 20, 0),
	(10821, 51, 53, 6, 0),
	(10822, 62, 49.3, 3, 0),
	(10822, 70, 15, 6, 0),
	(10823, 11, 21, 20, 0.100000001490116),
	(10823, 57, 19.5, 15, 0),
	(10823, 59, 55, 40, 0.100000001490116),
	(10823, 77, 13, 15, 0.100000001490116),
	(10824, 41, 9.65, 12, 0),
	(10824, 70, 15, 9, 0),
	(10825, 26, 31.23, 12, 0),
	(10825, 53, 32.8, 20, 0),
	(10826, 31, 12.5, 35, 0),
	(10826, 57, 19.5, 15, 0),
	(10827, 10, 31, 15, 0),
	(10827, 39, 18, 21, 0),
	(10828, 20, 81, 5, 0),
	(10828, 38, 263.5, 2, 0),
	(10829, 2, 19, 10, 0),
	(10829, 8, 40, 20, 0),
	(10829, 13, 6, 10, 0),
	(10829, 60, 34, 21, 0),
	(10830, 6, 25, 6, 0),
	(10830, 39, 18, 28, 0),
	(10830, 60, 34, 30, 0),
	(10830, 68, 12.5, 24, 0),
	(10831, 19, 9.2, 2, 0),
	(10831, 35, 18, 8, 0),
	(10831, 38, 263.5, 8, 0),
	(10831, 43, 46, 9, 0),
	(10832, 13, 6, 3, 0.200000002980232),
	(10832, 25, 14, 10, 0.200000002980232),
	(10832, 44, 19.45, 16, 0.200000002980232),
	(10832, 64, 33.25, 3, 0),
	(10833, 7, 30, 20, 0.100000001490116),
	(10833, 31, 12.5, 9, 0.100000001490116),
	(10833, 53, 32.8, 9, 0.100000001490116),
	(10834, 29, 123.79, 8, 0.0500000007450581),
	(10834, 30, 25.89, 20, 0.0500000007450581),
	(10835, 59, 55, 15, 0),
	(10835, 77, 13, 2, 0.200000002980232),
	(10836, 22, 21, 52, 0),
	(10836, 35, 18, 6, 0),
	(10836, 57, 19.5, 24, 0),
	(10836, 60, 34, 60, 0),
	(10836, 64, 33.25, 30, 0),
	(10837, 13, 6, 6, 0),
	(10837, 40, 18.4, 25, 0),
	(10837, 47, 9.5, 40, 0.25),
	(10837, 76, 18, 21, 0.25),
	(10838, 1, 18, 4, 0.25),
	(10838, 18, 62.5, 25, 0.25),
	(10838, 36, 19, 50, 0.25),
	(10839, 58, 13.25, 30, 0.100000001490116),
	(10839, 72, 34.8, 15, 0.100000001490116),
	(10840, 25, 14, 6, 0.200000002980232),
	(10840, 39, 18, 10, 0.200000002980232),
	(10841, 10, 31, 16, 0),
	(10841, 56, 38, 30, 0),
	(10841, 59, 55, 50, 0),
	(10841, 77, 13, 15, 0),
	(10842, 11, 21, 15, 0),
	(10842, 43, 46, 5, 0),
	(10842, 68, 12.5, 20, 0),
	(10842, 70, 15, 12, 0),
	(10843, 51, 53, 4, 0.25),
	(10844, 22, 21, 35, 0),
	(10845, 23, 9, 70, 0.100000001490116),
	(10845, 35, 18, 25, 0.100000001490116),
	(10845, 42, 14, 42, 0.100000001490116),
	(10845, 58, 13.25, 60, 0.100000001490116),
	(10845, 64, 33.25, 48, 0),
	(10846, 4, 22, 21, 0),
	(10846, 70, 15, 30, 0),
	(10846, 74, 10, 20, 0),
	(10847, 1, 18, 80, 0.200000002980232),
	(10847, 19, 9.2, 12, 0.200000002980232),
	(10847, 37, 26, 60, 0.200000002980232),
	(10847, 45, 9.5, 36, 0.200000002980232),
	(10847, 60, 34, 45, 0.200000002980232),
	(10847, 71, 21.5, 55, 0.200000002980232),
	(10848, 5, 21.35, 30, 0),
	(10848, 9, 97, 3, 0),
	(10849, 3, 10, 49, 0),
	(10849, 26, 31.23, 18, 0.150000005960464),
	(10850, 25, 14, 20, 0.150000005960464),
	(10850, 33, 2.5, 4, 0.150000005960464),
	(10850, 70, 15, 30, 0.150000005960464),
	(10851, 2, 19, 5, 0.0500000007450581),
	(10851, 25, 14, 10, 0.0500000007450581),
	(10851, 57, 19.5, 10, 0.0500000007450581),
	(10851, 59, 55, 42, 0.0500000007450581),
	(10852, 2, 19, 15, 0),
	(10852, 17, 39, 6, 0),
	(10852, 62, 49.3, 50, 0),
	(10853, 18, 62.5, 10, 0),
	(10854, 10, 31, 100, 0.150000005960464),
	(10854, 13, 6, 65, 0.150000005960464),
	(10855, 16, 17.45, 50, 0),
	(10855, 31, 12.5, 14, 0),
	(10855, 56, 38, 24, 0),
	(10855, 65, 21.05, 15, 0.150000005960464),
	(10856, 2, 19, 20, 0),
	(10856, 42, 14, 20, 0),
	(10857, 3, 10, 30, 0),
	(10857, 26, 31.23, 35, 0.25),
	(10857, 29, 123.79, 10, 0.25),
	(10858, 7, 30, 5, 0),
	(10858, 27, 43.9, 10, 0),
	(10858, 70, 15, 4, 0),
	(10859, 24, 4.5, 40, 0.25),
	(10859, 54, 7.45, 35, 0.25),
	(10859, 64, 33.25, 30, 0.25),
	(10860, 51, 53, 3, 0),
	(10860, 76, 18, 20, 0),
	(10861, 17, 39, 42, 0),
	(10861, 18, 62.5, 20, 0),
	(10861, 21, 10, 40, 0),
	(10861, 33, 2.5, 35, 0),
	(10861, 62, 49.3, 3, 0),
	(10862, 11, 21, 25, 0),
	(10862, 52, 7, 8, 0),
	(10863, 1, 18, 20, 0.150000005960464),
	(10863, 58, 13.25, 12, 0.150000005960464),
	(10864, 35, 18, 4, 0),
	(10864, 67, 14, 15, 0),
	(10865, 38, 263.5, 60, 0.0500000007450581),
	(10865, 39, 18, 80, 0.0500000007450581),
	(10866, 2, 19, 21, 0.25),
	(10866, 24, 4.5, 6, 0.25),
	(10866, 30, 25.89, 40, 0.25),
	(10867, 53, 32.8, 3, 0),
	(10868, 26, 31.23, 20, 0),
	(10868, 35, 18, 30, 0),
	(10868, 49, 20, 42, 0.100000001490116),
	(10869, 1, 18, 40, 0),
	(10869, 11, 21, 10, 0),
	(10869, 23, 9, 50, 0),
	(10869, 68, 12.5, 20, 0),
	(10870, 35, 18, 3, 0),
	(10870, 51, 53, 2, 0),
	(10871, 6, 25, 50, 0.0500000007450581),
	(10871, 16, 17.45, 12, 0.0500000007450581),
	(10871, 17, 39, 16, 0.0500000007450581),
	(10872, 55, 24, 10, 0.0500000007450581),
	(10872, 62, 49.3, 20, 0.0500000007450581),
	(10872, 64, 33.25, 15, 0.0500000007450581),
	(10872, 65, 21.05, 21, 0.0500000007450581),
	(10873, 21, 10, 20, 0),
	(10873, 28, 45.6, 3, 0),
	(10874, 10, 31, 10, 0),
	(10875, 19, 9.2, 25, 0),
	(10875, 47, 9.5, 21, 0.100000001490116),
	(10875, 49, 20, 15, 0),
	(10876, 46, 12, 21, 0),
	(10876, 64, 33.25, 20, 0),
	(10877, 16, 17.45, 30, 0.25),
	(10877, 18, 62.5, 25, 0),
	(10878, 20, 81, 20, 0.0500000007450581),
	(10879, 40, 18.4, 12, 0),
	(10879, 65, 21.05, 10, 0),
	(10879, 76, 18, 10, 0),
	(10880, 23, 9, 30, 0.200000002980232),
	(10880, 61, 28.5, 30, 0.200000002980232),
	(10880, 70, 15, 50, 0.200000002980232),
	(10881, 73, 15, 10, 0),
	(10882, 42, 14, 25, 0),
	(10882, 49, 20, 20, 0.150000005960464),
	(10882, 54, 7.45, 32, 0.150000005960464),
	(10883, 24, 4.5, 8, 0),
	(10884, 21, 10, 40, 0.0500000007450581),
	(10884, 56, 38, 21, 0.0500000007450581),
	(10884, 65, 21.05, 12, 0.0500000007450581),
	(10885, 2, 19, 20, 0),
	(10885, 24, 4.5, 12, 0),
	(10885, 70, 15, 30, 0),
	(10885, 77, 13, 25, 0),
	(10886, 10, 31, 70, 0),
	(10886, 31, 12.5, 35, 0),
	(10886, 77, 13, 40, 0),
	(10887, 25, 14, 5, 0),
	(10888, 2, 19, 20, 0),
	(10888, 68, 12.5, 18, 0),
	(10889, 11, 21, 40, 0),
	(10889, 38, 263.5, 40, 0),
	(10890, 17, 39, 15, 0),
	(10890, 34, 14, 10, 0),
	(10890, 41, 9.65, 14, 0),
	(10891, 30, 25.89, 15, 0.0500000007450581),
	(10892, 59, 55, 40, 0.0500000007450581),
	(10893, 8, 40, 30, 0),
	(10893, 24, 4.5, 10, 0),
	(10893, 29, 123.79, 24, 0),
	(10893, 30, 25.89, 35, 0),
	(10893, 36, 19, 20, 0),
	(10894, 13, 6, 28, 0.0500000007450581),
	(10894, 69, 36, 50, 0.0500000007450581),
	(10894, 75, 7.75, 120, 0.0500000007450581),
	(10895, 24, 4.5, 110, 0),
	(10895, 39, 18, 45, 0),
	(10895, 40, 18.4, 91, 0),
	(10895, 60, 34, 100, 0),
	(10896, 45, 9.5, 15, 0),
	(10896, 56, 38, 16, 0),
	(10897, 29, 123.79, 80, 0),
	(10897, 30, 25.89, 36, 0),
	(10898, 13, 6, 5, 0),
	(10899, 39, 18, 8, 0.150000005960464),
	(10900, 70, 15, 3, 0.25),
	(10901, 41, 9.65, 30, 0),
	(10901, 71, 21.5, 30, 0),
	(10902, 55, 24, 30, 0.150000005960464),
	(10902, 62, 49.3, 6, 0.150000005960464),
	(10903, 13, 6, 40, 0),
	(10903, 65, 21.05, 21, 0),
	(10903, 68, 12.5, 20, 0),
	(10904, 58, 13.25, 15, 0),
	(10904, 62, 49.3, 35, 0),
	(10905, 1, 18, 20, 0.0500000007450581),
	(10906, 61, 28.5, 15, 0),
	(10907, 75, 7.75, 14, 0),
	(10908, 7, 30, 20, 0.0500000007450581),
	(10908, 52, 7, 14, 0.0500000007450581),
	(10909, 7, 30, 12, 0),
	(10909, 16, 17.45, 15, 0),
	(10909, 41, 9.65, 5, 0),
	(10910, 19, 9.2, 12, 0),
	(10910, 49, 20, 10, 0),
	(10910, 61, 28.5, 5, 0),
	(10911, 1, 18, 10, 0),
	(10911, 17, 39, 12, 0),
	(10911, 67, 14, 15, 0),
	(10912, 11, 21, 40, 0.25),
	(10912, 29, 123.79, 60, 0.25),
	(10913, 4, 22, 30, 0.25),
	(10913, 33, 2.5, 40, 0.25),
	(10913, 58, 13.25, 15, 0),
	(10914, 71, 21.5, 25, 0),
	(10915, 17, 39, 10, 0),
	(10915, 33, 2.5, 30, 0),
	(10915, 54, 7.45, 10, 0),
	(10916, 16, 17.45, 6, 0),
	(10916, 32, 32, 6, 0),
	(10916, 57, 19.5, 20, 0),
	(10917, 30, 25.89, 1, 0),
	(10917, 60, 34, 10, 0),
	(10918, 1, 18, 60, 0.25),
	(10918, 60, 34, 25, 0.25),
	(10919, 16, 17.45, 24, 0),
	(10919, 25, 14, 24, 0),
	(10919, 40, 18.4, 20, 0),
	(10920, 50, 16.25, 24, 0),
	(10921, 35, 18, 10, 0),
	(10921, 63, 43.9, 40, 0),
	(10922, 17, 39, 15, 0),
	(10922, 24, 4.5, 35, 0),
	(10923, 42, 14, 10, 0.200000002980232),
	(10923, 43, 46, 10, 0.200000002980232),
	(10923, 67, 14, 24, 0.200000002980232),
	(10924, 10, 31, 20, 0.100000001490116),
	(10924, 28, 45.6, 30, 0.100000001490116),
	(10924, 75, 7.75, 6, 0),
	(10925, 36, 19, 25, 0.150000005960464),
	(10925, 52, 7, 12, 0.150000005960464),
	(10926, 11, 21, 2, 0),
	(10926, 13, 6, 10, 0),
	(10926, 19, 9.2, 7, 0),
	(10926, 72, 34.8, 10, 0),
	(10927, 20, 81, 5, 0),
	(10927, 52, 7, 5, 0),
	(10927, 76, 18, 20, 0),
	(10928, 47, 9.5, 5, 0),
	(10928, 76, 18, 5, 0),
	(10929, 21, 10, 60, 0),
	(10929, 75, 7.75, 49, 0),
	(10929, 77, 13, 15, 0),
	(10930, 21, 10, 36, 0),
	(10930, 27, 43.9, 25, 0),
	(10930, 55, 24, 25, 0.200000002980232),
	(10930, 58, 13.25, 30, 0.200000002980232),
	(10931, 13, 6, 42, 0.150000005960464),
	(10931, 57, 19.5, 30, 0),
	(10932, 16, 17.45, 30, 0.100000001490116),
	(10932, 62, 49.3, 14, 0.100000001490116),
	(10932, 72, 34.8, 16, 0),
	(10932, 75, 7.75, 20, 0.100000001490116),
	(10933, 53, 32.8, 2, 0),
	(10933, 61, 28.5, 30, 0),
	(10934, 6, 25, 20, 0),
	(10935, 1, 18, 21, 0),
	(10935, 18, 62.5, 4, 0.25),
	(10935, 23, 9, 8, 0.25),
	(10936, 36, 19, 30, 0.200000002980232),
	(10937, 28, 45.6, 8, 0),
	(10937, 34, 14, 20, 0),
	(10938, 13, 6, 20, 0.25),
	(10938, 43, 46, 24, 0.25),
	(10938, 60, 34, 49, 0.25),
	(10938, 71, 21.5, 35, 0.25),
	(10939, 2, 19, 10, 0.150000005960464),
	(10939, 67, 14, 40, 0.150000005960464),
	(10940, 7, 30, 8, 0),
	(10940, 13, 6, 20, 0),
	(10941, 31, 12.5, 44, 0.25),
	(10941, 62, 49.3, 30, 0.25),
	(10941, 68, 12.5, 80, 0.25),
	(10941, 72, 34.8, 50, 0),
	(10942, 49, 20, 28, 0),
	(10943, 13, 6, 15, 0),
	(10943, 22, 21, 21, 0),
	(10943, 46, 12, 15, 0),
	(10944, 11, 21, 5, 0.25),
	(10944, 44, 19.45, 18, 0.25),
	(10944, 56, 38, 18, 0),
	(10945, 13, 6, 20, 0),
	(10945, 31, 12.5, 10, 0),
	(10946, 10, 31, 25, 0),
	(10946, 24, 4.5, 25, 0),
	(10946, 77, 13, 40, 0),
	(10947, 59, 55, 4, 0),
	(10948, 50, 16.25, 9, 0),
	(10948, 51, 53, 40, 0),
	(10948, 55, 24, 4, 0),
	(10949, 6, 25, 12, 0),
	(10949, 10, 31, 30, 0),
	(10949, 17, 39, 6, 0),
	(10949, 62, 49.3, 60, 0),
	(10950, 4, 22, 5, 0),
	(10951, 33, 2.5, 15, 0.0500000007450581),
	(10951, 41, 9.65, 6, 0.0500000007450581),
	(10951, 75, 7.75, 50, 0.0500000007450581),
	(10952, 6, 25, 16, 0.0500000007450581),
	(10952, 28, 45.6, 2, 0),
	(10953, 20, 81, 50, 0.0500000007450581),
	(10953, 31, 12.5, 50, 0.0500000007450581),
	(10954, 16, 17.45, 28, 0.150000005960464),
	(10954, 31, 12.5, 25, 0.150000005960464),
	(10954, 45, 9.5, 30, 0),
	(10954, 60, 34, 24, 0.150000005960464),
	(10955, 75, 7.75, 12, 0.200000002980232),
	(10956, 21, 10, 12, 0),
	(10956, 47, 9.5, 14, 0),
	(10956, 51, 53, 8, 0),
	(10957, 30, 25.89, 30, 0),
	(10957, 35, 18, 40, 0),
	(10957, 64, 33.25, 8, 0),
	(10958, 5, 21.35, 20, 0),
	(10958, 7, 30, 6, 0),
	(10958, 72, 34.8, 5, 0),
	(10959, 75, 7.75, 20, 0.150000005960464),
	(10960, 24, 4.5, 10, 0.25),
	(10960, 41, 9.65, 24, 0),
	(10961, 52, 7, 6, 0.0500000007450581),
	(10961, 76, 18, 60, 0),
	(10962, 7, 30, 45, 0),
	(10962, 13, 6, 77, 0),
	(10962, 53, 32.8, 20, 0),
	(10962, 69, 36, 9, 0),
	(10962, 76, 18, 44, 0),
	(10963, 60, 34, 2, 0.150000005960464),
	(10964, 18, 62.5, 6, 0),
	(10964, 38, 263.5, 5, 0),
	(10964, 69, 36, 10, 0),
	(10965, 51, 53, 16, 0),
	(10966, 37, 26, 8, 0),
	(10966, 56, 38, 12, 0.150000005960464),
	(10966, 62, 49.3, 12, 0.150000005960464),
	(10967, 19, 9.2, 12, 0),
	(10967, 49, 20, 40, 0),
	(10968, 12, 38, 30, 0),
	(10968, 24, 4.5, 30, 0),
	(10968, 64, 33.25, 4, 0),
	(10969, 46, 12, 9, 0),
	(10970, 52, 7, 40, 0.200000002980232),
	(10971, 29, 123.79, 14, 0),
	(10972, 17, 39, 6, 0),
	(10972, 33, 2.5, 7, 0),
	(10973, 26, 31.23, 5, 0),
	(10973, 41, 9.65, 6, 0),
	(10973, 75, 7.75, 10, 0),
	(10974, 63, 43.9, 10, 0),
	(10975, 8, 40, 16, 0),
	(10975, 75, 7.75, 10, 0),
	(10976, 28, 45.6, 20, 0),
	(10977, 39, 18, 30, 0),
	(10977, 47, 9.5, 30, 0),
	(10977, 51, 53, 10, 0),
	(10977, 63, 43.9, 20, 0),
	(10978, 8, 40, 20, 0.150000005960464),
	(10978, 21, 10, 40, 0.150000005960464),
	(10978, 40, 18.4, 10, 0),
	(10978, 44, 19.45, 6, 0.150000005960464),
	(10979, 7, 30, 18, 0),
	(10979, 12, 38, 20, 0),
	(10979, 24, 4.5, 80, 0),
	(10979, 27, 43.9, 30, 0),
	(10979, 31, 12.5, 24, 0),
	(10979, 63, 43.9, 35, 0),
	(10980, 75, 7.75, 40, 0.200000002980232),
	(10981, 38, 263.5, 60, 0),
	(10982, 7, 30, 20, 0),
	(10982, 43, 46, 9, 0),
	(10983, 13, 6, 84, 0.150000005960464),
	(10983, 57, 19.5, 15, 0),
	(10984, 16, 17.45, 55, 0),
	(10984, 24, 4.5, 20, 0),
	(10984, 36, 19, 40, 0),
	(10985, 16, 17.45, 36, 0.100000001490116),
	(10985, 18, 62.5, 8, 0.100000001490116),
	(10985, 32, 32, 35, 0.100000001490116),
	(10986, 11, 21, 30, 0),
	(10986, 20, 81, 15, 0),
	(10986, 76, 18, 10, 0),
	(10986, 77, 13, 15, 0),
	(10987, 7, 30, 60, 0),
	(10987, 43, 46, 6, 0),
	(10987, 72, 34.8, 20, 0),
	(10988, 7, 30, 60, 0),
	(10988, 62, 49.3, 40, 0.100000001490116),
	(10989, 6, 25, 40, 0),
	(10989, 11, 21, 15, 0),
	(10989, 41, 9.65, 4, 0),
	(10990, 21, 10, 65, 0),
	(10990, 34, 14, 60, 0.150000005960464),
	(10990, 55, 24, 65, 0.150000005960464),
	(10990, 61, 28.5, 66, 0.150000005960464),
	(10991, 2, 19, 50, 0.200000002980232),
	(10991, 70, 15, 20, 0.200000002980232),
	(10991, 76, 18, 90, 0.200000002980232),
	(10992, 72, 34.8, 2, 0),
	(10993, 29, 123.79, 50, 0.25),
	(10993, 41, 9.65, 35, 0.25),
	(10994, 59, 55, 18, 0.0500000007450581),
	(10995, 51, 53, 20, 0),
	(10995, 60, 34, 4, 0),
	(10996, 42, 14, 40, 0),
	(10997, 32, 32, 50, 0),
	(10997, 46, 12, 20, 0.25),
	(10997, 52, 7, 20, 0.25),
	(10998, 24, 4.5, 12, 0),
	(10998, 61, 28.5, 7, 0),
	(10998, 74, 10, 20, 0),
	(10998, 75, 7.75, 30, 0),
	(10999, 41, 9.65, 20, 0.0500000007450581),
	(10999, 51, 53, 15, 0.0500000007450581),
	(10999, 77, 13, 21, 0.0500000007450581),
	(11000, 4, 22, 25, 0.25),
	(11000, 24, 4.5, 30, 0.25),
	(11000, 77, 13, 30, 0),
	(11001, 7, 30, 60, 0),
	(11001, 22, 21, 25, 0),
	(11001, 46, 12, 25, 0),
	(11001, 55, 24, 6, 0),
	(11002, 13, 6, 56, 0),
	(11002, 35, 18, 15, 0.150000005960464),
	(11002, 42, 14, 24, 0.150000005960464),
	(11002, 55, 24, 40, 0),
	(11003, 1, 18, 4, 0),
	(11003, 40, 18.4, 10, 0),
	(11003, 52, 7, 10, 0),
	(11004, 26, 31.23, 6, 0),
	(11004, 76, 18, 6, 0),
	(11005, 1, 18, 2, 0),
	(11005, 59, 55, 10, 0),
	(11006, 1, 18, 8, 0),
	(11006, 29, 123.79, 2, 0.25),
	(11007, 8, 40, 30, 0),
	(11007, 29, 123.79, 10, 0),
	(11007, 42, 14, 14, 0),
	(11008, 28, 45.6, 70, 0.0500000007450581),
	(11008, 34, 14, 90, 0.0500000007450581),
	(11008, 71, 21.5, 21, 0),
	(11009, 24, 4.5, 12, 0),
	(11009, 36, 19, 18, 0.25),
	(11009, 60, 34, 9, 0),
	(11010, 7, 30, 20, 0),
	(11010, 24, 4.5, 10, 0),
	(11011, 58, 13.25, 40, 0.0500000007450581),
	(11011, 71, 21.5, 20, 0),
	(11012, 19, 9.2, 50, 0.0500000007450581),
	(11012, 60, 34, 36, 0.0500000007450581),
	(11012, 71, 21.5, 60, 0.0500000007450581),
	(11013, 23, 9, 10, 0),
	(11013, 42, 14, 4, 0),
	(11013, 45, 9.5, 20, 0),
	(11013, 68, 12.5, 2, 0),
	(11014, 41, 9.65, 28, 0.100000001490116),
	(11015, 30, 25.89, 15, 0),
	(11015, 77, 13, 18, 0),
	(11016, 31, 12.5, 15, 0),
	(11016, 36, 19, 16, 0),
	(11017, 3, 10, 25, 0),
	(11017, 59, 55, 110, 0),
	(11017, 70, 15, 30, 0),
	(11018, 12, 38, 20, 0),
	(11018, 18, 62.5, 10, 0),
	(11018, 56, 38, 5, 0),
	(11019, 46, 12, 3, 0),
	(11019, 49, 20, 2, 0),
	(11020, 10, 31, 24, 0.150000005960464),
	(11021, 2, 19, 11, 0.25),
	(11021, 20, 81, 15, 0),
	(11021, 26, 31.23, 63, 0),
	(11021, 51, 53, 44, 0.25),
	(11021, 72, 34.8, 35, 0),
	(11022, 19, 9.2, 35, 0),
	(11022, 69, 36, 30, 0),
	(11023, 7, 30, 4, 0),
	(11023, 43, 46, 30, 0),
	(11024, 26, 31.23, 12, 0),
	(11024, 33, 2.5, 30, 0),
	(11024, 65, 21.05, 21, 0),
	(11024, 71, 21.5, 50, 0),
	(11025, 1, 18, 10, 0.100000001490116),
	(11025, 13, 6, 20, 0.100000001490116),
	(11026, 18, 62.5, 8, 0),
	(11026, 51, 53, 10, 0),
	(11027, 24, 4.5, 30, 0.25),
	(11027, 62, 49.3, 21, 0.25),
	(11028, 55, 24, 35, 0),
	(11028, 59, 55, 24, 0),
	(11029, 56, 38, 20, 0),
	(11029, 63, 43.9, 12, 0),
	(11030, 2, 19, 100, 0.25),
	(11030, 5, 21.35, 70, 0),
	(11030, 29, 123.79, 60, 0.25),
	(11030, 59, 55, 100, 0.25),
	(11031, 1, 18, 45, 0),
	(11031, 13, 6, 80, 0),
	(11031, 24, 4.5, 21, 0),
	(11031, 64, 33.25, 20, 0),
	(11031, 71, 21.5, 16, 0),
	(11032, 36, 19, 35, 0),
	(11032, 38, 263.5, 25, 0),
	(11032, 59, 55, 30, 0),
	(11033, 53, 32.8, 70, 0.100000001490116),
	(11033, 69, 36, 36, 0.100000001490116),
	(11034, 21, 10, 15, 0.100000001490116),
	(11034, 44, 19.45, 12, 0),
	(11034, 61, 28.5, 6, 0),
	(11035, 1, 18, 10, 0),
	(11035, 35, 18, 60, 0),
	(11035, 42, 14, 30, 0),
	(11035, 54, 7.45, 10, 0),
	(11036, 13, 6, 7, 0),
	(11036, 59, 55, 30, 0),
	(11037, 70, 15, 4, 0),
	(11038, 40, 18.4, 5, 0.200000002980232),
	(11038, 52, 7, 2, 0),
	(11038, 71, 21.5, 30, 0),
	(11039, 28, 45.6, 20, 0),
	(11039, 35, 18, 24, 0),
	(11039, 49, 20, 60, 0),
	(11039, 57, 19.5, 28, 0),
	(11040, 21, 10, 20, 0),
	(11041, 2, 19, 30, 0.200000002980232),
	(11041, 63, 43.9, 30, 0),
	(11042, 44, 19.45, 15, 0),
	(11042, 61, 28.5, 4, 0),
	(11043, 11, 21, 10, 0),
	(11044, 62, 49.3, 12, 0),
	(11045, 33, 2.5, 15, 0),
	(11045, 51, 53, 24, 0),
	(11046, 12, 38, 20, 0.0500000007450581),
	(11046, 32, 32, 15, 0.0500000007450581),
	(11046, 35, 18, 18, 0.0500000007450581),
	(11047, 1, 18, 25, 0.25),
	(11047, 5, 21.35, 30, 0.25),
	(11048, 68, 12.5, 42, 0),
	(11049, 2, 19, 10, 0.200000002980232),
	(11049, 12, 38, 4, 0.200000002980232),
	(11050, 76, 18, 50, 0.100000001490116),
	(11051, 24, 4.5, 10, 0.200000002980232),
	(11052, 43, 46, 30, 0.200000002980232),
	(11052, 61, 28.5, 10, 0.200000002980232),
	(11053, 18, 62.5, 35, 0.200000002980232),
	(11053, 32, 32, 20, 0),
	(11053, 64, 33.25, 25, 0.200000002980232),
	(11054, 33, 2.5, 10, 0),
	(11054, 67, 14, 20, 0),
	(11055, 24, 4.5, 15, 0),
	(11055, 25, 14, 15, 0),
	(11055, 51, 53, 20, 0),
	(11055, 57, 19.5, 20, 0),
	(11056, 7, 30, 40, 0),
	(11056, 55, 24, 35, 0),
	(11056, 60, 34, 50, 0),
	(11057, 70, 15, 3, 0),
	(11058, 21, 10, 3, 0),
	(11058, 60, 34, 21, 0),
	(11058, 61, 28.5, 4, 0),
	(11059, 13, 6, 30, 0),
	(11059, 17, 39, 12, 0),
	(11059, 60, 34, 35, 0),
	(11060, 60, 34, 4, 0),
	(11060, 77, 13, 10, 0),
	(11061, 60, 34, 15, 0),
	(11062, 53, 32.8, 10, 0.200000002980232),
	(11062, 70, 15, 12, 0.200000002980232),
	(11063, 34, 14, 30, 0),
	(11063, 40, 18.4, 40, 0.100000001490116),
	(11063, 41, 9.65, 30, 0.100000001490116),
	(11064, 17, 39, 77, 0.100000001490116),
	(11064, 41, 9.65, 12, 0),
	(11064, 53, 32.8, 25, 0.100000001490116),
	(11064, 55, 24, 4, 0.100000001490116),
	(11064, 68, 12.5, 55, 0),
	(11065, 30, 25.89, 4, 0.25),
	(11065, 54, 7.45, 20, 0.25),
	(11066, 16, 17.45, 3, 0),
	(11066, 19, 9.2, 42, 0),
	(11066, 34, 14, 35, 0),
	(11067, 41, 9.65, 9, 0),
	(11068, 28, 45.6, 8, 0.150000005960464),
	(11068, 43, 46, 36, 0.150000005960464),
	(11068, 77, 13, 28, 0.150000005960464),
	(11069, 39, 18, 20, 0),
	(11070, 1, 18, 40, 0.150000005960464),
	(11070, 2, 19, 20, 0.150000005960464),
	(11070, 16, 17.45, 30, 0.150000005960464),
	(11070, 31, 12.5, 20, 0),
	(11071, 7, 30, 15, 0.0500000007450581),
	(11071, 13, 6, 10, 0.0500000007450581),
	(11072, 2, 19, 8, 0),
	(11072, 41, 9.65, 40, 0),
	(11072, 50, 16.25, 22, 0),
	(11072, 64, 33.25, 130, 0),
	(11073, 11, 21, 10, 0),
	(11073, 24, 4.5, 20, 0),
	(11074, 16, 17.45, 14, 0.0500000007450581),
	(11075, 2, 19, 10, 0.150000005960464),
	(11075, 46, 12, 30, 0.150000005960464),
	(11075, 76, 18, 2, 0.150000005960464),
	(11076, 6, 25, 20, 0.25),
	(11076, 14, 23.25, 20, 0.25),
	(11076, 19, 9.2, 10, 0.25),
	(11077, 2, 19, 24, 0.200000002980232),
	(11077, 3, 10, 4, 0),
	(11077, 4, 22, 1, 0),
	(11077, 6, 25, 1, 0.0199999995529652),
	(11077, 7, 30, 1, 0.0500000007450581),
	(11077, 8, 40, 2, 0.100000001490116),
	(11077, 10, 31, 1, 0),
	(11077, 12, 38, 2, 0.0500000007450581),
	(11077, 13, 6, 4, 0),
	(11077, 14, 23.25, 1, 0.0299999993294477),
	(11077, 16, 17.45, 2, 0.0299999993294477),
	(11077, 20, 81, 1, 0.0399999991059303),
	(11077, 23, 9, 2, 0),
	(11077, 32, 32, 1, 0),
	(11077, 39, 18, 2, 0.0500000007450581),
	(11077, 41, 9.65, 3, 0),
	(11077, 46, 12, 3, 0.0199999995529652),
	(11077, 52, 7, 2, 0),
	(11077, 55, 24, 2, 0),
	(11077, 60, 34, 2, 0.0599999986588955),
	(11077, 64, 33.25, 2, 0.0299999993294477),
	(11077, 66, 17, 1, 0),
	(11077, 73, 15, 2, 0.00999999977648258),
	(11077, 75, 7.75, 4, 0),
	(11077, 77, 13, 2, 0);
/*!40000 ALTER TABLE "Order Details" ENABLE KEYS */;

-- Volcando estructura para vista NORTHWND.Order Details Extended
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Order Details Extended" (
	"OrderID" INT NOT NULL,
	"ProductID" INT NOT NULL,
	"ProductName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"UnitPrice" MONEY(19,4) NOT NULL,
	"Quantity" SMALLINT NOT NULL,
	"Discount" REAL(24) NOT NULL,
	"ExtendedPrice" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista NORTHWND.Order Subtotals
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Order Subtotals" (
	"OrderID" INT NOT NULL,
	"Subtotal" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para tabla NORTHWND.Orders
CREATE TABLE IF NOT EXISTS "Orders" (
	"OrderID" INT(10,0) NOT NULL,
	"CustomerID" NCHAR(5) NULL DEFAULT NULL,
	"EmployeeID" INT(10,0) NULL DEFAULT NULL,
	"OrderDate" DATETIME(3) NULL DEFAULT NULL,
	"RequiredDate" DATETIME(3) NULL DEFAULT NULL,
	"ShippedDate" DATETIME(3) NULL DEFAULT NULL,
	"ShipVia" INT(10,0) NULL DEFAULT NULL,
	"Freight" MONEY(19,4) NULL DEFAULT (0),
	"ShipName" NVARCHAR(40) NULL DEFAULT NULL,
	"ShipAddress" NVARCHAR(60) NULL DEFAULT NULL,
	"ShipCity" NVARCHAR(15) NULL DEFAULT NULL,
	"ShipRegion" NVARCHAR(15) NULL DEFAULT NULL,
	"ShipPostalCode" NVARCHAR(10) NULL DEFAULT NULL,
	"ShipCountry" NVARCHAR(15) NULL DEFAULT NULL,
	PRIMARY KEY ("OrderID")
);

-- Volcando datos para la tabla NORTHWND.Orders: -1 rows
/*!40000 ALTER TABLE "Orders" DISABLE KEYS */;
INSERT IGNORE INTO "Orders" ("OrderID", "CustomerID", "EmployeeID", "OrderDate", "RequiredDate", "ShippedDate", "ShipVia", "Freight", "ShipName", "ShipAddress", "ShipCity", "ShipRegion", "ShipPostalCode", "ShipCountry") VALUES
	(10248, 'VINET', 5, '1996-07-04 00:00:00.000', '1996-08-01 00:00:00.000', '1996-07-16 00:00:00.000', 3, 32.38, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France'),
	(10249, 'TOMSP', 6, '1996-07-05 00:00:00.000', '1996-08-16 00:00:00.000', '1996-07-10 00:00:00.000', 1, 11.61, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Germany'),
	(10250, 'HANAR', 4, '1996-07-08 00:00:00.000', '1996-08-05 00:00:00.000', '1996-07-12 00:00:00.000', 2, 65.83, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10251, 'VICTE', 3, '1996-07-08 00:00:00.000', '1996-08-05 00:00:00.000', '1996-07-15 00:00:00.000', 1, 41.34, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10252, 'SUPRD', 4, '1996-07-09 00:00:00.000', '1996-08-06 00:00:00.000', '1996-07-11 00:00:00.000', 2, 51.3, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10253, 'HANAR', 3, '1996-07-10 00:00:00.000', '1996-07-24 00:00:00.000', '1996-07-16 00:00:00.000', 2, 58.17, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10254, 'CHOPS', 5, '1996-07-11 00:00:00.000', '1996-08-08 00:00:00.000', '1996-07-23 00:00:00.000', 2, 22.98, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
	(10255, 'RICSU', 9, '1996-07-12 00:00:00.000', '1996-08-09 00:00:00.000', '1996-07-15 00:00:00.000', 3, 148.33, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(10256, 'WELLI', 3, '1996-07-15 00:00:00.000', '1996-08-12 00:00:00.000', '1996-07-17 00:00:00.000', 2, 13.97, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10257, 'HILAA', 4, '1996-07-16 00:00:00.000', '1996-08-13 00:00:00.000', '1996-07-22 00:00:00.000', 3, 81.91, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10258, 'ERNSH', 1, '1996-07-17 00:00:00.000', '1996-08-14 00:00:00.000', '1996-07-23 00:00:00.000', 1, 140.51, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10259, 'CENTC', 4, '1996-07-18 00:00:00.000', '1996-08-15 00:00:00.000', '1996-07-25 00:00:00.000', 3, 3.25, 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'México D.F.', NULL, '05022', 'Mexico'),
	(10260, 'OTTIK', 4, '1996-07-19 00:00:00.000', '1996-08-16 00:00:00.000', '1996-07-29 00:00:00.000', 1, 55.09, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(10261, 'QUEDE', 4, '1996-07-19 00:00:00.000', '1996-08-16 00:00:00.000', '1996-07-30 00:00:00.000', 2, 3.05, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10262, 'RATTC', 8, '1996-07-22 00:00:00.000', '1996-08-19 00:00:00.000', '1996-07-25 00:00:00.000', 3, 48.29, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10263, 'ERNSH', 9, '1996-07-23 00:00:00.000', '1996-08-20 00:00:00.000', '1996-07-31 00:00:00.000', 3, 146.06, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10264, 'FOLKO', 6, '1996-07-24 00:00:00.000', '1996-08-21 00:00:00.000', '1996-08-23 00:00:00.000', 3, 3.67, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10265, 'BLONP', 2, '1996-07-25 00:00:00.000', '1996-08-22 00:00:00.000', '1996-08-12 00:00:00.000', 1, 55.28, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10266, 'WARTH', 3, '1996-07-26 00:00:00.000', '1996-09-06 00:00:00.000', '1996-07-31 00:00:00.000', 3, 25.73, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10267, 'FRANK', 4, '1996-07-29 00:00:00.000', '1996-08-26 00:00:00.000', '1996-08-06 00:00:00.000', 1, 208.58, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10268, 'GROSR', 8, '1996-07-30 00:00:00.000', '1996-08-27 00:00:00.000', '1996-08-02 00:00:00.000', 3, 66.29, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela'),
	(10269, 'WHITC', 5, '1996-07-31 00:00:00.000', '1996-08-14 00:00:00.000', '1996-08-09 00:00:00.000', 1, 4.56, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10270, 'WARTH', 1, '1996-08-01 00:00:00.000', '1996-08-29 00:00:00.000', '1996-08-02 00:00:00.000', 1, 136.54, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10271, 'SPLIR', 6, '1996-08-01 00:00:00.000', '1996-08-29 00:00:00.000', '1996-08-30 00:00:00.000', 2, 4.54, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10272, 'RATTC', 6, '1996-08-02 00:00:00.000', '1996-08-30 00:00:00.000', '1996-08-06 00:00:00.000', 2, 98.03, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10273, 'QUICK', 3, '1996-08-05 00:00:00.000', '1996-09-02 00:00:00.000', '1996-08-12 00:00:00.000', 3, 76.07, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10274, 'VINET', 6, '1996-08-06 00:00:00.000', '1996-09-03 00:00:00.000', '1996-08-16 00:00:00.000', 1, 6.01, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France'),
	(10275, 'MAGAA', 1, '1996-08-07 00:00:00.000', '1996-09-04 00:00:00.000', '1996-08-09 00:00:00.000', 1, 26.93, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10276, 'TORTU', 8, '1996-08-08 00:00:00.000', '1996-08-22 00:00:00.000', '1996-08-14 00:00:00.000', 3, 13.84, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10277, 'MORGK', 2, '1996-08-09 00:00:00.000', '1996-09-06 00:00:00.000', '1996-08-13 00:00:00.000', 3, 125.77, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany'),
	(10278, 'BERGS', 8, '1996-08-12 00:00:00.000', '1996-09-09 00:00:00.000', '1996-08-16 00:00:00.000', 2, 92.69, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10279, 'LEHMS', 8, '1996-08-13 00:00:00.000', '1996-09-10 00:00:00.000', '1996-08-16 00:00:00.000', 2, 25.83, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10280, 'BERGS', 2, '1996-08-14 00:00:00.000', '1996-09-11 00:00:00.000', '1996-09-12 00:00:00.000', 1, 8.98, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10281, 'ROMEY', 4, '1996-08-14 00:00:00.000', '1996-08-28 00:00:00.000', '1996-08-21 00:00:00.000', 1, 2.94, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'Spain'),
	(10282, 'ROMEY', 4, '1996-08-15 00:00:00.000', '1996-09-12 00:00:00.000', '1996-08-21 00:00:00.000', 1, 12.69, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'Spain'),
	(10283, 'LILAS', 3, '1996-08-16 00:00:00.000', '1996-09-13 00:00:00.000', '1996-08-23 00:00:00.000', 3, 84.81, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10284, 'LEHMS', 4, '1996-08-19 00:00:00.000', '1996-09-16 00:00:00.000', '1996-08-27 00:00:00.000', 1, 76.56, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10285, 'QUICK', 1, '1996-08-20 00:00:00.000', '1996-09-17 00:00:00.000', '1996-08-26 00:00:00.000', 2, 76.83, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10286, 'QUICK', 8, '1996-08-21 00:00:00.000', '1996-09-18 00:00:00.000', '1996-08-30 00:00:00.000', 3, 229.24, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10287, 'RICAR', 8, '1996-08-22 00:00:00.000', '1996-09-19 00:00:00.000', '1996-08-28 00:00:00.000', 3, 12.76, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10288, 'REGGC', 4, '1996-08-23 00:00:00.000', '1996-09-20 00:00:00.000', '1996-09-03 00:00:00.000', 1, 7.45, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10289, 'BSBEV', 7, '1996-08-26 00:00:00.000', '1996-09-23 00:00:00.000', '1996-08-28 00:00:00.000', 3, 22.77, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10290, 'COMMI', 8, '1996-08-27 00:00:00.000', '1996-09-24 00:00:00.000', '1996-09-03 00:00:00.000', 1, 79.7, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil'),
	(10291, 'QUEDE', 6, '1996-08-27 00:00:00.000', '1996-09-24 00:00:00.000', '1996-09-04 00:00:00.000', 2, 6.4, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10292, 'TRADH', 1, '1996-08-28 00:00:00.000', '1996-09-25 00:00:00.000', '1996-09-02 00:00:00.000', 2, 1.35, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil'),
	(10293, 'TORTU', 1, '1996-08-29 00:00:00.000', '1996-09-26 00:00:00.000', '1996-09-11 00:00:00.000', 3, 21.18, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10294, 'RATTC', 4, '1996-08-30 00:00:00.000', '1996-09-27 00:00:00.000', '1996-09-05 00:00:00.000', 2, 147.26, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10295, 'VINET', 2, '1996-09-02 00:00:00.000', '1996-09-30 00:00:00.000', '1996-09-10 00:00:00.000', 2, 1.15, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France'),
	(10296, 'LILAS', 6, '1996-09-03 00:00:00.000', '1996-10-01 00:00:00.000', '1996-09-11 00:00:00.000', 1, 0.12, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10297, 'BLONP', 5, '1996-09-04 00:00:00.000', '1996-10-16 00:00:00.000', '1996-09-10 00:00:00.000', 2, 5.74, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10298, 'HUNGO', 6, '1996-09-05 00:00:00.000', '1996-10-03 00:00:00.000', '1996-09-11 00:00:00.000', 2, 168.22, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10299, 'RICAR', 4, '1996-09-06 00:00:00.000', '1996-10-04 00:00:00.000', '1996-09-13 00:00:00.000', 2, 29.76, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10300, 'MAGAA', 2, '1996-09-09 00:00:00.000', '1996-10-07 00:00:00.000', '1996-09-18 00:00:00.000', 2, 17.68, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10301, 'WANDK', 8, '1996-09-09 00:00:00.000', '1996-10-07 00:00:00.000', '1996-09-17 00:00:00.000', 2, 45.08, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10302, 'SUPRD', 4, '1996-09-10 00:00:00.000', '1996-10-08 00:00:00.000', '1996-10-09 00:00:00.000', 2, 6.27, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10303, 'GODOS', 7, '1996-09-11 00:00:00.000', '1996-10-09 00:00:00.000', '1996-09-18 00:00:00.000', 2, 107.83, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(10304, 'TORTU', 1, '1996-09-12 00:00:00.000', '1996-10-10 00:00:00.000', '1996-09-17 00:00:00.000', 2, 63.79, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10305, 'OLDWO', 8, '1996-09-13 00:00:00.000', '1996-10-11 00:00:00.000', '1996-10-09 00:00:00.000', 3, 257.62, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10306, 'ROMEY', 1, '1996-09-16 00:00:00.000', '1996-10-14 00:00:00.000', '1996-09-23 00:00:00.000', 3, 7.56, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'Spain'),
	(10307, 'LONEP', 2, '1996-09-17 00:00:00.000', '1996-10-15 00:00:00.000', '1996-09-25 00:00:00.000', 2, 0.56, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA'),
	(10308, 'ANATR', 7, '1996-09-18 00:00:00.000', '1996-10-16 00:00:00.000', '1996-09-24 00:00:00.000', 3, 1.61, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'Mexico'),
	(10309, 'HUNGO', 3, '1996-09-19 00:00:00.000', '1996-10-17 00:00:00.000', '1996-10-23 00:00:00.000', 1, 47.3, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10310, 'THEBI', 8, '1996-09-20 00:00:00.000', '1996-10-18 00:00:00.000', '1996-09-27 00:00:00.000', 2, 17.52, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA'),
	(10311, 'DUMON', 1, '1996-09-20 00:00:00.000', '1996-10-04 00:00:00.000', '1996-09-26 00:00:00.000', 3, 24.69, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France'),
	(10312, 'WANDK', 2, '1996-09-23 00:00:00.000', '1996-10-21 00:00:00.000', '1996-10-03 00:00:00.000', 2, 40.26, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10313, 'QUICK', 2, '1996-09-24 00:00:00.000', '1996-10-22 00:00:00.000', '1996-10-04 00:00:00.000', 2, 1.96, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10314, 'RATTC', 1, '1996-09-25 00:00:00.000', '1996-10-23 00:00:00.000', '1996-10-04 00:00:00.000', 2, 74.16, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10315, 'ISLAT', 4, '1996-09-26 00:00:00.000', '1996-10-24 00:00:00.000', '1996-10-03 00:00:00.000', 2, 41.76, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10316, 'RATTC', 1, '1996-09-27 00:00:00.000', '1996-10-25 00:00:00.000', '1996-10-08 00:00:00.000', 3, 150.15, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10317, 'LONEP', 6, '1996-09-30 00:00:00.000', '1996-10-28 00:00:00.000', '1996-10-10 00:00:00.000', 1, 12.69, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA'),
	(10318, 'ISLAT', 8, '1996-10-01 00:00:00.000', '1996-10-29 00:00:00.000', '1996-10-04 00:00:00.000', 2, 4.73, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10319, 'TORTU', 7, '1996-10-02 00:00:00.000', '1996-10-30 00:00:00.000', '1996-10-11 00:00:00.000', 3, 64.5, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10320, 'WARTH', 5, '1996-10-03 00:00:00.000', '1996-10-17 00:00:00.000', '1996-10-18 00:00:00.000', 3, 34.57, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10321, 'ISLAT', 3, '1996-10-03 00:00:00.000', '1996-10-31 00:00:00.000', '1996-10-11 00:00:00.000', 2, 3.43, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10322, 'PERIC', 7, '1996-10-04 00:00:00.000', '1996-11-01 00:00:00.000', '1996-10-23 00:00:00.000', 3, 0.4, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'Mexico'),
	(10323, 'KOENE', 4, '1996-10-07 00:00:00.000', '1996-11-04 00:00:00.000', '1996-10-14 00:00:00.000', 1, 4.88, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10324, 'SAVEA', 9, '1996-10-08 00:00:00.000', '1996-11-05 00:00:00.000', '1996-10-10 00:00:00.000', 1, 214.27, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10325, 'KOENE', 1, '1996-10-09 00:00:00.000', '1996-10-23 00:00:00.000', '1996-10-14 00:00:00.000', 3, 64.86, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10326, 'BOLID', 4, '1996-10-10 00:00:00.000', '1996-11-07 00:00:00.000', '1996-10-14 00:00:00.000', 2, 77.92, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain'),
	(10327, 'FOLKO', 2, '1996-10-11 00:00:00.000', '1996-11-08 00:00:00.000', '1996-10-14 00:00:00.000', 1, 63.36, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10328, 'FURIB', 4, '1996-10-14 00:00:00.000', '1996-11-11 00:00:00.000', '1996-10-17 00:00:00.000', 3, 87.03, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
	(10329, 'SPLIR', 4, '1996-10-15 00:00:00.000', '1996-11-26 00:00:00.000', '1996-10-23 00:00:00.000', 2, 191.67, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10330, 'LILAS', 3, '1996-10-16 00:00:00.000', '1996-11-13 00:00:00.000', '1996-10-28 00:00:00.000', 1, 12.75, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10331, 'BONAP', 9, '1996-10-16 00:00:00.000', '1996-11-27 00:00:00.000', '1996-10-21 00:00:00.000', 1, 10.19, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10332, 'MEREP', 3, '1996-10-17 00:00:00.000', '1996-11-28 00:00:00.000', '1996-10-21 00:00:00.000', 2, 52.84, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10333, 'WARTH', 5, '1996-10-18 00:00:00.000', '1996-11-15 00:00:00.000', '1996-10-25 00:00:00.000', 3, 0.59, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10334, 'VICTE', 8, '1996-10-21 00:00:00.000', '1996-11-18 00:00:00.000', '1996-10-28 00:00:00.000', 2, 8.56, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10335, 'HUNGO', 7, '1996-10-22 00:00:00.000', '1996-11-19 00:00:00.000', '1996-10-24 00:00:00.000', 2, 42.11, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10336, 'PRINI', 7, '1996-10-23 00:00:00.000', '1996-11-20 00:00:00.000', '1996-10-25 00:00:00.000', 2, 15.51, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
	(10337, 'FRANK', 4, '1996-10-24 00:00:00.000', '1996-11-21 00:00:00.000', '1996-10-29 00:00:00.000', 3, 108.26, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10338, 'OLDWO', 4, '1996-10-25 00:00:00.000', '1996-11-22 00:00:00.000', '1996-10-29 00:00:00.000', 3, 84.21, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10339, 'MEREP', 2, '1996-10-28 00:00:00.000', '1996-11-25 00:00:00.000', '1996-11-04 00:00:00.000', 2, 15.66, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10340, 'BONAP', 1, '1996-10-29 00:00:00.000', '1996-11-26 00:00:00.000', '1996-11-08 00:00:00.000', 3, 166.31, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10341, 'SIMOB', 7, '1996-10-29 00:00:00.000', '1996-11-26 00:00:00.000', '1996-11-05 00:00:00.000', 3, 26.78, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', NULL, '1734', 'Denmark'),
	(10342, 'FRANK', 4, '1996-10-30 00:00:00.000', '1996-11-13 00:00:00.000', '1996-11-04 00:00:00.000', 2, 54.83, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10343, 'LEHMS', 4, '1996-10-31 00:00:00.000', '1996-11-28 00:00:00.000', '1996-11-06 00:00:00.000', 1, 110.37, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10344, 'WHITC', 4, '1996-11-01 00:00:00.000', '1996-11-29 00:00:00.000', '1996-11-05 00:00:00.000', 2, 23.29, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10345, 'QUICK', 2, '1996-11-04 00:00:00.000', '1996-12-02 00:00:00.000', '1996-11-11 00:00:00.000', 2, 249.06, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10346, 'RATTC', 3, '1996-11-05 00:00:00.000', '1996-12-17 00:00:00.000', '1996-11-08 00:00:00.000', 3, 142.08, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10347, 'FAMIA', 4, '1996-11-06 00:00:00.000', '1996-12-04 00:00:00.000', '1996-11-08 00:00:00.000', 3, 3.1, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil'),
	(10348, 'WANDK', 4, '1996-11-07 00:00:00.000', '1996-12-05 00:00:00.000', '1996-11-15 00:00:00.000', 2, 0.78, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10349, 'SPLIR', 7, '1996-11-08 00:00:00.000', '1996-12-06 00:00:00.000', '1996-11-15 00:00:00.000', 1, 8.63, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10350, 'LAMAI', 6, '1996-11-11 00:00:00.000', '1996-12-09 00:00:00.000', '1996-12-03 00:00:00.000', 2, 64.19, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10351, 'ERNSH', 1, '1996-11-11 00:00:00.000', '1996-12-09 00:00:00.000', '1996-11-20 00:00:00.000', 1, 162.33, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10352, 'FURIB', 3, '1996-11-12 00:00:00.000', '1996-11-26 00:00:00.000', '1996-11-18 00:00:00.000', 3, 1.3, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
	(10353, 'PICCO', 7, '1996-11-13 00:00:00.000', '1996-12-11 00:00:00.000', '1996-11-25 00:00:00.000', 3, 360.63, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10354, 'PERIC', 8, '1996-11-14 00:00:00.000', '1996-12-12 00:00:00.000', '1996-11-20 00:00:00.000', 3, 53.8, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'Mexico'),
	(10355, 'AROUT', 6, '1996-11-15 00:00:00.000', '1996-12-13 00:00:00.000', '1996-11-20 00:00:00.000', 1, 41.95, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10356, 'WANDK', 6, '1996-11-18 00:00:00.000', '1996-12-16 00:00:00.000', '1996-11-27 00:00:00.000', 2, 36.71, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10357, 'LILAS', 1, '1996-11-19 00:00:00.000', '1996-12-17 00:00:00.000', '1996-12-02 00:00:00.000', 3, 34.88, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10358, 'LAMAI', 5, '1996-11-20 00:00:00.000', '1996-12-18 00:00:00.000', '1996-11-27 00:00:00.000', 1, 19.64, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10359, 'SEVES', 5, '1996-11-21 00:00:00.000', '1996-12-19 00:00:00.000', '1996-11-26 00:00:00.000', 3, 288.43, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10360, 'BLONP', 4, '1996-11-22 00:00:00.000', '1996-12-20 00:00:00.000', '1996-12-02 00:00:00.000', 3, 131.7, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10361, 'QUICK', 1, '1996-11-22 00:00:00.000', '1996-12-20 00:00:00.000', '1996-12-03 00:00:00.000', 2, 183.17, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10362, 'BONAP', 3, '1996-11-25 00:00:00.000', '1996-12-23 00:00:00.000', '1996-11-28 00:00:00.000', 1, 96.04, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10363, 'DRACD', 4, '1996-11-26 00:00:00.000', '1996-12-24 00:00:00.000', '1996-12-04 00:00:00.000', 3, 30.54, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany'),
	(10364, 'EASTC', 1, '1996-11-26 00:00:00.000', '1997-01-07 00:00:00.000', '1996-12-04 00:00:00.000', 1, 71.97, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK'),
	(10365, 'ANTON', 3, '1996-11-27 00:00:00.000', '1996-12-25 00:00:00.000', '1996-12-02 00:00:00.000', 2, 22, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'Mexico'),
	(10366, 'GALED', 8, '1996-11-28 00:00:00.000', '1997-01-09 00:00:00.000', '1996-12-30 00:00:00.000', 2, 10.14, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', NULL, '8022', 'Spain'),
	(10367, 'VAFFE', 7, '1996-11-28 00:00:00.000', '1996-12-26 00:00:00.000', '1996-12-02 00:00:00.000', 3, 13.55, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10368, 'ERNSH', 2, '1996-11-29 00:00:00.000', '1996-12-27 00:00:00.000', '1996-12-02 00:00:00.000', 2, 101.95, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10369, 'SPLIR', 8, '1996-12-02 00:00:00.000', '1996-12-30 00:00:00.000', '1996-12-09 00:00:00.000', 2, 195.68, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10370, 'CHOPS', 6, '1996-12-03 00:00:00.000', '1996-12-31 00:00:00.000', '1996-12-27 00:00:00.000', 2, 1.17, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
	(10371, 'LAMAI', 1, '1996-12-03 00:00:00.000', '1996-12-31 00:00:00.000', '1996-12-24 00:00:00.000', 1, 0.45, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10372, 'QUEEN', 5, '1996-12-04 00:00:00.000', '1997-01-01 00:00:00.000', '1996-12-09 00:00:00.000', 2, 890.78, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10373, 'HUNGO', 4, '1996-12-05 00:00:00.000', '1997-01-02 00:00:00.000', '1996-12-11 00:00:00.000', 3, 124.12, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10374, 'WOLZA', 1, '1996-12-05 00:00:00.000', '1997-01-02 00:00:00.000', '1996-12-09 00:00:00.000', 3, 3.94, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland'),
	(10375, 'HUNGC', 3, '1996-12-06 00:00:00.000', '1997-01-03 00:00:00.000', '1996-12-09 00:00:00.000', 2, 20.12, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA'),
	(10376, 'MEREP', 1, '1996-12-09 00:00:00.000', '1997-01-06 00:00:00.000', '1996-12-13 00:00:00.000', 2, 20.39, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10377, 'SEVES', 1, '1996-12-09 00:00:00.000', '1997-01-06 00:00:00.000', '1996-12-13 00:00:00.000', 3, 22.21, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10378, 'FOLKO', 5, '1996-12-10 00:00:00.000', '1997-01-07 00:00:00.000', '1996-12-19 00:00:00.000', 3, 5.44, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10379, 'QUEDE', 2, '1996-12-11 00:00:00.000', '1997-01-08 00:00:00.000', '1996-12-13 00:00:00.000', 1, 45.03, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10380, 'HUNGO', 8, '1996-12-12 00:00:00.000', '1997-01-09 00:00:00.000', '1997-01-16 00:00:00.000', 3, 35.03, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10381, 'LILAS', 3, '1996-12-12 00:00:00.000', '1997-01-09 00:00:00.000', '1996-12-13 00:00:00.000', 3, 7.99, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10382, 'ERNSH', 4, '1996-12-13 00:00:00.000', '1997-01-10 00:00:00.000', '1996-12-16 00:00:00.000', 1, 94.77, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10383, 'AROUT', 8, '1996-12-16 00:00:00.000', '1997-01-13 00:00:00.000', '1996-12-18 00:00:00.000', 3, 34.24, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10384, 'BERGS', 3, '1996-12-16 00:00:00.000', '1997-01-13 00:00:00.000', '1996-12-20 00:00:00.000', 3, 168.64, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10385, 'SPLIR', 1, '1996-12-17 00:00:00.000', '1997-01-14 00:00:00.000', '1996-12-23 00:00:00.000', 2, 30.96, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10386, 'FAMIA', 9, '1996-12-18 00:00:00.000', '1997-01-01 00:00:00.000', '1996-12-25 00:00:00.000', 3, 13.99, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil'),
	(10387, 'SANTG', 1, '1996-12-18 00:00:00.000', '1997-01-15 00:00:00.000', '1996-12-20 00:00:00.000', 2, 93.63, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway'),
	(10388, 'SEVES', 2, '1996-12-19 00:00:00.000', '1997-01-16 00:00:00.000', '1996-12-20 00:00:00.000', 1, 34.86, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10389, 'BOTTM', 4, '1996-12-20 00:00:00.000', '1997-01-17 00:00:00.000', '1996-12-24 00:00:00.000', 2, 47.42, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10390, 'ERNSH', 6, '1996-12-23 00:00:00.000', '1997-01-20 00:00:00.000', '1996-12-26 00:00:00.000', 1, 126.38, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10391, 'DRACD', 3, '1996-12-23 00:00:00.000', '1997-01-20 00:00:00.000', '1996-12-31 00:00:00.000', 3, 5.45, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany'),
	(10392, 'PICCO', 2, '1996-12-24 00:00:00.000', '1997-01-21 00:00:00.000', '1997-01-01 00:00:00.000', 3, 122.46, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10393, 'SAVEA', 1, '1996-12-25 00:00:00.000', '1997-01-22 00:00:00.000', '1997-01-03 00:00:00.000', 3, 126.56, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10394, 'HUNGC', 1, '1996-12-25 00:00:00.000', '1997-01-22 00:00:00.000', '1997-01-03 00:00:00.000', 3, 30.34, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA'),
	(10395, 'HILAA', 6, '1996-12-26 00:00:00.000', '1997-01-23 00:00:00.000', '1997-01-03 00:00:00.000', 1, 184.41, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10396, 'FRANK', 1, '1996-12-27 00:00:00.000', '1997-01-10 00:00:00.000', '1997-01-06 00:00:00.000', 3, 135.35, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10397, 'PRINI', 5, '1996-12-27 00:00:00.000', '1997-01-24 00:00:00.000', '1997-01-02 00:00:00.000', 1, 60.26, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
	(10398, 'SAVEA', 2, '1996-12-30 00:00:00.000', '1997-01-27 00:00:00.000', '1997-01-09 00:00:00.000', 3, 89.16, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10399, 'VAFFE', 8, '1996-12-31 00:00:00.000', '1997-01-14 00:00:00.000', '1997-01-08 00:00:00.000', 3, 27.36, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10400, 'EASTC', 1, '1997-01-01 00:00:00.000', '1997-01-29 00:00:00.000', '1997-01-16 00:00:00.000', 3, 83.93, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK'),
	(10401, 'RATTC', 1, '1997-01-01 00:00:00.000', '1997-01-29 00:00:00.000', '1997-01-10 00:00:00.000', 1, 12.51, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10402, 'ERNSH', 8, '1997-01-02 00:00:00.000', '1997-02-13 00:00:00.000', '1997-01-10 00:00:00.000', 2, 67.88, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10403, 'ERNSH', 4, '1997-01-03 00:00:00.000', '1997-01-31 00:00:00.000', '1997-01-09 00:00:00.000', 3, 73.79, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10404, 'MAGAA', 2, '1997-01-03 00:00:00.000', '1997-01-31 00:00:00.000', '1997-01-08 00:00:00.000', 1, 155.97, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10405, 'LINOD', 1, '1997-01-06 00:00:00.000', '1997-02-03 00:00:00.000', '1997-01-22 00:00:00.000', 1, 34.82, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10406, 'QUEEN', 7, '1997-01-07 00:00:00.000', '1997-02-18 00:00:00.000', '1997-01-13 00:00:00.000', 1, 108.04, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10407, 'OTTIK', 2, '1997-01-07 00:00:00.000', '1997-02-04 00:00:00.000', '1997-01-30 00:00:00.000', 2, 91.48, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(10408, 'FOLIG', 8, '1997-01-08 00:00:00.000', '1997-02-05 00:00:00.000', '1997-01-14 00:00:00.000', 1, 11.26, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', NULL, '59000', 'France'),
	(10409, 'OCEAN', 3, '1997-01-09 00:00:00.000', '1997-02-06 00:00:00.000', '1997-01-14 00:00:00.000', 1, 29.83, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10410, 'BOTTM', 3, '1997-01-10 00:00:00.000', '1997-02-07 00:00:00.000', '1997-01-15 00:00:00.000', 3, 2.4, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10411, 'BOTTM', 9, '1997-01-10 00:00:00.000', '1997-02-07 00:00:00.000', '1997-01-21 00:00:00.000', 3, 23.65, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10412, 'WARTH', 8, '1997-01-13 00:00:00.000', '1997-02-10 00:00:00.000', '1997-01-15 00:00:00.000', 2, 3.77, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10413, 'LAMAI', 3, '1997-01-14 00:00:00.000', '1997-02-11 00:00:00.000', '1997-01-16 00:00:00.000', 2, 95.66, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10414, 'FAMIA', 2, '1997-01-14 00:00:00.000', '1997-02-11 00:00:00.000', '1997-01-17 00:00:00.000', 3, 21.48, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil'),
	(10415, 'HUNGC', 3, '1997-01-15 00:00:00.000', '1997-02-12 00:00:00.000', '1997-01-24 00:00:00.000', 1, 0.2, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA'),
	(10416, 'WARTH', 8, '1997-01-16 00:00:00.000', '1997-02-13 00:00:00.000', '1997-01-27 00:00:00.000', 3, 22.72, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10417, 'SIMOB', 4, '1997-01-16 00:00:00.000', '1997-02-13 00:00:00.000', '1997-01-28 00:00:00.000', 3, 70.29, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', NULL, '1734', 'Denmark'),
	(10418, 'QUICK', 4, '1997-01-17 00:00:00.000', '1997-02-14 00:00:00.000', '1997-01-24 00:00:00.000', 1, 17.55, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10419, 'RICSU', 4, '1997-01-20 00:00:00.000', '1997-02-17 00:00:00.000', '1997-01-30 00:00:00.000', 2, 137.35, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(10420, 'WELLI', 3, '1997-01-21 00:00:00.000', '1997-02-18 00:00:00.000', '1997-01-27 00:00:00.000', 1, 44.12, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10421, 'QUEDE', 8, '1997-01-21 00:00:00.000', '1997-03-04 00:00:00.000', '1997-01-27 00:00:00.000', 1, 99.23, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10422, 'FRANS', 2, '1997-01-22 00:00:00.000', '1997-02-19 00:00:00.000', '1997-01-31 00:00:00.000', 1, 3.02, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy'),
	(10423, 'GOURL', 6, '1997-01-23 00:00:00.000', '1997-02-06 00:00:00.000', '1997-02-24 00:00:00.000', 3, 24.5, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(10424, 'MEREP', 7, '1997-01-23 00:00:00.000', '1997-02-20 00:00:00.000', '1997-01-27 00:00:00.000', 2, 370.61, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10425, 'LAMAI', 6, '1997-01-24 00:00:00.000', '1997-02-21 00:00:00.000', '1997-02-14 00:00:00.000', 2, 7.93, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10426, 'GALED', 4, '1997-01-27 00:00:00.000', '1997-02-24 00:00:00.000', '1997-02-06 00:00:00.000', 1, 18.69, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', NULL, '8022', 'Spain'),
	(10427, 'PICCO', 4, '1997-01-27 00:00:00.000', '1997-02-24 00:00:00.000', '1997-03-03 00:00:00.000', 2, 31.29, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10428, 'REGGC', 7, '1997-01-28 00:00:00.000', '1997-02-25 00:00:00.000', '1997-02-04 00:00:00.000', 1, 11.09, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10429, 'HUNGO', 3, '1997-01-29 00:00:00.000', '1997-03-12 00:00:00.000', '1997-02-07 00:00:00.000', 2, 56.63, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10430, 'ERNSH', 4, '1997-01-30 00:00:00.000', '1997-02-13 00:00:00.000', '1997-02-03 00:00:00.000', 1, 458.78, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10431, 'BOTTM', 4, '1997-01-30 00:00:00.000', '1997-02-13 00:00:00.000', '1997-02-07 00:00:00.000', 2, 44.17, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10432, 'SPLIR', 3, '1997-01-31 00:00:00.000', '1997-02-14 00:00:00.000', '1997-02-07 00:00:00.000', 2, 4.34, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10433, 'PRINI', 3, '1997-02-03 00:00:00.000', '1997-03-03 00:00:00.000', '1997-03-04 00:00:00.000', 3, 73.83, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
	(10434, 'FOLKO', 3, '1997-02-03 00:00:00.000', '1997-03-03 00:00:00.000', '1997-02-13 00:00:00.000', 2, 17.92, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10435, 'CONSH', 8, '1997-02-04 00:00:00.000', '1997-03-18 00:00:00.000', '1997-02-07 00:00:00.000', 2, 9.21, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', NULL, 'WX1 6LT', 'UK'),
	(10436, 'BLONP', 3, '1997-02-05 00:00:00.000', '1997-03-05 00:00:00.000', '1997-02-11 00:00:00.000', 2, 156.66, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10437, 'WARTH', 8, '1997-02-05 00:00:00.000', '1997-03-05 00:00:00.000', '1997-02-12 00:00:00.000', 1, 19.97, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10438, 'TOMSP', 3, '1997-02-06 00:00:00.000', '1997-03-06 00:00:00.000', '1997-02-14 00:00:00.000', 2, 8.24, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Germany'),
	(10439, 'MEREP', 6, '1997-02-07 00:00:00.000', '1997-03-07 00:00:00.000', '1997-02-10 00:00:00.000', 3, 4.07, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10440, 'SAVEA', 4, '1997-02-10 00:00:00.000', '1997-03-10 00:00:00.000', '1997-02-28 00:00:00.000', 2, 86.53, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10441, 'OLDWO', 3, '1997-02-10 00:00:00.000', '1997-03-24 00:00:00.000', '1997-03-14 00:00:00.000', 2, 73.02, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10442, 'ERNSH', 3, '1997-02-11 00:00:00.000', '1997-03-11 00:00:00.000', '1997-02-18 00:00:00.000', 2, 47.94, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10443, 'REGGC', 8, '1997-02-12 00:00:00.000', '1997-03-12 00:00:00.000', '1997-02-14 00:00:00.000', 1, 13.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10444, 'BERGS', 3, '1997-02-12 00:00:00.000', '1997-03-12 00:00:00.000', '1997-02-21 00:00:00.000', 3, 3.5, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10445, 'BERGS', 3, '1997-02-13 00:00:00.000', '1997-03-13 00:00:00.000', '1997-02-20 00:00:00.000', 1, 9.3, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10446, 'TOMSP', 6, '1997-02-14 00:00:00.000', '1997-03-14 00:00:00.000', '1997-02-19 00:00:00.000', 1, 14.68, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Germany'),
	(10447, 'RICAR', 4, '1997-02-14 00:00:00.000', '1997-03-14 00:00:00.000', '1997-03-07 00:00:00.000', 2, 68.66, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10448, 'RANCH', 4, '1997-02-17 00:00:00.000', '1997-03-17 00:00:00.000', '1997-02-24 00:00:00.000', 2, 38.82, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10449, 'BLONP', 3, '1997-02-18 00:00:00.000', '1997-03-18 00:00:00.000', '1997-02-27 00:00:00.000', 2, 53.3, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10450, 'VICTE', 8, '1997-02-19 00:00:00.000', '1997-03-19 00:00:00.000', '1997-03-11 00:00:00.000', 2, 7.23, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10451, 'QUICK', 4, '1997-02-19 00:00:00.000', '1997-03-05 00:00:00.000', '1997-03-12 00:00:00.000', 3, 189.09, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10452, 'SAVEA', 8, '1997-02-20 00:00:00.000', '1997-03-20 00:00:00.000', '1997-02-26 00:00:00.000', 1, 140.26, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10453, 'AROUT', 1, '1997-02-21 00:00:00.000', '1997-03-21 00:00:00.000', '1997-02-26 00:00:00.000', 2, 25.36, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10454, 'LAMAI', 4, '1997-02-21 00:00:00.000', '1997-03-21 00:00:00.000', '1997-02-25 00:00:00.000', 3, 2.74, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10455, 'WARTH', 8, '1997-02-24 00:00:00.000', '1997-04-07 00:00:00.000', '1997-03-03 00:00:00.000', 2, 180.45, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10456, 'KOENE', 8, '1997-02-25 00:00:00.000', '1997-04-08 00:00:00.000', '1997-02-28 00:00:00.000', 2, 8.12, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10457, 'KOENE', 2, '1997-02-25 00:00:00.000', '1997-03-25 00:00:00.000', '1997-03-03 00:00:00.000', 1, 11.57, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10458, 'SUPRD', 7, '1997-02-26 00:00:00.000', '1997-03-26 00:00:00.000', '1997-03-04 00:00:00.000', 3, 147.06, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10459, 'VICTE', 4, '1997-02-27 00:00:00.000', '1997-03-27 00:00:00.000', '1997-02-28 00:00:00.000', 2, 25.09, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10460, 'FOLKO', 8, '1997-02-28 00:00:00.000', '1997-03-28 00:00:00.000', '1997-03-03 00:00:00.000', 1, 16.27, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10461, 'LILAS', 1, '1997-02-28 00:00:00.000', '1997-03-28 00:00:00.000', '1997-03-05 00:00:00.000', 3, 148.61, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10462, 'CONSH', 2, '1997-03-03 00:00:00.000', '1997-03-31 00:00:00.000', '1997-03-18 00:00:00.000', 1, 6.17, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', NULL, 'WX1 6LT', 'UK'),
	(10463, 'SUPRD', 5, '1997-03-04 00:00:00.000', '1997-04-01 00:00:00.000', '1997-03-06 00:00:00.000', 3, 14.78, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10464, 'FURIB', 4, '1997-03-04 00:00:00.000', '1997-04-01 00:00:00.000', '1997-03-14 00:00:00.000', 2, 89, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
	(10465, 'VAFFE', 1, '1997-03-05 00:00:00.000', '1997-04-02 00:00:00.000', '1997-03-14 00:00:00.000', 3, 145.04, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10466, 'COMMI', 4, '1997-03-06 00:00:00.000', '1997-04-03 00:00:00.000', '1997-03-13 00:00:00.000', 1, 11.93, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil'),
	(10467, 'MAGAA', 8, '1997-03-06 00:00:00.000', '1997-04-03 00:00:00.000', '1997-03-11 00:00:00.000', 2, 4.93, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10468, 'KOENE', 3, '1997-03-07 00:00:00.000', '1997-04-04 00:00:00.000', '1997-03-12 00:00:00.000', 3, 44.12, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10469, 'WHITC', 1, '1997-03-10 00:00:00.000', '1997-04-07 00:00:00.000', '1997-03-14 00:00:00.000', 1, 60.18, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10470, 'BONAP', 4, '1997-03-11 00:00:00.000', '1997-04-08 00:00:00.000', '1997-03-14 00:00:00.000', 2, 64.56, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10471, 'BSBEV', 2, '1997-03-11 00:00:00.000', '1997-04-08 00:00:00.000', '1997-03-18 00:00:00.000', 3, 45.59, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10472, 'SEVES', 8, '1997-03-12 00:00:00.000', '1997-04-09 00:00:00.000', '1997-03-19 00:00:00.000', 1, 4.2, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10473, 'ISLAT', 1, '1997-03-13 00:00:00.000', '1997-03-27 00:00:00.000', '1997-03-21 00:00:00.000', 3, 16.37, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10474, 'PERIC', 5, '1997-03-13 00:00:00.000', '1997-04-10 00:00:00.000', '1997-03-21 00:00:00.000', 2, 83.49, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'Mexico'),
	(10475, 'SUPRD', 9, '1997-03-14 00:00:00.000', '1997-04-11 00:00:00.000', '1997-04-04 00:00:00.000', 1, 68.52, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10476, 'HILAA', 8, '1997-03-17 00:00:00.000', '1997-04-14 00:00:00.000', '1997-03-24 00:00:00.000', 3, 4.41, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10477, 'PRINI', 5, '1997-03-17 00:00:00.000', '1997-04-14 00:00:00.000', '1997-03-25 00:00:00.000', 2, 13.02, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
	(10478, 'VICTE', 2, '1997-03-18 00:00:00.000', '1997-04-01 00:00:00.000', '1997-03-26 00:00:00.000', 3, 4.81, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10479, 'RATTC', 3, '1997-03-19 00:00:00.000', '1997-04-16 00:00:00.000', '1997-03-21 00:00:00.000', 3, 708.95, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10480, 'FOLIG', 6, '1997-03-20 00:00:00.000', '1997-04-17 00:00:00.000', '1997-03-24 00:00:00.000', 2, 1.35, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', NULL, '59000', 'France'),
	(10481, 'RICAR', 8, '1997-03-20 00:00:00.000', '1997-04-17 00:00:00.000', '1997-03-25 00:00:00.000', 2, 64.33, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10482, 'LAZYK', 1, '1997-03-21 00:00:00.000', '1997-04-18 00:00:00.000', '1997-04-10 00:00:00.000', 3, 7.48, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA'),
	(10483, 'WHITC', 7, '1997-03-24 00:00:00.000', '1997-04-21 00:00:00.000', '1997-04-25 00:00:00.000', 2, 15.28, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10484, 'BSBEV', 3, '1997-03-24 00:00:00.000', '1997-04-21 00:00:00.000', '1997-04-01 00:00:00.000', 3, 6.88, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10485, 'LINOD', 4, '1997-03-25 00:00:00.000', '1997-04-08 00:00:00.000', '1997-03-31 00:00:00.000', 2, 64.45, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10486, 'HILAA', 1, '1997-03-26 00:00:00.000', '1997-04-23 00:00:00.000', '1997-04-02 00:00:00.000', 2, 30.53, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10487, 'QUEEN', 2, '1997-03-26 00:00:00.000', '1997-04-23 00:00:00.000', '1997-03-28 00:00:00.000', 2, 71.07, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10488, 'FRANK', 8, '1997-03-27 00:00:00.000', '1997-04-24 00:00:00.000', '1997-04-02 00:00:00.000', 2, 4.93, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10489, 'PICCO', 6, '1997-03-28 00:00:00.000', '1997-04-25 00:00:00.000', '1997-04-09 00:00:00.000', 2, 5.29, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10490, 'HILAA', 7, '1997-03-31 00:00:00.000', '1997-04-28 00:00:00.000', '1997-04-03 00:00:00.000', 2, 210.19, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10491, 'FURIB', 8, '1997-03-31 00:00:00.000', '1997-04-28 00:00:00.000', '1997-04-08 00:00:00.000', 3, 16.96, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
	(10492, 'BOTTM', 3, '1997-04-01 00:00:00.000', '1997-04-29 00:00:00.000', '1997-04-11 00:00:00.000', 1, 62.89, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10493, 'LAMAI', 4, '1997-04-02 00:00:00.000', '1997-04-30 00:00:00.000', '1997-04-10 00:00:00.000', 3, 10.64, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10494, 'COMMI', 4, '1997-04-02 00:00:00.000', '1997-04-30 00:00:00.000', '1997-04-09 00:00:00.000', 2, 65.99, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil'),
	(10495, 'LAUGB', 3, '1997-04-03 00:00:00.000', '1997-05-01 00:00:00.000', '1997-04-11 00:00:00.000', 3, 4.65, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada'),
	(10496, 'TRADH', 7, '1997-04-04 00:00:00.000', '1997-05-02 00:00:00.000', '1997-04-07 00:00:00.000', 2, 46.77, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil'),
	(10497, 'LEHMS', 7, '1997-04-04 00:00:00.000', '1997-05-02 00:00:00.000', '1997-04-07 00:00:00.000', 1, 36.21, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10498, 'HILAA', 8, '1997-04-07 00:00:00.000', '1997-05-05 00:00:00.000', '1997-04-11 00:00:00.000', 2, 29.75, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10499, 'LILAS', 4, '1997-04-08 00:00:00.000', '1997-05-06 00:00:00.000', '1997-04-16 00:00:00.000', 2, 102.02, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10500, 'LAMAI', 6, '1997-04-09 00:00:00.000', '1997-05-07 00:00:00.000', '1997-04-17 00:00:00.000', 1, 42.68, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10501, 'BLAUS', 9, '1997-04-09 00:00:00.000', '1997-05-07 00:00:00.000', '1997-04-16 00:00:00.000', 3, 8.85, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany'),
	(10502, 'PERIC', 2, '1997-04-10 00:00:00.000', '1997-05-08 00:00:00.000', '1997-04-29 00:00:00.000', 1, 69.32, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'Mexico'),
	(10503, 'HUNGO', 6, '1997-04-11 00:00:00.000', '1997-05-09 00:00:00.000', '1997-04-16 00:00:00.000', 2, 16.74, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10504, 'WHITC', 4, '1997-04-11 00:00:00.000', '1997-05-09 00:00:00.000', '1997-04-18 00:00:00.000', 3, 59.13, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10505, 'MEREP', 3, '1997-04-14 00:00:00.000', '1997-05-12 00:00:00.000', '1997-04-21 00:00:00.000', 3, 7.13, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10506, 'KOENE', 9, '1997-04-15 00:00:00.000', '1997-05-13 00:00:00.000', '1997-05-02 00:00:00.000', 2, 21.19, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10507, 'ANTON', 7, '1997-04-15 00:00:00.000', '1997-05-13 00:00:00.000', '1997-04-22 00:00:00.000', 1, 47.45, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'Mexico'),
	(10508, 'OTTIK', 1, '1997-04-16 00:00:00.000', '1997-05-14 00:00:00.000', '1997-05-13 00:00:00.000', 2, 4.99, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(10509, 'BLAUS', 4, '1997-04-17 00:00:00.000', '1997-05-15 00:00:00.000', '1997-04-29 00:00:00.000', 1, 0.15, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany'),
	(10510, 'SAVEA', 6, '1997-04-18 00:00:00.000', '1997-05-16 00:00:00.000', '1997-04-28 00:00:00.000', 3, 367.63, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10511, 'BONAP', 4, '1997-04-18 00:00:00.000', '1997-05-16 00:00:00.000', '1997-04-21 00:00:00.000', 3, 350.64, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10512, 'FAMIA', 7, '1997-04-21 00:00:00.000', '1997-05-19 00:00:00.000', '1997-04-24 00:00:00.000', 2, 3.53, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil'),
	(10513, 'WANDK', 7, '1997-04-22 00:00:00.000', '1997-06-03 00:00:00.000', '1997-04-28 00:00:00.000', 1, 105.65, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10514, 'ERNSH', 3, '1997-04-22 00:00:00.000', '1997-05-20 00:00:00.000', '1997-05-16 00:00:00.000', 2, 789.95, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10515, 'QUICK', 2, '1997-04-23 00:00:00.000', '1997-05-07 00:00:00.000', '1997-05-23 00:00:00.000', 1, 204.47, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10516, 'HUNGO', 2, '1997-04-24 00:00:00.000', '1997-05-22 00:00:00.000', '1997-05-01 00:00:00.000', 3, 62.78, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10517, 'NORTS', 3, '1997-04-24 00:00:00.000', '1997-05-22 00:00:00.000', '1997-04-29 00:00:00.000', 3, 32.07, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK'),
	(10518, 'TORTU', 4, '1997-04-25 00:00:00.000', '1997-05-09 00:00:00.000', '1997-05-05 00:00:00.000', 2, 218.15, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10519, 'CHOPS', 6, '1997-04-28 00:00:00.000', '1997-05-26 00:00:00.000', '1997-05-01 00:00:00.000', 3, 91.76, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
	(10520, 'SANTG', 7, '1997-04-29 00:00:00.000', '1997-05-27 00:00:00.000', '1997-05-01 00:00:00.000', 1, 13.37, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway'),
	(10521, 'CACTU', 8, '1997-04-29 00:00:00.000', '1997-05-27 00:00:00.000', '1997-05-02 00:00:00.000', 2, 17.22, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10522, 'LEHMS', 4, '1997-04-30 00:00:00.000', '1997-05-28 00:00:00.000', '1997-05-06 00:00:00.000', 1, 45.33, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10523, 'SEVES', 7, '1997-05-01 00:00:00.000', '1997-05-29 00:00:00.000', '1997-05-30 00:00:00.000', 2, 77.63, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10524, 'BERGS', 1, '1997-05-01 00:00:00.000', '1997-05-29 00:00:00.000', '1997-05-07 00:00:00.000', 2, 244.79, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10525, 'BONAP', 1, '1997-05-02 00:00:00.000', '1997-05-30 00:00:00.000', '1997-05-23 00:00:00.000', 2, 11.06, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10526, 'WARTH', 4, '1997-05-05 00:00:00.000', '1997-06-02 00:00:00.000', '1997-05-15 00:00:00.000', 2, 58.59, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10527, 'QUICK', 7, '1997-05-05 00:00:00.000', '1997-06-02 00:00:00.000', '1997-05-07 00:00:00.000', 1, 41.9, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10528, 'GREAL', 6, '1997-05-06 00:00:00.000', '1997-05-20 00:00:00.000', '1997-05-09 00:00:00.000', 2, 3.35, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(10529, 'MAISD', 5, '1997-05-07 00:00:00.000', '1997-06-04 00:00:00.000', '1997-05-09 00:00:00.000', 2, 66.69, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium'),
	(10530, 'PICCO', 3, '1997-05-08 00:00:00.000', '1997-06-05 00:00:00.000', '1997-05-12 00:00:00.000', 2, 339.22, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10531, 'OCEAN', 7, '1997-05-08 00:00:00.000', '1997-06-05 00:00:00.000', '1997-05-19 00:00:00.000', 1, 8.12, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10532, 'EASTC', 7, '1997-05-09 00:00:00.000', '1997-06-06 00:00:00.000', '1997-05-12 00:00:00.000', 3, 74.46, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK'),
	(10533, 'FOLKO', 8, '1997-05-12 00:00:00.000', '1997-06-09 00:00:00.000', '1997-05-22 00:00:00.000', 1, 188.04, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10534, 'LEHMS', 8, '1997-05-12 00:00:00.000', '1997-06-09 00:00:00.000', '1997-05-14 00:00:00.000', 2, 27.94, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10535, 'ANTON', 4, '1997-05-13 00:00:00.000', '1997-06-10 00:00:00.000', '1997-05-21 00:00:00.000', 1, 15.64, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'Mexico'),
	(10536, 'LEHMS', 3, '1997-05-14 00:00:00.000', '1997-06-11 00:00:00.000', '1997-06-06 00:00:00.000', 2, 58.88, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10537, 'RICSU', 1, '1997-05-14 00:00:00.000', '1997-05-28 00:00:00.000', '1997-05-19 00:00:00.000', 1, 78.85, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(10538, 'BSBEV', 9, '1997-05-15 00:00:00.000', '1997-06-12 00:00:00.000', '1997-05-16 00:00:00.000', 3, 4.87, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10539, 'BSBEV', 6, '1997-05-16 00:00:00.000', '1997-06-13 00:00:00.000', '1997-05-23 00:00:00.000', 3, 12.36, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10540, 'QUICK', 3, '1997-05-19 00:00:00.000', '1997-06-16 00:00:00.000', '1997-06-13 00:00:00.000', 3, 1007.64, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10541, 'HANAR', 2, '1997-05-19 00:00:00.000', '1997-06-16 00:00:00.000', '1997-05-29 00:00:00.000', 1, 68.65, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10542, 'KOENE', 1, '1997-05-20 00:00:00.000', '1997-06-17 00:00:00.000', '1997-05-26 00:00:00.000', 3, 10.95, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10543, 'LILAS', 8, '1997-05-21 00:00:00.000', '1997-06-18 00:00:00.000', '1997-05-23 00:00:00.000', 2, 48.17, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10544, 'LONEP', 4, '1997-05-21 00:00:00.000', '1997-06-18 00:00:00.000', '1997-05-30 00:00:00.000', 1, 24.91, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA'),
	(10545, 'LAZYK', 8, '1997-05-22 00:00:00.000', '1997-06-19 00:00:00.000', '1997-06-26 00:00:00.000', 2, 11.92, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA'),
	(10546, 'VICTE', 1, '1997-05-23 00:00:00.000', '1997-06-20 00:00:00.000', '1997-05-27 00:00:00.000', 3, 194.72, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10547, 'SEVES', 3, '1997-05-23 00:00:00.000', '1997-06-20 00:00:00.000', '1997-06-02 00:00:00.000', 2, 178.43, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10548, 'TOMSP', 3, '1997-05-26 00:00:00.000', '1997-06-23 00:00:00.000', '1997-06-02 00:00:00.000', 2, 1.43, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Germany'),
	(10549, 'QUICK', 5, '1997-05-27 00:00:00.000', '1997-06-10 00:00:00.000', '1997-05-30 00:00:00.000', 1, 171.24, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10550, 'GODOS', 7, '1997-05-28 00:00:00.000', '1997-06-25 00:00:00.000', '1997-06-06 00:00:00.000', 3, 4.32, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(10551, 'FURIB', 4, '1997-05-28 00:00:00.000', '1997-07-09 00:00:00.000', '1997-06-06 00:00:00.000', 3, 72.95, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
	(10552, 'HILAA', 2, '1997-05-29 00:00:00.000', '1997-06-26 00:00:00.000', '1997-06-05 00:00:00.000', 1, 83.22, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10553, 'WARTH', 2, '1997-05-30 00:00:00.000', '1997-06-27 00:00:00.000', '1997-06-03 00:00:00.000', 2, 149.49, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10554, 'OTTIK', 4, '1997-05-30 00:00:00.000', '1997-06-27 00:00:00.000', '1997-06-05 00:00:00.000', 3, 120.97, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(10555, 'SAVEA', 6, '1997-06-02 00:00:00.000', '1997-06-30 00:00:00.000', '1997-06-04 00:00:00.000', 3, 252.49, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10556, 'SIMOB', 2, '1997-06-03 00:00:00.000', '1997-07-15 00:00:00.000', '1997-06-13 00:00:00.000', 1, 9.8, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', NULL, '1734', 'Denmark'),
	(10557, 'LEHMS', 9, '1997-06-03 00:00:00.000', '1997-06-17 00:00:00.000', '1997-06-06 00:00:00.000', 2, 96.72, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10558, 'AROUT', 1, '1997-06-04 00:00:00.000', '1997-07-02 00:00:00.000', '1997-06-10 00:00:00.000', 2, 72.97, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10559, 'BLONP', 6, '1997-06-05 00:00:00.000', '1997-07-03 00:00:00.000', '1997-06-13 00:00:00.000', 1, 8.05, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10560, 'FRANK', 8, '1997-06-06 00:00:00.000', '1997-07-04 00:00:00.000', '1997-06-09 00:00:00.000', 1, 36.65, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10561, 'FOLKO', 2, '1997-06-06 00:00:00.000', '1997-07-04 00:00:00.000', '1997-06-09 00:00:00.000', 2, 242.21, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10562, 'REGGC', 1, '1997-06-09 00:00:00.000', '1997-07-07 00:00:00.000', '1997-06-12 00:00:00.000', 1, 22.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10563, 'RICAR', 2, '1997-06-10 00:00:00.000', '1997-07-22 00:00:00.000', '1997-06-24 00:00:00.000', 2, 60.43, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10564, 'RATTC', 4, '1997-06-10 00:00:00.000', '1997-07-08 00:00:00.000', '1997-06-16 00:00:00.000', 3, 13.75, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10565, 'MEREP', 8, '1997-06-11 00:00:00.000', '1997-07-09 00:00:00.000', '1997-06-18 00:00:00.000', 2, 7.15, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10566, 'BLONP', 9, '1997-06-12 00:00:00.000', '1997-07-10 00:00:00.000', '1997-06-18 00:00:00.000', 1, 88.4, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10567, 'HUNGO', 1, '1997-06-12 00:00:00.000', '1997-07-10 00:00:00.000', '1997-06-17 00:00:00.000', 1, 33.97, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10568, 'GALED', 3, '1997-06-13 00:00:00.000', '1997-07-11 00:00:00.000', '1997-07-09 00:00:00.000', 3, 6.54, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', NULL, '8022', 'Spain'),
	(10569, 'RATTC', 5, '1997-06-16 00:00:00.000', '1997-07-14 00:00:00.000', '1997-07-11 00:00:00.000', 1, 58.98, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10570, 'MEREP', 3, '1997-06-17 00:00:00.000', '1997-07-15 00:00:00.000', '1997-06-19 00:00:00.000', 3, 188.99, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10571, 'ERNSH', 8, '1997-06-17 00:00:00.000', '1997-07-29 00:00:00.000', '1997-07-04 00:00:00.000', 3, 26.06, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10572, 'BERGS', 3, '1997-06-18 00:00:00.000', '1997-07-16 00:00:00.000', '1997-06-25 00:00:00.000', 2, 116.43, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10573, 'ANTON', 7, '1997-06-19 00:00:00.000', '1997-07-17 00:00:00.000', '1997-06-20 00:00:00.000', 3, 84.84, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'Mexico'),
	(10574, 'TRAIH', 4, '1997-06-19 00:00:00.000', '1997-07-17 00:00:00.000', '1997-06-30 00:00:00.000', 2, 37.6, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA'),
	(10575, 'MORGK', 5, '1997-06-20 00:00:00.000', '1997-07-04 00:00:00.000', '1997-06-30 00:00:00.000', 1, 127.34, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany'),
	(10576, 'TORTU', 3, '1997-06-23 00:00:00.000', '1997-07-07 00:00:00.000', '1997-06-30 00:00:00.000', 3, 18.56, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10577, 'TRAIH', 9, '1997-06-23 00:00:00.000', '1997-08-04 00:00:00.000', '1997-06-30 00:00:00.000', 2, 25.41, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA'),
	(10578, 'BSBEV', 4, '1997-06-24 00:00:00.000', '1997-07-22 00:00:00.000', '1997-07-25 00:00:00.000', 3, 29.6, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10579, 'LETSS', 1, '1997-06-25 00:00:00.000', '1997-07-23 00:00:00.000', '1997-07-04 00:00:00.000', 2, 13.73, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA'),
	(10580, 'OTTIK', 4, '1997-06-26 00:00:00.000', '1997-07-24 00:00:00.000', '1997-07-01 00:00:00.000', 3, 75.89, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(10581, 'FAMIA', 3, '1997-06-26 00:00:00.000', '1997-07-24 00:00:00.000', '1997-07-02 00:00:00.000', 1, 3.01, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil'),
	(10582, 'BLAUS', 3, '1997-06-27 00:00:00.000', '1997-07-25 00:00:00.000', '1997-07-14 00:00:00.000', 2, 27.71, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany'),
	(10583, 'WARTH', 2, '1997-06-30 00:00:00.000', '1997-07-28 00:00:00.000', '1997-07-04 00:00:00.000', 2, 7.28, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10584, 'BLONP', 4, '1997-06-30 00:00:00.000', '1997-07-28 00:00:00.000', '1997-07-04 00:00:00.000', 1, 59.14, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10585, 'WELLI', 7, '1997-07-01 00:00:00.000', '1997-07-29 00:00:00.000', '1997-07-10 00:00:00.000', 1, 13.41, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10586, 'REGGC', 9, '1997-07-02 00:00:00.000', '1997-07-30 00:00:00.000', '1997-07-09 00:00:00.000', 1, 0.48, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10587, 'QUEDE', 1, '1997-07-02 00:00:00.000', '1997-07-30 00:00:00.000', '1997-07-09 00:00:00.000', 1, 62.52, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10588, 'QUICK', 2, '1997-07-03 00:00:00.000', '1997-07-31 00:00:00.000', '1997-07-10 00:00:00.000', 3, 194.67, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10589, 'GREAL', 8, '1997-07-04 00:00:00.000', '1997-08-01 00:00:00.000', '1997-07-14 00:00:00.000', 2, 4.42, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(10590, 'MEREP', 4, '1997-07-07 00:00:00.000', '1997-08-04 00:00:00.000', '1997-07-14 00:00:00.000', 3, 44.77, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10591, 'VAFFE', 1, '1997-07-07 00:00:00.000', '1997-07-21 00:00:00.000', '1997-07-16 00:00:00.000', 1, 55.92, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10592, 'LEHMS', 3, '1997-07-08 00:00:00.000', '1997-08-05 00:00:00.000', '1997-07-16 00:00:00.000', 1, 32.1, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10593, 'LEHMS', 7, '1997-07-09 00:00:00.000', '1997-08-06 00:00:00.000', '1997-08-13 00:00:00.000', 2, 174.2, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10594, 'OLDWO', 3, '1997-07-09 00:00:00.000', '1997-08-06 00:00:00.000', '1997-07-16 00:00:00.000', 2, 5.24, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10595, 'ERNSH', 2, '1997-07-10 00:00:00.000', '1997-08-07 00:00:00.000', '1997-07-14 00:00:00.000', 1, 96.78, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10596, 'WHITC', 8, '1997-07-11 00:00:00.000', '1997-08-08 00:00:00.000', '1997-08-12 00:00:00.000', 1, 16.34, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10597, 'PICCO', 7, '1997-07-11 00:00:00.000', '1997-08-08 00:00:00.000', '1997-07-18 00:00:00.000', 3, 35.12, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10598, 'RATTC', 1, '1997-07-14 00:00:00.000', '1997-08-11 00:00:00.000', '1997-07-18 00:00:00.000', 3, 44.42, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10599, 'BSBEV', 6, '1997-07-15 00:00:00.000', '1997-08-26 00:00:00.000', '1997-07-21 00:00:00.000', 3, 29.98, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10600, 'HUNGC', 4, '1997-07-16 00:00:00.000', '1997-08-13 00:00:00.000', '1997-07-21 00:00:00.000', 1, 45.13, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA'),
	(10601, 'HILAA', 7, '1997-07-16 00:00:00.000', '1997-08-27 00:00:00.000', '1997-07-22 00:00:00.000', 1, 58.3, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10602, 'VAFFE', 8, '1997-07-17 00:00:00.000', '1997-08-14 00:00:00.000', '1997-07-22 00:00:00.000', 2, 2.92, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10603, 'SAVEA', 8, '1997-07-18 00:00:00.000', '1997-08-15 00:00:00.000', '1997-08-08 00:00:00.000', 2, 48.77, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10604, 'FURIB', 1, '1997-07-18 00:00:00.000', '1997-08-15 00:00:00.000', '1997-07-29 00:00:00.000', 1, 7.46, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
	(10605, 'MEREP', 1, '1997-07-21 00:00:00.000', '1997-08-18 00:00:00.000', '1997-07-29 00:00:00.000', 2, 379.13, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10606, 'TRADH', 4, '1997-07-22 00:00:00.000', '1997-08-19 00:00:00.000', '1997-07-31 00:00:00.000', 3, 79.4, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil'),
	(10607, 'SAVEA', 5, '1997-07-22 00:00:00.000', '1997-08-19 00:00:00.000', '1997-07-25 00:00:00.000', 1, 200.24, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10608, 'TOMSP', 4, '1997-07-23 00:00:00.000', '1997-08-20 00:00:00.000', '1997-08-01 00:00:00.000', 2, 27.79, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Germany'),
	(10609, 'DUMON', 7, '1997-07-24 00:00:00.000', '1997-08-21 00:00:00.000', '1997-07-30 00:00:00.000', 2, 1.85, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France'),
	(10610, 'LAMAI', 8, '1997-07-25 00:00:00.000', '1997-08-22 00:00:00.000', '1997-08-06 00:00:00.000', 1, 26.78, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10611, 'WOLZA', 6, '1997-07-25 00:00:00.000', '1997-08-22 00:00:00.000', '1997-08-01 00:00:00.000', 2, 80.65, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland'),
	(10612, 'SAVEA', 1, '1997-07-28 00:00:00.000', '1997-08-25 00:00:00.000', '1997-08-01 00:00:00.000', 2, 544.08, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10613, 'HILAA', 4, '1997-07-29 00:00:00.000', '1997-08-26 00:00:00.000', '1997-08-01 00:00:00.000', 2, 8.11, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10614, 'BLAUS', 8, '1997-07-29 00:00:00.000', '1997-08-26 00:00:00.000', '1997-08-01 00:00:00.000', 3, 1.93, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany'),
	(10615, 'WILMK', 2, '1997-07-30 00:00:00.000', '1997-08-27 00:00:00.000', '1997-08-06 00:00:00.000', 3, 0.75, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland'),
	(10616, 'GREAL', 1, '1997-07-31 00:00:00.000', '1997-08-28 00:00:00.000', '1997-08-05 00:00:00.000', 2, 116.53, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(10617, 'GREAL', 4, '1997-07-31 00:00:00.000', '1997-08-28 00:00:00.000', '1997-08-04 00:00:00.000', 2, 18.53, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(10618, 'MEREP', 1, '1997-08-01 00:00:00.000', '1997-09-12 00:00:00.000', '1997-08-08 00:00:00.000', 1, 154.68, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10619, 'MEREP', 3, '1997-08-04 00:00:00.000', '1997-09-01 00:00:00.000', '1997-08-07 00:00:00.000', 3, 91.05, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10620, 'LAUGB', 2, '1997-08-05 00:00:00.000', '1997-09-02 00:00:00.000', '1997-08-14 00:00:00.000', 3, 0.94, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada'),
	(10621, 'ISLAT', 4, '1997-08-05 00:00:00.000', '1997-09-02 00:00:00.000', '1997-08-11 00:00:00.000', 2, 23.73, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10622, 'RICAR', 4, '1997-08-06 00:00:00.000', '1997-09-03 00:00:00.000', '1997-08-11 00:00:00.000', 3, 50.97, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10623, 'FRANK', 8, '1997-08-07 00:00:00.000', '1997-09-04 00:00:00.000', '1997-08-12 00:00:00.000', 2, 97.18, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10624, 'THECR', 4, '1997-08-07 00:00:00.000', '1997-09-04 00:00:00.000', '1997-08-19 00:00:00.000', 2, 94.8, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA'),
	(10625, 'ANATR', 3, '1997-08-08 00:00:00.000', '1997-09-05 00:00:00.000', '1997-08-14 00:00:00.000', 1, 43.9, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'Mexico'),
	(10626, 'BERGS', 1, '1997-08-11 00:00:00.000', '1997-09-08 00:00:00.000', '1997-08-20 00:00:00.000', 2, 138.69, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10627, 'SAVEA', 8, '1997-08-11 00:00:00.000', '1997-09-22 00:00:00.000', '1997-08-21 00:00:00.000', 3, 107.46, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10628, 'BLONP', 4, '1997-08-12 00:00:00.000', '1997-09-09 00:00:00.000', '1997-08-20 00:00:00.000', 3, 30.36, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10629, 'GODOS', 4, '1997-08-12 00:00:00.000', '1997-09-09 00:00:00.000', '1997-08-20 00:00:00.000', 3, 85.46, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(10630, 'KOENE', 1, '1997-08-13 00:00:00.000', '1997-09-10 00:00:00.000', '1997-08-19 00:00:00.000', 2, 32.35, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10631, 'LAMAI', 8, '1997-08-14 00:00:00.000', '1997-09-11 00:00:00.000', '1997-08-15 00:00:00.000', 1, 0.87, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10632, 'WANDK', 8, '1997-08-14 00:00:00.000', '1997-09-11 00:00:00.000', '1997-08-19 00:00:00.000', 1, 41.38, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10633, 'ERNSH', 7, '1997-08-15 00:00:00.000', '1997-09-12 00:00:00.000', '1997-08-18 00:00:00.000', 3, 477.9, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10634, 'FOLIG', 4, '1997-08-15 00:00:00.000', '1997-09-12 00:00:00.000', '1997-08-21 00:00:00.000', 3, 487.38, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', NULL, '59000', 'France'),
	(10635, 'MAGAA', 8, '1997-08-18 00:00:00.000', '1997-09-15 00:00:00.000', '1997-08-21 00:00:00.000', 3, 47.46, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10636, 'WARTH', 4, '1997-08-19 00:00:00.000', '1997-09-16 00:00:00.000', '1997-08-26 00:00:00.000', 1, 1.15, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10637, 'QUEEN', 6, '1997-08-19 00:00:00.000', '1997-09-16 00:00:00.000', '1997-08-26 00:00:00.000', 1, 201.29, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10638, 'LINOD', 3, '1997-08-20 00:00:00.000', '1997-09-17 00:00:00.000', '1997-09-01 00:00:00.000', 1, 158.44, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10639, 'SANTG', 7, '1997-08-20 00:00:00.000', '1997-09-17 00:00:00.000', '1997-08-27 00:00:00.000', 3, 38.64, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway'),
	(10640, 'WANDK', 4, '1997-08-21 00:00:00.000', '1997-09-18 00:00:00.000', '1997-08-28 00:00:00.000', 1, 23.55, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10641, 'HILAA', 4, '1997-08-22 00:00:00.000', '1997-09-19 00:00:00.000', '1997-08-26 00:00:00.000', 2, 179.61, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10642, 'SIMOB', 7, '1997-08-22 00:00:00.000', '1997-09-19 00:00:00.000', '1997-09-05 00:00:00.000', 3, 41.89, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', NULL, '1734', 'Denmark'),
	(10643, 'ALFKI', 6, '1997-08-25 00:00:00.000', '1997-09-22 00:00:00.000', '1997-09-02 00:00:00.000', 1, 29.46, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany'),
	(10644, 'WELLI', 3, '1997-08-25 00:00:00.000', '1997-09-22 00:00:00.000', '1997-09-01 00:00:00.000', 2, 0.14, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10645, 'HANAR', 4, '1997-08-26 00:00:00.000', '1997-09-23 00:00:00.000', '1997-09-02 00:00:00.000', 1, 12.41, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10646, 'HUNGO', 9, '1997-08-27 00:00:00.000', '1997-10-08 00:00:00.000', '1997-09-03 00:00:00.000', 3, 142.33, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10647, 'QUEDE', 4, '1997-08-27 00:00:00.000', '1997-09-10 00:00:00.000', '1997-09-03 00:00:00.000', 2, 45.54, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10648, 'RICAR', 5, '1997-08-28 00:00:00.000', '1997-10-09 00:00:00.000', '1997-09-09 00:00:00.000', 2, 14.25, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10649, 'MAISD', 5, '1997-08-28 00:00:00.000', '1997-09-25 00:00:00.000', '1997-08-29 00:00:00.000', 3, 6.2, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium'),
	(10650, 'FAMIA', 5, '1997-08-29 00:00:00.000', '1997-09-26 00:00:00.000', '1997-09-03 00:00:00.000', 3, 176.81, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil'),
	(10651, 'WANDK', 8, '1997-09-01 00:00:00.000', '1997-09-29 00:00:00.000', '1997-09-11 00:00:00.000', 2, 20.6, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10652, 'GOURL', 4, '1997-09-01 00:00:00.000', '1997-09-29 00:00:00.000', '1997-09-08 00:00:00.000', 2, 7.14, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(10653, 'FRANK', 1, '1997-09-02 00:00:00.000', '1997-09-30 00:00:00.000', '1997-09-19 00:00:00.000', 1, 93.25, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10654, 'BERGS', 5, '1997-09-02 00:00:00.000', '1997-09-30 00:00:00.000', '1997-09-11 00:00:00.000', 1, 55.26, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10655, 'REGGC', 1, '1997-09-03 00:00:00.000', '1997-10-01 00:00:00.000', '1997-09-11 00:00:00.000', 2, 4.41, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10656, 'GREAL', 6, '1997-09-04 00:00:00.000', '1997-10-02 00:00:00.000', '1997-09-10 00:00:00.000', 1, 57.15, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(10657, 'SAVEA', 2, '1997-09-04 00:00:00.000', '1997-10-02 00:00:00.000', '1997-09-15 00:00:00.000', 2, 352.69, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10658, 'QUICK', 4, '1997-09-05 00:00:00.000', '1997-10-03 00:00:00.000', '1997-09-08 00:00:00.000', 1, 364.15, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10659, 'QUEEN', 7, '1997-09-05 00:00:00.000', '1997-10-03 00:00:00.000', '1997-09-10 00:00:00.000', 2, 105.81, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10660, 'HUNGC', 8, '1997-09-08 00:00:00.000', '1997-10-06 00:00:00.000', '1997-10-15 00:00:00.000', 1, 111.29, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA'),
	(10661, 'HUNGO', 7, '1997-09-09 00:00:00.000', '1997-10-07 00:00:00.000', '1997-09-15 00:00:00.000', 3, 17.55, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10662, 'LONEP', 3, '1997-09-09 00:00:00.000', '1997-10-07 00:00:00.000', '1997-09-18 00:00:00.000', 2, 1.28, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA'),
	(10663, 'BONAP', 2, '1997-09-10 00:00:00.000', '1997-09-24 00:00:00.000', '1997-10-03 00:00:00.000', 2, 113.15, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10664, 'FURIB', 1, '1997-09-10 00:00:00.000', '1997-10-08 00:00:00.000', '1997-09-19 00:00:00.000', 3, 1.27, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
	(10665, 'LONEP', 1, '1997-09-11 00:00:00.000', '1997-10-09 00:00:00.000', '1997-09-17 00:00:00.000', 2, 26.31, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA'),
	(10666, 'RICSU', 7, '1997-09-12 00:00:00.000', '1997-10-10 00:00:00.000', '1997-09-22 00:00:00.000', 2, 232.42, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(10667, 'ERNSH', 7, '1997-09-12 00:00:00.000', '1997-10-10 00:00:00.000', '1997-09-19 00:00:00.000', 1, 78.09, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10668, 'WANDK', 1, '1997-09-15 00:00:00.000', '1997-10-13 00:00:00.000', '1997-09-23 00:00:00.000', 2, 47.22, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(10669, 'SIMOB', 2, '1997-09-15 00:00:00.000', '1997-10-13 00:00:00.000', '1997-09-22 00:00:00.000', 1, 24.39, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', NULL, '1734', 'Denmark'),
	(10670, 'FRANK', 4, '1997-09-16 00:00:00.000', '1997-10-14 00:00:00.000', '1997-09-18 00:00:00.000', 1, 203.48, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10671, 'FRANR', 1, '1997-09-17 00:00:00.000', '1997-10-15 00:00:00.000', '1997-09-24 00:00:00.000', 1, 30.34, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France'),
	(10672, 'BERGS', 9, '1997-09-17 00:00:00.000', '1997-10-01 00:00:00.000', '1997-09-26 00:00:00.000', 2, 95.75, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10673, 'WILMK', 2, '1997-09-18 00:00:00.000', '1997-10-16 00:00:00.000', '1997-09-19 00:00:00.000', 1, 22.76, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland'),
	(10674, 'ISLAT', 4, '1997-09-18 00:00:00.000', '1997-10-16 00:00:00.000', '1997-09-30 00:00:00.000', 2, 0.9, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10675, 'FRANK', 5, '1997-09-19 00:00:00.000', '1997-10-17 00:00:00.000', '1997-09-23 00:00:00.000', 2, 31.85, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10676, 'TORTU', 2, '1997-09-22 00:00:00.000', '1997-10-20 00:00:00.000', '1997-09-29 00:00:00.000', 2, 2.01, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10677, 'ANTON', 1, '1997-09-22 00:00:00.000', '1997-10-20 00:00:00.000', '1997-09-26 00:00:00.000', 3, 4.03, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'Mexico'),
	(10678, 'SAVEA', 7, '1997-09-23 00:00:00.000', '1997-10-21 00:00:00.000', '1997-10-16 00:00:00.000', 3, 388.98, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10679, 'BLONP', 8, '1997-09-23 00:00:00.000', '1997-10-21 00:00:00.000', '1997-09-30 00:00:00.000', 3, 27.94, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10680, 'OLDWO', 1, '1997-09-24 00:00:00.000', '1997-10-22 00:00:00.000', '1997-09-26 00:00:00.000', 1, 26.61, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10681, 'GREAL', 3, '1997-09-25 00:00:00.000', '1997-10-23 00:00:00.000', '1997-09-30 00:00:00.000', 3, 76.13, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(10682, 'ANTON', 3, '1997-09-25 00:00:00.000', '1997-10-23 00:00:00.000', '1997-10-01 00:00:00.000', 2, 36.13, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'Mexico'),
	(10683, 'DUMON', 2, '1997-09-26 00:00:00.000', '1997-10-24 00:00:00.000', '1997-10-01 00:00:00.000', 1, 4.4, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France'),
	(10684, 'OTTIK', 3, '1997-09-26 00:00:00.000', '1997-10-24 00:00:00.000', '1997-09-30 00:00:00.000', 1, 145.63, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(10685, 'GOURL', 4, '1997-09-29 00:00:00.000', '1997-10-13 00:00:00.000', '1997-10-03 00:00:00.000', 2, 33.75, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(10686, 'PICCO', 2, '1997-09-30 00:00:00.000', '1997-10-28 00:00:00.000', '1997-10-08 00:00:00.000', 1, 96.5, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10687, 'HUNGO', 9, '1997-09-30 00:00:00.000', '1997-10-28 00:00:00.000', '1997-10-30 00:00:00.000', 2, 296.43, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10688, 'VAFFE', 4, '1997-10-01 00:00:00.000', '1997-10-15 00:00:00.000', '1997-10-07 00:00:00.000', 2, 299.09, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10689, 'BERGS', 1, '1997-10-01 00:00:00.000', '1997-10-29 00:00:00.000', '1997-10-07 00:00:00.000', 2, 13.42, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10690, 'HANAR', 1, '1997-10-02 00:00:00.000', '1997-10-30 00:00:00.000', '1997-10-03 00:00:00.000', 1, 15.8, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10691, 'QUICK', 2, '1997-10-03 00:00:00.000', '1997-11-14 00:00:00.000', '1997-10-22 00:00:00.000', 2, 810.05, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10692, 'ALFKI', 4, '1997-10-03 00:00:00.000', '1997-10-31 00:00:00.000', '1997-10-13 00:00:00.000', 2, 61.02, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany'),
	(10693, 'WHITC', 3, '1997-10-06 00:00:00.000', '1997-10-20 00:00:00.000', '1997-10-10 00:00:00.000', 3, 139.34, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10694, 'QUICK', 8, '1997-10-06 00:00:00.000', '1997-11-03 00:00:00.000', '1997-10-09 00:00:00.000', 3, 398.36, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10695, 'WILMK', 7, '1997-10-07 00:00:00.000', '1997-11-18 00:00:00.000', '1997-10-14 00:00:00.000', 1, 16.72, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland'),
	(10696, 'WHITC', 8, '1997-10-08 00:00:00.000', '1997-11-19 00:00:00.000', '1997-10-14 00:00:00.000', 3, 102.55, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10697, 'LINOD', 3, '1997-10-08 00:00:00.000', '1997-11-05 00:00:00.000', '1997-10-14 00:00:00.000', 1, 45.52, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10698, 'ERNSH', 4, '1997-10-09 00:00:00.000', '1997-11-06 00:00:00.000', '1997-10-17 00:00:00.000', 1, 272.47, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10699, 'MORGK', 3, '1997-10-09 00:00:00.000', '1997-11-06 00:00:00.000', '1997-10-13 00:00:00.000', 3, 0.58, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany'),
	(10700, 'SAVEA', 3, '1997-10-10 00:00:00.000', '1997-11-07 00:00:00.000', '1997-10-16 00:00:00.000', 1, 65.1, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10701, 'HUNGO', 6, '1997-10-13 00:00:00.000', '1997-10-27 00:00:00.000', '1997-10-15 00:00:00.000', 3, 220.31, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10702, 'ALFKI', 4, '1997-10-13 00:00:00.000', '1997-11-24 00:00:00.000', '1997-10-21 00:00:00.000', 1, 23.94, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany'),
	(10703, 'FOLKO', 6, '1997-10-14 00:00:00.000', '1997-11-11 00:00:00.000', '1997-10-20 00:00:00.000', 2, 152.3, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10704, 'QUEEN', 6, '1997-10-14 00:00:00.000', '1997-11-11 00:00:00.000', '1997-11-07 00:00:00.000', 1, 4.78, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10705, 'HILAA', 9, '1997-10-15 00:00:00.000', '1997-11-12 00:00:00.000', '1997-11-18 00:00:00.000', 2, 3.52, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10706, 'OLDWO', 8, '1997-10-16 00:00:00.000', '1997-11-13 00:00:00.000', '1997-10-21 00:00:00.000', 3, 135.63, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10707, 'AROUT', 4, '1997-10-16 00:00:00.000', '1997-10-30 00:00:00.000', '1997-10-23 00:00:00.000', 3, 21.74, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10708, 'THEBI', 6, '1997-10-17 00:00:00.000', '1997-11-28 00:00:00.000', '1997-11-05 00:00:00.000', 2, 2.96, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA'),
	(10709, 'GOURL', 1, '1997-10-17 00:00:00.000', '1997-11-14 00:00:00.000', '1997-11-20 00:00:00.000', 3, 210.8, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(10710, 'FRANS', 1, '1997-10-20 00:00:00.000', '1997-11-17 00:00:00.000', '1997-10-23 00:00:00.000', 1, 4.98, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy'),
	(10711, 'SAVEA', 5, '1997-10-21 00:00:00.000', '1997-12-02 00:00:00.000', '1997-10-29 00:00:00.000', 2, 52.41, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10712, 'HUNGO', 3, '1997-10-21 00:00:00.000', '1997-11-18 00:00:00.000', '1997-10-31 00:00:00.000', 1, 89.93, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10713, 'SAVEA', 1, '1997-10-22 00:00:00.000', '1997-11-19 00:00:00.000', '1997-10-24 00:00:00.000', 1, 167.05, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10714, 'SAVEA', 5, '1997-10-22 00:00:00.000', '1997-11-19 00:00:00.000', '1997-10-27 00:00:00.000', 3, 24.49, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10715, 'BONAP', 3, '1997-10-23 00:00:00.000', '1997-11-06 00:00:00.000', '1997-10-29 00:00:00.000', 1, 63.2, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10716, 'RANCH', 4, '1997-10-24 00:00:00.000', '1997-11-21 00:00:00.000', '1997-10-27 00:00:00.000', 2, 22.57, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10717, 'FRANK', 1, '1997-10-24 00:00:00.000', '1997-11-21 00:00:00.000', '1997-10-29 00:00:00.000', 2, 59.25, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10718, 'KOENE', 1, '1997-10-27 00:00:00.000', '1997-11-24 00:00:00.000', '1997-10-29 00:00:00.000', 3, 170.88, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10719, 'LETSS', 8, '1997-10-27 00:00:00.000', '1997-11-24 00:00:00.000', '1997-11-05 00:00:00.000', 2, 51.44, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA'),
	(10720, 'QUEDE', 8, '1997-10-28 00:00:00.000', '1997-11-11 00:00:00.000', '1997-11-05 00:00:00.000', 2, 9.53, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10721, 'QUICK', 5, '1997-10-29 00:00:00.000', '1997-11-26 00:00:00.000', '1997-10-31 00:00:00.000', 3, 48.92, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10722, 'SAVEA', 8, '1997-10-29 00:00:00.000', '1997-12-10 00:00:00.000', '1997-11-04 00:00:00.000', 1, 74.58, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10723, 'WHITC', 3, '1997-10-30 00:00:00.000', '1997-11-27 00:00:00.000', '1997-11-25 00:00:00.000', 1, 21.72, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10724, 'MEREP', 8, '1997-10-30 00:00:00.000', '1997-12-11 00:00:00.000', '1997-11-05 00:00:00.000', 2, 57.75, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada'),
	(10725, 'FAMIA', 4, '1997-10-31 00:00:00.000', '1997-11-28 00:00:00.000', '1997-11-05 00:00:00.000', 3, 10.83, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil'),
	(10726, 'EASTC', 4, '1997-11-03 00:00:00.000', '1997-11-17 00:00:00.000', '1997-12-05 00:00:00.000', 1, 16.56, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK'),
	(10727, 'REGGC', 2, '1997-11-03 00:00:00.000', '1997-12-01 00:00:00.000', '1997-12-05 00:00:00.000', 1, 89.9, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10728, 'QUEEN', 4, '1997-11-04 00:00:00.000', '1997-12-02 00:00:00.000', '1997-11-11 00:00:00.000', 2, 58.33, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10729, 'LINOD', 8, '1997-11-04 00:00:00.000', '1997-12-16 00:00:00.000', '1997-11-14 00:00:00.000', 3, 141.06, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10730, 'BONAP', 5, '1997-11-05 00:00:00.000', '1997-12-03 00:00:00.000', '1997-11-14 00:00:00.000', 1, 20.12, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10731, 'CHOPS', 7, '1997-11-06 00:00:00.000', '1997-12-04 00:00:00.000', '1997-11-14 00:00:00.000', 1, 96.65, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
	(10732, 'BONAP', 3, '1997-11-06 00:00:00.000', '1997-12-04 00:00:00.000', '1997-11-07 00:00:00.000', 1, 16.97, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10733, 'BERGS', 1, '1997-11-07 00:00:00.000', '1997-12-05 00:00:00.000', '1997-11-10 00:00:00.000', 3, 110.11, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10734, 'GOURL', 2, '1997-11-07 00:00:00.000', '1997-12-05 00:00:00.000', '1997-11-12 00:00:00.000', 3, 1.63, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(10735, 'LETSS', 6, '1997-11-10 00:00:00.000', '1997-12-08 00:00:00.000', '1997-11-21 00:00:00.000', 2, 45.97, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA'),
	(10736, 'HUNGO', 9, '1997-11-11 00:00:00.000', '1997-12-09 00:00:00.000', '1997-11-21 00:00:00.000', 2, 44.1, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10737, 'VINET', 2, '1997-11-11 00:00:00.000', '1997-12-09 00:00:00.000', '1997-11-18 00:00:00.000', 2, 7.79, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France'),
	(10738, 'SPECD', 2, '1997-11-12 00:00:00.000', '1997-12-10 00:00:00.000', '1997-11-18 00:00:00.000', 1, 2.91, 'Spécialités du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France'),
	(10739, 'VINET', 3, '1997-11-12 00:00:00.000', '1997-12-10 00:00:00.000', '1997-11-17 00:00:00.000', 3, 11.08, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', NULL, '51100', 'France'),
	(10740, 'WHITC', 4, '1997-11-13 00:00:00.000', '1997-12-11 00:00:00.000', '1997-11-25 00:00:00.000', 2, 81.88, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10741, 'AROUT', 4, '1997-11-14 00:00:00.000', '1997-11-28 00:00:00.000', '1997-11-18 00:00:00.000', 3, 10.96, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10742, 'BOTTM', 3, '1997-11-14 00:00:00.000', '1997-12-12 00:00:00.000', '1997-11-18 00:00:00.000', 3, 243.73, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10743, 'AROUT', 1, '1997-11-17 00:00:00.000', '1997-12-15 00:00:00.000', '1997-11-21 00:00:00.000', 2, 23.72, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10744, 'VAFFE', 6, '1997-11-17 00:00:00.000', '1997-12-15 00:00:00.000', '1997-11-24 00:00:00.000', 1, 69.19, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10745, 'QUICK', 9, '1997-11-18 00:00:00.000', '1997-12-16 00:00:00.000', '1997-11-27 00:00:00.000', 1, 3.52, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10746, 'CHOPS', 1, '1997-11-19 00:00:00.000', '1997-12-17 00:00:00.000', '1997-11-21 00:00:00.000', 3, 31.43, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
	(10747, 'PICCO', 6, '1997-11-19 00:00:00.000', '1997-12-17 00:00:00.000', '1997-11-26 00:00:00.000', 1, 117.33, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10748, 'SAVEA', 3, '1997-11-20 00:00:00.000', '1997-12-18 00:00:00.000', '1997-11-28 00:00:00.000', 1, 232.55, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10749, 'ISLAT', 4, '1997-11-20 00:00:00.000', '1997-12-18 00:00:00.000', '1997-12-19 00:00:00.000', 2, 61.53, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10750, 'WARTH', 9, '1997-11-21 00:00:00.000', '1997-12-19 00:00:00.000', '1997-11-24 00:00:00.000', 1, 79.3, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10751, 'RICSU', 3, '1997-11-24 00:00:00.000', '1997-12-22 00:00:00.000', '1997-12-03 00:00:00.000', 3, 130.79, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(10752, 'NORTS', 2, '1997-11-24 00:00:00.000', '1997-12-22 00:00:00.000', '1997-11-28 00:00:00.000', 3, 1.39, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK'),
	(10753, 'FRANS', 3, '1997-11-25 00:00:00.000', '1997-12-23 00:00:00.000', '1997-11-27 00:00:00.000', 1, 7.7, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy'),
	(10754, 'MAGAA', 6, '1997-11-25 00:00:00.000', '1997-12-23 00:00:00.000', '1997-11-27 00:00:00.000', 3, 2.38, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10755, 'BONAP', 4, '1997-11-26 00:00:00.000', '1997-12-24 00:00:00.000', '1997-11-28 00:00:00.000', 2, 16.71, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10756, 'SPLIR', 8, '1997-11-27 00:00:00.000', '1997-12-25 00:00:00.000', '1997-12-02 00:00:00.000', 2, 73.21, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10757, 'SAVEA', 6, '1997-11-27 00:00:00.000', '1997-12-25 00:00:00.000', '1997-12-15 00:00:00.000', 1, 8.19, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10758, 'RICSU', 3, '1997-11-28 00:00:00.000', '1997-12-26 00:00:00.000', '1997-12-04 00:00:00.000', 3, 138.17, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(10759, 'ANATR', 3, '1997-11-28 00:00:00.000', '1997-12-26 00:00:00.000', '1997-12-12 00:00:00.000', 3, 11.99, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'Mexico'),
	(10760, 'MAISD', 4, '1997-12-01 00:00:00.000', '1997-12-29 00:00:00.000', '1997-12-10 00:00:00.000', 1, 155.64, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium'),
	(10761, 'RATTC', 5, '1997-12-02 00:00:00.000', '1997-12-30 00:00:00.000', '1997-12-08 00:00:00.000', 2, 18.66, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10762, 'FOLKO', 3, '1997-12-02 00:00:00.000', '1997-12-30 00:00:00.000', '1997-12-09 00:00:00.000', 1, 328.74, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10763, 'FOLIG', 3, '1997-12-03 00:00:00.000', '1997-12-31 00:00:00.000', '1997-12-08 00:00:00.000', 3, 37.35, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', NULL, '59000', 'France'),
	(10764, 'ERNSH', 6, '1997-12-03 00:00:00.000', '1997-12-31 00:00:00.000', '1997-12-08 00:00:00.000', 3, 145.45, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10765, 'QUICK', 3, '1997-12-04 00:00:00.000', '1998-01-01 00:00:00.000', '1997-12-09 00:00:00.000', 3, 42.74, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10766, 'OTTIK', 4, '1997-12-05 00:00:00.000', '1998-01-02 00:00:00.000', '1997-12-09 00:00:00.000', 1, 157.55, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(10767, 'SUPRD', 4, '1997-12-05 00:00:00.000', '1998-01-02 00:00:00.000', '1997-12-15 00:00:00.000', 3, 1.59, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10768, 'AROUT', 3, '1997-12-08 00:00:00.000', '1998-01-05 00:00:00.000', '1997-12-15 00:00:00.000', 2, 146.32, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10769, 'VAFFE', 3, '1997-12-08 00:00:00.000', '1998-01-05 00:00:00.000', '1997-12-12 00:00:00.000', 1, 65.06, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10770, 'HANAR', 8, '1997-12-09 00:00:00.000', '1998-01-06 00:00:00.000', '1997-12-17 00:00:00.000', 3, 5.32, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10771, 'ERNSH', 9, '1997-12-10 00:00:00.000', '1998-01-07 00:00:00.000', '1998-01-02 00:00:00.000', 2, 11.19, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10772, 'LEHMS', 3, '1997-12-10 00:00:00.000', '1998-01-07 00:00:00.000', '1997-12-19 00:00:00.000', 2, 91.28, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10773, 'ERNSH', 1, '1997-12-11 00:00:00.000', '1998-01-08 00:00:00.000', '1997-12-16 00:00:00.000', 3, 96.43, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10774, 'FOLKO', 4, '1997-12-11 00:00:00.000', '1997-12-25 00:00:00.000', '1997-12-12 00:00:00.000', 1, 48.2, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10775, 'THECR', 7, '1997-12-12 00:00:00.000', '1998-01-09 00:00:00.000', '1997-12-26 00:00:00.000', 1, 20.25, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA'),
	(10776, 'ERNSH', 1, '1997-12-15 00:00:00.000', '1998-01-12 00:00:00.000', '1997-12-18 00:00:00.000', 3, 351.53, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10777, 'GOURL', 7, '1997-12-15 00:00:00.000', '1997-12-29 00:00:00.000', '1998-01-21 00:00:00.000', 2, 3.01, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(10778, 'BERGS', 3, '1997-12-16 00:00:00.000', '1998-01-13 00:00:00.000', '1997-12-24 00:00:00.000', 1, 6.79, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10779, 'MORGK', 3, '1997-12-16 00:00:00.000', '1998-01-13 00:00:00.000', '1998-01-14 00:00:00.000', 2, 58.13, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany'),
	(10780, 'LILAS', 2, '1997-12-16 00:00:00.000', '1997-12-30 00:00:00.000', '1997-12-25 00:00:00.000', 1, 42.13, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10781, 'WARTH', 2, '1997-12-17 00:00:00.000', '1998-01-14 00:00:00.000', '1997-12-19 00:00:00.000', 3, 73.16, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(10782, 'CACTU', 9, '1997-12-17 00:00:00.000', '1998-01-14 00:00:00.000', '1997-12-22 00:00:00.000', 3, 1.1, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10783, 'HANAR', 4, '1997-12-18 00:00:00.000', '1998-01-15 00:00:00.000', '1997-12-19 00:00:00.000', 2, 124.98, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10784, 'MAGAA', 4, '1997-12-18 00:00:00.000', '1998-01-15 00:00:00.000', '1997-12-22 00:00:00.000', 3, 70.09, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10785, 'GROSR', 1, '1997-12-18 00:00:00.000', '1998-01-15 00:00:00.000', '1997-12-24 00:00:00.000', 3, 1.51, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela'),
	(10786, 'QUEEN', 8, '1997-12-19 00:00:00.000', '1998-01-16 00:00:00.000', '1997-12-23 00:00:00.000', 1, 110.87, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10787, 'LAMAI', 2, '1997-12-19 00:00:00.000', '1998-01-02 00:00:00.000', '1997-12-26 00:00:00.000', 1, 249.93, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10788, 'QUICK', 1, '1997-12-22 00:00:00.000', '1998-01-19 00:00:00.000', '1998-01-19 00:00:00.000', 2, 42.7, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10789, 'FOLIG', 1, '1997-12-22 00:00:00.000', '1998-01-19 00:00:00.000', '1997-12-31 00:00:00.000', 2, 100.6, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', NULL, '59000', 'France'),
	(10790, 'GOURL', 6, '1997-12-22 00:00:00.000', '1998-01-19 00:00:00.000', '1997-12-26 00:00:00.000', 1, 28.23, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(10791, 'FRANK', 6, '1997-12-23 00:00:00.000', '1998-01-20 00:00:00.000', '1998-01-01 00:00:00.000', 2, 16.85, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10792, 'WOLZA', 1, '1997-12-23 00:00:00.000', '1998-01-20 00:00:00.000', '1997-12-31 00:00:00.000', 3, 23.79, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland'),
	(10793, 'AROUT', 3, '1997-12-24 00:00:00.000', '1998-01-21 00:00:00.000', '1998-01-08 00:00:00.000', 3, 4.52, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10794, 'QUEDE', 6, '1997-12-24 00:00:00.000', '1998-01-21 00:00:00.000', '1998-01-02 00:00:00.000', 1, 21.49, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10795, 'ERNSH', 8, '1997-12-24 00:00:00.000', '1998-01-21 00:00:00.000', '1998-01-20 00:00:00.000', 2, 126.66, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10796, 'HILAA', 3, '1997-12-25 00:00:00.000', '1998-01-22 00:00:00.000', '1998-01-14 00:00:00.000', 1, 26.52, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10797, 'DRACD', 7, '1997-12-25 00:00:00.000', '1998-01-22 00:00:00.000', '1998-01-05 00:00:00.000', 2, 33.35, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany'),
	(10798, 'ISLAT', 2, '1997-12-26 00:00:00.000', '1998-01-23 00:00:00.000', '1998-01-05 00:00:00.000', 1, 2.33, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10799, 'KOENE', 9, '1997-12-26 00:00:00.000', '1998-02-06 00:00:00.000', '1998-01-05 00:00:00.000', 3, 30.76, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10800, 'SEVES', 1, '1997-12-26 00:00:00.000', '1998-01-23 00:00:00.000', '1998-01-05 00:00:00.000', 3, 137.44, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10801, 'BOLID', 4, '1997-12-29 00:00:00.000', '1998-01-26 00:00:00.000', '1997-12-31 00:00:00.000', 2, 97.09, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain'),
	(10802, 'SIMOB', 4, '1997-12-29 00:00:00.000', '1998-01-26 00:00:00.000', '1998-01-02 00:00:00.000', 2, 257.26, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', NULL, '1734', 'Denmark'),
	(10803, 'WELLI', 4, '1997-12-30 00:00:00.000', '1998-01-27 00:00:00.000', '1998-01-06 00:00:00.000', 1, 55.23, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10804, 'SEVES', 6, '1997-12-30 00:00:00.000', '1998-01-27 00:00:00.000', '1998-01-07 00:00:00.000', 2, 27.33, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10805, 'THEBI', 2, '1997-12-30 00:00:00.000', '1998-01-27 00:00:00.000', '1998-01-09 00:00:00.000', 3, 237.34, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA'),
	(10806, 'VICTE', 3, '1997-12-31 00:00:00.000', '1998-01-28 00:00:00.000', '1998-01-05 00:00:00.000', 2, 22.11, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10807, 'FRANS', 4, '1997-12-31 00:00:00.000', '1998-01-28 00:00:00.000', '1998-01-30 00:00:00.000', 1, 1.36, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy'),
	(10808, 'OLDWO', 2, '1998-01-01 00:00:00.000', '1998-01-29 00:00:00.000', '1998-01-09 00:00:00.000', 3, 45.53, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10809, 'WELLI', 7, '1998-01-01 00:00:00.000', '1998-01-29 00:00:00.000', '1998-01-07 00:00:00.000', 1, 4.87, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10810, 'LAUGB', 2, '1998-01-01 00:00:00.000', '1998-01-29 00:00:00.000', '1998-01-07 00:00:00.000', 3, 4.33, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada'),
	(10811, 'LINOD', 8, '1998-01-02 00:00:00.000', '1998-01-30 00:00:00.000', '1998-01-08 00:00:00.000', 1, 31.22, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10812, 'REGGC', 5, '1998-01-02 00:00:00.000', '1998-01-30 00:00:00.000', '1998-01-12 00:00:00.000', 1, 59.78, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10813, 'RICAR', 1, '1998-01-05 00:00:00.000', '1998-02-02 00:00:00.000', '1998-01-09 00:00:00.000', 1, 47.38, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10814, 'VICTE', 3, '1998-01-05 00:00:00.000', '1998-02-02 00:00:00.000', '1998-01-14 00:00:00.000', 3, 130.94, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10815, 'SAVEA', 2, '1998-01-05 00:00:00.000', '1998-02-02 00:00:00.000', '1998-01-14 00:00:00.000', 3, 14.62, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10816, 'GREAL', 4, '1998-01-06 00:00:00.000', '1998-02-03 00:00:00.000', '1998-02-04 00:00:00.000', 2, 719.78, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(10817, 'KOENE', 3, '1998-01-06 00:00:00.000', '1998-01-20 00:00:00.000', '1998-01-13 00:00:00.000', 2, 306.07, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10818, 'MAGAA', 7, '1998-01-07 00:00:00.000', '1998-02-04 00:00:00.000', '1998-01-12 00:00:00.000', 3, 65.48, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10819, 'CACTU', 2, '1998-01-07 00:00:00.000', '1998-02-04 00:00:00.000', '1998-01-16 00:00:00.000', 3, 19.76, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10820, 'RATTC', 3, '1998-01-07 00:00:00.000', '1998-02-04 00:00:00.000', '1998-01-13 00:00:00.000', 2, 37.52, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10821, 'SPLIR', 1, '1998-01-08 00:00:00.000', '1998-02-05 00:00:00.000', '1998-01-15 00:00:00.000', 1, 36.68, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10822, 'TRAIH', 6, '1998-01-08 00:00:00.000', '1998-02-05 00:00:00.000', '1998-01-16 00:00:00.000', 3, 7, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA'),
	(10823, 'LILAS', 5, '1998-01-09 00:00:00.000', '1998-02-06 00:00:00.000', '1998-01-13 00:00:00.000', 2, 163.97, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10824, 'FOLKO', 8, '1998-01-09 00:00:00.000', '1998-02-06 00:00:00.000', '1998-01-30 00:00:00.000', 1, 1.23, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10825, 'DRACD', 1, '1998-01-09 00:00:00.000', '1998-02-06 00:00:00.000', '1998-01-14 00:00:00.000', 1, 79.25, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany'),
	(10826, 'BLONP', 6, '1998-01-12 00:00:00.000', '1998-02-09 00:00:00.000', '1998-02-06 00:00:00.000', 1, 7.09, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'France'),
	(10827, 'BONAP', 1, '1998-01-12 00:00:00.000', '1998-01-26 00:00:00.000', '1998-02-06 00:00:00.000', 2, 63.54, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10828, 'RANCH', 9, '1998-01-13 00:00:00.000', '1998-01-27 00:00:00.000', '1998-02-04 00:00:00.000', 1, 90.85, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10829, 'ISLAT', 9, '1998-01-13 00:00:00.000', '1998-02-10 00:00:00.000', '1998-01-23 00:00:00.000', 1, 154.72, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10830, 'TRADH', 4, '1998-01-13 00:00:00.000', '1998-02-24 00:00:00.000', '1998-01-21 00:00:00.000', 2, 81.83, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil'),
	(10831, 'SANTG', 3, '1998-01-14 00:00:00.000', '1998-02-11 00:00:00.000', '1998-01-23 00:00:00.000', 2, 72.19, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway'),
	(10832, 'LAMAI', 2, '1998-01-14 00:00:00.000', '1998-02-11 00:00:00.000', '1998-01-19 00:00:00.000', 2, 43.26, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10833, 'OTTIK', 6, '1998-01-15 00:00:00.000', '1998-02-12 00:00:00.000', '1998-01-23 00:00:00.000', 2, 71.49, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(10834, 'TRADH', 1, '1998-01-15 00:00:00.000', '1998-02-12 00:00:00.000', '1998-01-19 00:00:00.000', 3, 29.78, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil'),
	(10835, 'ALFKI', 1, '1998-01-15 00:00:00.000', '1998-02-12 00:00:00.000', '1998-01-21 00:00:00.000', 3, 69.53, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany'),
	(10836, 'ERNSH', 7, '1998-01-16 00:00:00.000', '1998-02-13 00:00:00.000', '1998-01-21 00:00:00.000', 1, 411.88, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10837, 'BERGS', 9, '1998-01-16 00:00:00.000', '1998-02-13 00:00:00.000', '1998-01-23 00:00:00.000', 3, 13.32, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10838, 'LINOD', 3, '1998-01-19 00:00:00.000', '1998-02-16 00:00:00.000', '1998-01-23 00:00:00.000', 3, 59.28, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10839, 'TRADH', 3, '1998-01-19 00:00:00.000', '1998-02-16 00:00:00.000', '1998-01-22 00:00:00.000', 3, 35.43, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil'),
	(10840, 'LINOD', 4, '1998-01-19 00:00:00.000', '1998-03-02 00:00:00.000', '1998-02-16 00:00:00.000', 2, 2.71, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10841, 'SUPRD', 5, '1998-01-20 00:00:00.000', '1998-02-17 00:00:00.000', '1998-01-29 00:00:00.000', 2, 424.3, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10842, 'TORTU', 1, '1998-01-20 00:00:00.000', '1998-02-17 00:00:00.000', '1998-01-29 00:00:00.000', 3, 54.42, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10843, 'VICTE', 4, '1998-01-21 00:00:00.000', '1998-02-18 00:00:00.000', '1998-01-26 00:00:00.000', 2, 9.26, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10844, 'PICCO', 8, '1998-01-21 00:00:00.000', '1998-02-18 00:00:00.000', '1998-01-26 00:00:00.000', 2, 25.22, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(10845, 'QUICK', 8, '1998-01-21 00:00:00.000', '1998-02-04 00:00:00.000', '1998-01-30 00:00:00.000', 1, 212.98, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10846, 'SUPRD', 2, '1998-01-22 00:00:00.000', '1998-03-05 00:00:00.000', '1998-01-23 00:00:00.000', 3, 56.46, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10847, 'SAVEA', 4, '1998-01-22 00:00:00.000', '1998-02-05 00:00:00.000', '1998-02-10 00:00:00.000', 3, 487.57, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10848, 'CONSH', 7, '1998-01-23 00:00:00.000', '1998-02-20 00:00:00.000', '1998-01-29 00:00:00.000', 2, 38.24, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', NULL, 'WX1 6LT', 'UK'),
	(10849, 'KOENE', 9, '1998-01-23 00:00:00.000', '1998-02-20 00:00:00.000', '1998-01-30 00:00:00.000', 2, 0.56, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10850, 'VICTE', 1, '1998-01-23 00:00:00.000', '1998-03-06 00:00:00.000', '1998-01-30 00:00:00.000', 1, 49.19, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France'),
	(10851, 'RICAR', 5, '1998-01-26 00:00:00.000', '1998-02-23 00:00:00.000', '1998-02-02 00:00:00.000', 1, 160.55, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10852, 'RATTC', 8, '1998-01-26 00:00:00.000', '1998-02-09 00:00:00.000', '1998-01-30 00:00:00.000', 1, 174.05, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10853, 'BLAUS', 9, '1998-01-27 00:00:00.000', '1998-02-24 00:00:00.000', '1998-02-03 00:00:00.000', 2, 53.83, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany'),
	(10854, 'ERNSH', 3, '1998-01-27 00:00:00.000', '1998-02-24 00:00:00.000', '1998-02-05 00:00:00.000', 2, 100.22, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10855, 'OLDWO', 3, '1998-01-27 00:00:00.000', '1998-02-24 00:00:00.000', '1998-02-04 00:00:00.000', 1, 170.97, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10856, 'ANTON', 3, '1998-01-28 00:00:00.000', '1998-02-25 00:00:00.000', '1998-02-10 00:00:00.000', 2, 58.43, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'Mexico'),
	(10857, 'BERGS', 8, '1998-01-28 00:00:00.000', '1998-02-25 00:00:00.000', '1998-02-06 00:00:00.000', 2, 188.85, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10858, 'LACOR', 2, '1998-01-29 00:00:00.000', '1998-02-26 00:00:00.000', '1998-02-03 00:00:00.000', 1, 52.51, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France'),
	(10859, 'FRANK', 1, '1998-01-29 00:00:00.000', '1998-02-26 00:00:00.000', '1998-02-02 00:00:00.000', 2, 76.1, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10860, 'FRANR', 3, '1998-01-29 00:00:00.000', '1998-02-26 00:00:00.000', '1998-02-04 00:00:00.000', 3, 19.26, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France'),
	(10861, 'WHITC', 4, '1998-01-30 00:00:00.000', '1998-02-27 00:00:00.000', '1998-02-17 00:00:00.000', 2, 14.93, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10862, 'LEHMS', 8, '1998-01-30 00:00:00.000', '1998-03-13 00:00:00.000', '1998-02-02 00:00:00.000', 2, 53.23, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10863, 'HILAA', 4, '1998-02-02 00:00:00.000', '1998-03-02 00:00:00.000', '1998-02-17 00:00:00.000', 2, 30.26, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10864, 'AROUT', 4, '1998-02-02 00:00:00.000', '1998-03-02 00:00:00.000', '1998-02-09 00:00:00.000', 2, 3.04, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10865, 'QUICK', 2, '1998-02-02 00:00:00.000', '1998-02-16 00:00:00.000', '1998-02-12 00:00:00.000', 1, 348.14, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10866, 'BERGS', 5, '1998-02-03 00:00:00.000', '1998-03-03 00:00:00.000', '1998-02-12 00:00:00.000', 1, 109.11, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10867, 'LONEP', 6, '1998-02-03 00:00:00.000', '1998-03-17 00:00:00.000', '1998-02-11 00:00:00.000', 1, 1.93, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA'),
	(10868, 'QUEEN', 7, '1998-02-04 00:00:00.000', '1998-03-04 00:00:00.000', '1998-02-23 00:00:00.000', 2, 191.27, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10869, 'SEVES', 5, '1998-02-04 00:00:00.000', '1998-03-04 00:00:00.000', '1998-02-09 00:00:00.000', 1, 143.28, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK'),
	(10870, 'WOLZA', 5, '1998-02-04 00:00:00.000', '1998-03-04 00:00:00.000', '1998-02-13 00:00:00.000', 3, 12.04, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland'),
	(10871, 'BONAP', 9, '1998-02-05 00:00:00.000', '1998-03-05 00:00:00.000', '1998-02-10 00:00:00.000', 2, 112.27, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10872, 'GODOS', 5, '1998-02-05 00:00:00.000', '1998-03-05 00:00:00.000', '1998-02-09 00:00:00.000', 2, 175.32, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(10873, 'WILMK', 4, '1998-02-06 00:00:00.000', '1998-03-06 00:00:00.000', '1998-02-09 00:00:00.000', 1, 0.82, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland'),
	(10874, 'GODOS', 5, '1998-02-06 00:00:00.000', '1998-03-06 00:00:00.000', '1998-02-11 00:00:00.000', 2, 19.58, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(10875, 'BERGS', 4, '1998-02-06 00:00:00.000', '1998-03-06 00:00:00.000', '1998-03-03 00:00:00.000', 2, 32.37, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10876, 'BONAP', 7, '1998-02-09 00:00:00.000', '1998-03-09 00:00:00.000', '1998-02-12 00:00:00.000', 3, 60.42, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10877, 'RICAR', 1, '1998-02-09 00:00:00.000', '1998-03-09 00:00:00.000', '1998-02-19 00:00:00.000', 1, 38.06, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(10878, 'QUICK', 4, '1998-02-10 00:00:00.000', '1998-03-10 00:00:00.000', '1998-02-12 00:00:00.000', 1, 46.69, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10879, 'WILMK', 3, '1998-02-10 00:00:00.000', '1998-03-10 00:00:00.000', '1998-02-12 00:00:00.000', 3, 8.5, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland'),
	(10880, 'FOLKO', 7, '1998-02-10 00:00:00.000', '1998-03-24 00:00:00.000', '1998-02-18 00:00:00.000', 1, 88.01, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10881, 'CACTU', 4, '1998-02-11 00:00:00.000', '1998-03-11 00:00:00.000', '1998-02-18 00:00:00.000', 1, 2.84, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10882, 'SAVEA', 4, '1998-02-11 00:00:00.000', '1998-03-11 00:00:00.000', '1998-02-20 00:00:00.000', 3, 23.1, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10883, 'LONEP', 8, '1998-02-12 00:00:00.000', '1998-03-12 00:00:00.000', '1998-02-20 00:00:00.000', 3, 0.53, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA'),
	(10884, 'LETSS', 4, '1998-02-12 00:00:00.000', '1998-03-12 00:00:00.000', '1998-02-13 00:00:00.000', 2, 90.97, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA'),
	(10885, 'SUPRD', 6, '1998-02-12 00:00:00.000', '1998-03-12 00:00:00.000', '1998-02-18 00:00:00.000', 3, 5.64, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10886, 'HANAR', 1, '1998-02-13 00:00:00.000', '1998-03-13 00:00:00.000', '1998-03-02 00:00:00.000', 1, 4.99, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10887, 'GALED', 8, '1998-02-13 00:00:00.000', '1998-03-13 00:00:00.000', '1998-02-16 00:00:00.000', 3, 1.25, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', NULL, '8022', 'Spain'),
	(10888, 'GODOS', 1, '1998-02-16 00:00:00.000', '1998-03-16 00:00:00.000', '1998-02-23 00:00:00.000', 2, 51.87, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(10889, 'RATTC', 9, '1998-02-16 00:00:00.000', '1998-03-16 00:00:00.000', '1998-02-23 00:00:00.000', 3, 280.61, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10890, 'DUMON', 7, '1998-02-16 00:00:00.000', '1998-03-16 00:00:00.000', '1998-02-18 00:00:00.000', 1, 32.76, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France'),
	(10891, 'LEHMS', 7, '1998-02-17 00:00:00.000', '1998-03-17 00:00:00.000', '1998-02-19 00:00:00.000', 2, 20.37, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10892, 'MAISD', 4, '1998-02-17 00:00:00.000', '1998-03-17 00:00:00.000', '1998-02-19 00:00:00.000', 2, 120.27, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium'),
	(10893, 'KOENE', 9, '1998-02-18 00:00:00.000', '1998-03-18 00:00:00.000', '1998-02-20 00:00:00.000', 2, 77.78, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(10894, 'SAVEA', 1, '1998-02-18 00:00:00.000', '1998-03-18 00:00:00.000', '1998-02-20 00:00:00.000', 1, 116.13, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10895, 'ERNSH', 3, '1998-02-18 00:00:00.000', '1998-03-18 00:00:00.000', '1998-02-23 00:00:00.000', 1, 162.75, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10896, 'MAISD', 7, '1998-02-19 00:00:00.000', '1998-03-19 00:00:00.000', '1998-02-27 00:00:00.000', 3, 32.45, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium'),
	(10897, 'HUNGO', 3, '1998-02-19 00:00:00.000', '1998-03-19 00:00:00.000', '1998-02-25 00:00:00.000', 2, 603.54, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10898, 'OCEAN', 4, '1998-02-20 00:00:00.000', '1998-03-20 00:00:00.000', '1998-03-06 00:00:00.000', 2, 1.27, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10899, 'LILAS', 5, '1998-02-20 00:00:00.000', '1998-03-20 00:00:00.000', '1998-02-26 00:00:00.000', 3, 1.21, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10900, 'WELLI', 1, '1998-02-20 00:00:00.000', '1998-03-20 00:00:00.000', '1998-03-04 00:00:00.000', 2, 1.66, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10901, 'HILAA', 4, '1998-02-23 00:00:00.000', '1998-03-23 00:00:00.000', '1998-02-26 00:00:00.000', 1, 62.09, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10902, 'FOLKO', 1, '1998-02-23 00:00:00.000', '1998-03-23 00:00:00.000', '1998-03-03 00:00:00.000', 1, 44.15, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10903, 'HANAR', 3, '1998-02-24 00:00:00.000', '1998-03-24 00:00:00.000', '1998-03-04 00:00:00.000', 3, 36.71, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10904, 'WHITC', 3, '1998-02-24 00:00:00.000', '1998-03-24 00:00:00.000', '1998-02-27 00:00:00.000', 3, 162.95, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(10905, 'WELLI', 9, '1998-02-24 00:00:00.000', '1998-03-24 00:00:00.000', '1998-03-06 00:00:00.000', 2, 13.72, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10906, 'WOLZA', 4, '1998-02-25 00:00:00.000', '1998-03-11 00:00:00.000', '1998-03-03 00:00:00.000', 3, 26.29, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland'),
	(10907, 'SPECD', 6, '1998-02-25 00:00:00.000', '1998-03-25 00:00:00.000', '1998-02-27 00:00:00.000', 3, 9.19, 'Spécialités du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France'),
	(10908, 'REGGC', 4, '1998-02-26 00:00:00.000', '1998-03-26 00:00:00.000', '1998-03-06 00:00:00.000', 2, 32.96, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10909, 'SANTG', 1, '1998-02-26 00:00:00.000', '1998-03-26 00:00:00.000', '1998-03-10 00:00:00.000', 2, 53.05, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway'),
	(10910, 'WILMK', 1, '1998-02-26 00:00:00.000', '1998-03-26 00:00:00.000', '1998-03-04 00:00:00.000', 3, 38.11, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland'),
	(10911, 'GODOS', 3, '1998-02-26 00:00:00.000', '1998-03-26 00:00:00.000', '1998-03-05 00:00:00.000', 1, 38.19, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(10912, 'HUNGO', 2, '1998-02-26 00:00:00.000', '1998-03-26 00:00:00.000', '1998-03-18 00:00:00.000', 2, 580.91, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10913, 'QUEEN', 4, '1998-02-26 00:00:00.000', '1998-03-26 00:00:00.000', '1998-03-04 00:00:00.000', 1, 33.05, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10914, 'QUEEN', 6, '1998-02-27 00:00:00.000', '1998-03-27 00:00:00.000', '1998-03-02 00:00:00.000', 1, 21.19, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10915, 'TORTU', 2, '1998-02-27 00:00:00.000', '1998-03-27 00:00:00.000', '1998-03-02 00:00:00.000', 2, 3.51, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(10916, 'RANCH', 1, '1998-02-27 00:00:00.000', '1998-03-27 00:00:00.000', '1998-03-09 00:00:00.000', 2, 63.77, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10917, 'ROMEY', 4, '1998-03-02 00:00:00.000', '1998-03-30 00:00:00.000', '1998-03-11 00:00:00.000', 2, 8.29, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'Spain'),
	(10918, 'BOTTM', 3, '1998-03-02 00:00:00.000', '1998-03-30 00:00:00.000', '1998-03-11 00:00:00.000', 3, 48.83, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10919, 'LINOD', 2, '1998-03-02 00:00:00.000', '1998-03-30 00:00:00.000', '1998-03-04 00:00:00.000', 2, 19.8, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10920, 'AROUT', 4, '1998-03-03 00:00:00.000', '1998-03-31 00:00:00.000', '1998-03-09 00:00:00.000', 2, 29.61, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10921, 'VAFFE', 1, '1998-03-03 00:00:00.000', '1998-04-14 00:00:00.000', '1998-03-09 00:00:00.000', 1, 176.48, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10922, 'HANAR', 5, '1998-03-03 00:00:00.000', '1998-03-31 00:00:00.000', '1998-03-05 00:00:00.000', 3, 62.74, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10923, 'LAMAI', 7, '1998-03-03 00:00:00.000', '1998-04-14 00:00:00.000', '1998-03-13 00:00:00.000', 3, 68.26, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(10924, 'BERGS', 3, '1998-03-04 00:00:00.000', '1998-04-01 00:00:00.000', '1998-04-08 00:00:00.000', 2, 151.52, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Sweden'),
	(10925, 'HANAR', 3, '1998-03-04 00:00:00.000', '1998-04-01 00:00:00.000', '1998-03-13 00:00:00.000', 1, 2.27, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10926, 'ANATR', 4, '1998-03-04 00:00:00.000', '1998-04-01 00:00:00.000', '1998-03-11 00:00:00.000', 3, 39.92, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'Mexico'),
	(10927, 'LACOR', 4, '1998-03-05 00:00:00.000', '1998-04-02 00:00:00.000', '1998-04-08 00:00:00.000', 1, 19.79, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France'),
	(10928, 'GALED', 1, '1998-03-05 00:00:00.000', '1998-04-02 00:00:00.000', '1998-03-18 00:00:00.000', 1, 1.36, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', NULL, '8022', 'Spain'),
	(10929, 'FRANK', 6, '1998-03-05 00:00:00.000', '1998-04-02 00:00:00.000', '1998-03-12 00:00:00.000', 1, 33.93, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(10930, 'SUPRD', 4, '1998-03-06 00:00:00.000', '1998-04-17 00:00:00.000', '1998-03-18 00:00:00.000', 3, 15.55, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(10931, 'RICSU', 4, '1998-03-06 00:00:00.000', '1998-03-20 00:00:00.000', '1998-03-19 00:00:00.000', 2, 13.6, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(10932, 'BONAP', 8, '1998-03-06 00:00:00.000', '1998-04-03 00:00:00.000', '1998-03-24 00:00:00.000', 1, 134.64, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10933, 'ISLAT', 6, '1998-03-06 00:00:00.000', '1998-04-03 00:00:00.000', '1998-03-16 00:00:00.000', 3, 54.15, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK'),
	(10934, 'LEHMS', 3, '1998-03-09 00:00:00.000', '1998-04-06 00:00:00.000', '1998-03-12 00:00:00.000', 3, 32.01, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(10935, 'WELLI', 4, '1998-03-09 00:00:00.000', '1998-04-06 00:00:00.000', '1998-03-18 00:00:00.000', 3, 47.59, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil'),
	(10936, 'GREAL', 3, '1998-03-09 00:00:00.000', '1998-04-06 00:00:00.000', '1998-03-18 00:00:00.000', 2, 33.68, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(10937, 'CACTU', 7, '1998-03-10 00:00:00.000', '1998-03-24 00:00:00.000', '1998-03-13 00:00:00.000', 3, 31.51, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10938, 'QUICK', 3, '1998-03-10 00:00:00.000', '1998-04-07 00:00:00.000', '1998-03-16 00:00:00.000', 2, 31.89, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10939, 'MAGAA', 2, '1998-03-10 00:00:00.000', '1998-04-07 00:00:00.000', '1998-03-13 00:00:00.000', 2, 76.33, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10940, 'BONAP', 8, '1998-03-11 00:00:00.000', '1998-04-08 00:00:00.000', '1998-03-23 00:00:00.000', 3, 19.77, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(10941, 'SAVEA', 7, '1998-03-11 00:00:00.000', '1998-04-08 00:00:00.000', '1998-03-20 00:00:00.000', 2, 400.81, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10942, 'REGGC', 9, '1998-03-11 00:00:00.000', '1998-04-08 00:00:00.000', '1998-03-18 00:00:00.000', 3, 17.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(10943, 'BSBEV', 4, '1998-03-11 00:00:00.000', '1998-04-08 00:00:00.000', '1998-03-19 00:00:00.000', 2, 2.17, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10944, 'BOTTM', 6, '1998-03-12 00:00:00.000', '1998-03-26 00:00:00.000', '1998-03-13 00:00:00.000', 3, 52.92, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10945, 'MORGK', 4, '1998-03-12 00:00:00.000', '1998-04-09 00:00:00.000', '1998-03-18 00:00:00.000', 1, 10.22, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany'),
	(10946, 'VAFFE', 1, '1998-03-12 00:00:00.000', '1998-04-09 00:00:00.000', '1998-03-19 00:00:00.000', 2, 27.2, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10947, 'BSBEV', 3, '1998-03-13 00:00:00.000', '1998-04-10 00:00:00.000', '1998-03-16 00:00:00.000', 2, 3.26, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(10948, 'GODOS', 3, '1998-03-13 00:00:00.000', '1998-04-10 00:00:00.000', '1998-03-19 00:00:00.000', 3, 23.39, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(10949, 'BOTTM', 2, '1998-03-13 00:00:00.000', '1998-04-10 00:00:00.000', '1998-03-17 00:00:00.000', 3, 74.44, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10950, 'MAGAA', 1, '1998-03-16 00:00:00.000', '1998-04-13 00:00:00.000', '1998-03-23 00:00:00.000', 2, 2.5, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy'),
	(10951, 'RICSU', 9, '1998-03-16 00:00:00.000', '1998-04-27 00:00:00.000', '1998-04-07 00:00:00.000', 2, 30.85, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(10952, 'ALFKI', 1, '1998-03-16 00:00:00.000', '1998-04-27 00:00:00.000', '1998-03-24 00:00:00.000', 1, 40.42, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany'),
	(10953, 'AROUT', 9, '1998-03-16 00:00:00.000', '1998-03-30 00:00:00.000', '1998-03-25 00:00:00.000', 2, 23.72, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(10954, 'LINOD', 5, '1998-03-17 00:00:00.000', '1998-04-28 00:00:00.000', '1998-03-20 00:00:00.000', 1, 27.91, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(10955, 'FOLKO', 8, '1998-03-17 00:00:00.000', '1998-04-14 00:00:00.000', '1998-03-20 00:00:00.000', 2, 3.26, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10956, 'BLAUS', 6, '1998-03-17 00:00:00.000', '1998-04-28 00:00:00.000', '1998-03-20 00:00:00.000', 2, 44.65, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany'),
	(10957, 'HILAA', 8, '1998-03-18 00:00:00.000', '1998-04-15 00:00:00.000', '1998-03-27 00:00:00.000', 3, 105.36, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10958, 'OCEAN', 7, '1998-03-18 00:00:00.000', '1998-04-15 00:00:00.000', '1998-03-27 00:00:00.000', 2, 49.56, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10959, 'GOURL', 6, '1998-03-18 00:00:00.000', '1998-04-29 00:00:00.000', '1998-03-23 00:00:00.000', 2, 4.98, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(10960, 'HILAA', 3, '1998-03-19 00:00:00.000', '1998-04-02 00:00:00.000', '1998-04-08 00:00:00.000', 1, 2.08, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10961, 'QUEEN', 8, '1998-03-19 00:00:00.000', '1998-04-16 00:00:00.000', '1998-03-30 00:00:00.000', 1, 104.47, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(10962, 'QUICK', 8, '1998-03-19 00:00:00.000', '1998-04-16 00:00:00.000', '1998-03-23 00:00:00.000', 2, 275.79, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10963, 'FURIB', 9, '1998-03-19 00:00:00.000', '1998-04-16 00:00:00.000', '1998-03-26 00:00:00.000', 3, 2.7, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
	(10964, 'SPECD', 3, '1998-03-20 00:00:00.000', '1998-04-17 00:00:00.000', '1998-03-24 00:00:00.000', 2, 87.38, 'Spécialités du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France'),
	(10965, 'OLDWO', 6, '1998-03-20 00:00:00.000', '1998-04-17 00:00:00.000', '1998-03-30 00:00:00.000', 3, 144.38, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(10966, 'CHOPS', 4, '1998-03-20 00:00:00.000', '1998-04-17 00:00:00.000', '1998-04-08 00:00:00.000', 1, 27.19, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
	(10967, 'TOMSP', 2, '1998-03-23 00:00:00.000', '1998-04-20 00:00:00.000', '1998-04-02 00:00:00.000', 2, 62.22, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Germany'),
	(10968, 'ERNSH', 1, '1998-03-23 00:00:00.000', '1998-04-20 00:00:00.000', '1998-04-01 00:00:00.000', 3, 74.6, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10969, 'COMMI', 1, '1998-03-23 00:00:00.000', '1998-04-20 00:00:00.000', '1998-03-30 00:00:00.000', 2, 0.21, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil'),
	(10970, 'BOLID', 9, '1998-03-24 00:00:00.000', '1998-04-07 00:00:00.000', '1998-04-24 00:00:00.000', 1, 16.16, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain'),
	(10971, 'FRANR', 2, '1998-03-24 00:00:00.000', '1998-04-21 00:00:00.000', '1998-04-02 00:00:00.000', 2, 121.82, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France'),
	(10972, 'LACOR', 4, '1998-03-24 00:00:00.000', '1998-04-21 00:00:00.000', '1998-03-26 00:00:00.000', 2, 0.02, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France'),
	(10973, 'LACOR', 6, '1998-03-24 00:00:00.000', '1998-04-21 00:00:00.000', '1998-03-27 00:00:00.000', 2, 15.17, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', NULL, '78000', 'France'),
	(10974, 'SPLIR', 3, '1998-03-25 00:00:00.000', '1998-04-08 00:00:00.000', '1998-04-03 00:00:00.000', 3, 12.96, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA'),
	(10975, 'BOTTM', 1, '1998-03-25 00:00:00.000', '1998-04-22 00:00:00.000', '1998-03-27 00:00:00.000', 3, 32.27, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10976, 'HILAA', 1, '1998-03-25 00:00:00.000', '1998-05-06 00:00:00.000', '1998-04-03 00:00:00.000', 1, 37.97, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(10977, 'FOLKO', 8, '1998-03-26 00:00:00.000', '1998-04-23 00:00:00.000', '1998-04-10 00:00:00.000', 3, 208.5, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10978, 'MAISD', 9, '1998-03-26 00:00:00.000', '1998-04-23 00:00:00.000', '1998-04-23 00:00:00.000', 2, 32.82, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium'),
	(10979, 'ERNSH', 8, '1998-03-26 00:00:00.000', '1998-04-23 00:00:00.000', '1998-03-31 00:00:00.000', 2, 353.07, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10980, 'FOLKO', 4, '1998-03-27 00:00:00.000', '1998-05-08 00:00:00.000', '1998-04-17 00:00:00.000', 1, 1.26, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10981, 'HANAR', 1, '1998-03-27 00:00:00.000', '1998-04-24 00:00:00.000', '1998-04-02 00:00:00.000', 2, 193.37, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(10982, 'BOTTM', 2, '1998-03-27 00:00:00.000', '1998-04-24 00:00:00.000', '1998-04-08 00:00:00.000', 1, 14.01, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(10983, 'SAVEA', 2, '1998-03-27 00:00:00.000', '1998-04-24 00:00:00.000', '1998-04-06 00:00:00.000', 2, 657.54, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10984, 'SAVEA', 1, '1998-03-30 00:00:00.000', '1998-04-27 00:00:00.000', '1998-04-03 00:00:00.000', 3, 211.22, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(10985, 'HUNGO', 2, '1998-03-30 00:00:00.000', '1998-04-27 00:00:00.000', '1998-04-02 00:00:00.000', 1, 91.51, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(10986, 'OCEAN', 8, '1998-03-30 00:00:00.000', '1998-04-27 00:00:00.000', '1998-04-21 00:00:00.000', 2, 217.86, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(10987, 'EASTC', 8, '1998-03-31 00:00:00.000', '1998-04-28 00:00:00.000', '1998-04-06 00:00:00.000', 1, 185.48, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK'),
	(10988, 'RATTC', 3, '1998-03-31 00:00:00.000', '1998-04-28 00:00:00.000', '1998-04-10 00:00:00.000', 2, 61.14, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(10989, 'QUEDE', 2, '1998-03-31 00:00:00.000', '1998-04-28 00:00:00.000', '1998-04-02 00:00:00.000', 1, 34.76, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil'),
	(10990, 'ERNSH', 2, '1998-04-01 00:00:00.000', '1998-05-13 00:00:00.000', '1998-04-07 00:00:00.000', 3, 117.61, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(10991, 'QUICK', 1, '1998-04-01 00:00:00.000', '1998-04-29 00:00:00.000', '1998-04-07 00:00:00.000', 1, 38.51, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10992, 'THEBI', 1, '1998-04-01 00:00:00.000', '1998-04-29 00:00:00.000', '1998-04-03 00:00:00.000', 3, 4.27, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA'),
	(10993, 'FOLKO', 7, '1998-04-01 00:00:00.000', '1998-04-29 00:00:00.000', '1998-04-10 00:00:00.000', 3, 8.81, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(10994, 'VAFFE', 2, '1998-04-02 00:00:00.000', '1998-04-16 00:00:00.000', '1998-04-09 00:00:00.000', 3, 65.53, 'Vaffeljernet', 'Smagsloget 45', 'Århus', NULL, '8200', 'Denmark'),
	(10995, 'PERIC', 1, '1998-04-02 00:00:00.000', '1998-04-30 00:00:00.000', '1998-04-06 00:00:00.000', 3, 46, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'Mexico'),
	(10996, 'QUICK', 4, '1998-04-02 00:00:00.000', '1998-04-30 00:00:00.000', '1998-04-10 00:00:00.000', 2, 1.12, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(10997, 'LILAS', 8, '1998-04-03 00:00:00.000', '1998-05-15 00:00:00.000', '1998-04-13 00:00:00.000', 2, 73.91, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(10998, 'WOLZA', 8, '1998-04-03 00:00:00.000', '1998-04-17 00:00:00.000', '1998-04-17 00:00:00.000', 2, 20.31, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland'),
	(10999, 'OTTIK', 6, '1998-04-03 00:00:00.000', '1998-05-01 00:00:00.000', '1998-04-10 00:00:00.000', 2, 96.35, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(11000, 'RATTC', 2, '1998-04-06 00:00:00.000', '1998-05-04 00:00:00.000', '1998-04-14 00:00:00.000', 3, 55.12, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA'),
	(11001, 'FOLKO', 2, '1998-04-06 00:00:00.000', '1998-05-04 00:00:00.000', '1998-04-14 00:00:00.000', 2, 197.3, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(11002, 'SAVEA', 4, '1998-04-06 00:00:00.000', '1998-05-04 00:00:00.000', '1998-04-16 00:00:00.000', 1, 141.16, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(11003, 'THECR', 3, '1998-04-06 00:00:00.000', '1998-05-04 00:00:00.000', '1998-04-08 00:00:00.000', 3, 14.91, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA'),
	(11004, 'MAISD', 3, '1998-04-07 00:00:00.000', '1998-05-05 00:00:00.000', '1998-04-20 00:00:00.000', 1, 44.84, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium'),
	(11005, 'WILMK', 2, '1998-04-07 00:00:00.000', '1998-05-05 00:00:00.000', '1998-04-10 00:00:00.000', 1, 0.75, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland'),
	(11006, 'GREAL', 3, '1998-04-07 00:00:00.000', '1998-05-05 00:00:00.000', '1998-04-15 00:00:00.000', 2, 25.19, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(11007, 'PRINI', 8, '1998-04-08 00:00:00.000', '1998-05-06 00:00:00.000', '1998-04-13 00:00:00.000', 2, 202.24, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
	(11008, 'ERNSH', 7, '1998-04-08 00:00:00.000', '1998-05-06 00:00:00.000', NULL, 3, 79.46, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(11009, 'GODOS', 2, '1998-04-08 00:00:00.000', '1998-05-06 00:00:00.000', '1998-04-10 00:00:00.000', 1, 59.11, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(11010, 'REGGC', 2, '1998-04-09 00:00:00.000', '1998-05-07 00:00:00.000', '1998-04-21 00:00:00.000', 2, 28.71, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(11011, 'ALFKI', 3, '1998-04-09 00:00:00.000', '1998-05-07 00:00:00.000', '1998-04-13 00:00:00.000', 1, 1.21, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany'),
	(11012, 'FRANK', 1, '1998-04-09 00:00:00.000', '1998-04-23 00:00:00.000', '1998-04-17 00:00:00.000', 3, 242.95, 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Germany'),
	(11013, 'ROMEY', 2, '1998-04-09 00:00:00.000', '1998-05-07 00:00:00.000', '1998-04-10 00:00:00.000', 1, 32.99, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'Spain'),
	(11014, 'LINOD', 2, '1998-04-10 00:00:00.000', '1998-05-08 00:00:00.000', '1998-04-15 00:00:00.000', 3, 23.6, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(11015, 'SANTG', 2, '1998-04-10 00:00:00.000', '1998-04-24 00:00:00.000', '1998-04-20 00:00:00.000', 2, 4.62, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway'),
	(11016, 'AROUT', 9, '1998-04-10 00:00:00.000', '1998-05-08 00:00:00.000', '1998-04-13 00:00:00.000', 2, 33.8, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK'),
	(11017, 'ERNSH', 9, '1998-04-13 00:00:00.000', '1998-05-11 00:00:00.000', '1998-04-20 00:00:00.000', 2, 754.26, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(11018, 'LONEP', 4, '1998-04-13 00:00:00.000', '1998-05-11 00:00:00.000', '1998-04-16 00:00:00.000', 2, 11.65, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA'),
	(11019, 'RANCH', 6, '1998-04-13 00:00:00.000', '1998-05-11 00:00:00.000', NULL, 3, 3.17, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(11020, 'OTTIK', 2, '1998-04-14 00:00:00.000', '1998-05-12 00:00:00.000', '1998-04-16 00:00:00.000', 2, 43.3, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Germany'),
	(11021, 'QUICK', 3, '1998-04-14 00:00:00.000', '1998-05-12 00:00:00.000', '1998-04-21 00:00:00.000', 1, 297.18, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Germany'),
	(11022, 'HANAR', 9, '1998-04-14 00:00:00.000', '1998-05-12 00:00:00.000', '1998-05-04 00:00:00.000', 2, 6.27, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(11023, 'BSBEV', 1, '1998-04-14 00:00:00.000', '1998-04-28 00:00:00.000', '1998-04-24 00:00:00.000', 2, 123.83, 'B''s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK'),
	(11024, 'EASTC', 4, '1998-04-15 00:00:00.000', '1998-05-13 00:00:00.000', '1998-04-20 00:00:00.000', 1, 74.36, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK'),
	(11025, 'WARTH', 6, '1998-04-15 00:00:00.000', '1998-05-13 00:00:00.000', '1998-04-24 00:00:00.000', 3, 29.17, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland'),
	(11026, 'FRANS', 4, '1998-04-15 00:00:00.000', '1998-05-13 00:00:00.000', '1998-04-28 00:00:00.000', 1, 47.09, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy'),
	(11027, 'BOTTM', 1, '1998-04-16 00:00:00.000', '1998-05-14 00:00:00.000', '1998-04-20 00:00:00.000', 1, 52.52, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(11028, 'KOENE', 2, '1998-04-16 00:00:00.000', '1998-05-14 00:00:00.000', '1998-04-22 00:00:00.000', 1, 29.59, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany'),
	(11029, 'CHOPS', 4, '1998-04-16 00:00:00.000', '1998-05-14 00:00:00.000', '1998-04-27 00:00:00.000', 1, 47.84, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
	(11030, 'SAVEA', 7, '1998-04-17 00:00:00.000', '1998-05-15 00:00:00.000', '1998-04-27 00:00:00.000', 2, 830.75, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(11031, 'SAVEA', 6, '1998-04-17 00:00:00.000', '1998-05-15 00:00:00.000', '1998-04-24 00:00:00.000', 2, 227.22, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(11032, 'WHITC', 2, '1998-04-17 00:00:00.000', '1998-05-15 00:00:00.000', '1998-04-23 00:00:00.000', 3, 606.19, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(11033, 'RICSU', 7, '1998-04-17 00:00:00.000', '1998-05-15 00:00:00.000', '1998-04-23 00:00:00.000', 3, 84.74, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(11034, 'OLDWO', 8, '1998-04-20 00:00:00.000', '1998-06-01 00:00:00.000', '1998-04-27 00:00:00.000', 1, 40.32, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA'),
	(11035, 'SUPRD', 2, '1998-04-20 00:00:00.000', '1998-05-18 00:00:00.000', '1998-04-24 00:00:00.000', 2, 0.17, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(11036, 'DRACD', 8, '1998-04-20 00:00:00.000', '1998-05-18 00:00:00.000', '1998-04-22 00:00:00.000', 3, 149.47, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany'),
	(11037, 'GODOS', 7, '1998-04-21 00:00:00.000', '1998-05-19 00:00:00.000', '1998-04-27 00:00:00.000', 1, 3.2, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain'),
	(11038, 'SUPRD', 1, '1998-04-21 00:00:00.000', '1998-05-19 00:00:00.000', '1998-04-30 00:00:00.000', 2, 29.59, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium'),
	(11039, 'LINOD', 1, '1998-04-21 00:00:00.000', '1998-05-19 00:00:00.000', NULL, 2, 65, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
	(11040, 'GREAL', 4, '1998-04-22 00:00:00.000', '1998-05-20 00:00:00.000', NULL, 3, 18.84, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(11041, 'CHOPS', 3, '1998-04-22 00:00:00.000', '1998-05-20 00:00:00.000', '1998-04-28 00:00:00.000', 2, 48.22, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland'),
	(11042, 'COMMI', 2, '1998-04-22 00:00:00.000', '1998-05-06 00:00:00.000', '1998-05-01 00:00:00.000', 1, 29.99, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil'),
	(11043, 'SPECD', 5, '1998-04-22 00:00:00.000', '1998-05-20 00:00:00.000', '1998-04-29 00:00:00.000', 2, 8.8, 'Spécialités du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France'),
	(11044, 'WOLZA', 4, '1998-04-23 00:00:00.000', '1998-05-21 00:00:00.000', '1998-05-01 00:00:00.000', 1, 8.72, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland'),
	(11045, 'BOTTM', 6, '1998-04-23 00:00:00.000', '1998-05-21 00:00:00.000', NULL, 2, 70.58, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(11046, 'WANDK', 8, '1998-04-23 00:00:00.000', '1998-05-21 00:00:00.000', '1998-04-24 00:00:00.000', 2, 71.64, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany'),
	(11047, 'EASTC', 7, '1998-04-24 00:00:00.000', '1998-05-22 00:00:00.000', '1998-05-01 00:00:00.000', 3, 46.62, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK'),
	(11048, 'BOTTM', 7, '1998-04-24 00:00:00.000', '1998-05-22 00:00:00.000', '1998-04-30 00:00:00.000', 3, 24.12, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada'),
	(11049, 'GOURL', 3, '1998-04-24 00:00:00.000', '1998-05-22 00:00:00.000', '1998-05-04 00:00:00.000', 1, 8.34, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil'),
	(11050, 'FOLKO', 8, '1998-04-27 00:00:00.000', '1998-05-25 00:00:00.000', '1998-05-05 00:00:00.000', 2, 59.41, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Sweden'),
	(11051, 'LAMAI', 7, '1998-04-27 00:00:00.000', '1998-05-25 00:00:00.000', NULL, 3, 2.79, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France'),
	(11052, 'HANAR', 3, '1998-04-27 00:00:00.000', '1998-05-25 00:00:00.000', '1998-05-01 00:00:00.000', 1, 67.26, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil'),
	(11053, 'PICCO', 2, '1998-04-27 00:00:00.000', '1998-05-25 00:00:00.000', '1998-04-29 00:00:00.000', 2, 53.05, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
	(11054, 'CACTU', 8, '1998-04-28 00:00:00.000', '1998-05-26 00:00:00.000', NULL, 1, 0.33, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
	(11055, 'HILAA', 7, '1998-04-28 00:00:00.000', '1998-05-26 00:00:00.000', '1998-05-05 00:00:00.000', 2, 120.92, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
	(11056, 'EASTC', 8, '1998-04-28 00:00:00.000', '1998-05-12 00:00:00.000', '1998-05-01 00:00:00.000', 2, 278.96, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK'),
	(11057, 'NORTS', 3, '1998-04-29 00:00:00.000', '1998-05-27 00:00:00.000', '1998-05-01 00:00:00.000', 3, 4.13, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK'),
	(11058, 'BLAUS', 9, '1998-04-29 00:00:00.000', '1998-05-27 00:00:00.000', NULL, 3, 31.14, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany'),
	(11059, 'RICAR', 2, '1998-04-29 00:00:00.000', '1998-06-10 00:00:00.000', NULL, 2, 85.8, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil'),
	(11060, 'FRANS', 2, '1998-04-30 00:00:00.000', '1998-05-28 00:00:00.000', '1998-05-04 00:00:00.000', 2, 10.98, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy'),
	(11061, 'GREAL', 4, '1998-04-30 00:00:00.000', '1998-06-11 00:00:00.000', NULL, 3, 14.01, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA'),
	(11062, 'REGGC', 4, '1998-04-30 00:00:00.000', '1998-05-28 00:00:00.000', NULL, 2, 29.93, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy'),
	(11063, 'HUNGO', 3, '1998-04-30 00:00:00.000', '1998-05-28 00:00:00.000', '1998-05-06 00:00:00.000', 2, 81.73, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland'),
	(11064, 'SAVEA', 1, '1998-05-01 00:00:00.000', '1998-05-29 00:00:00.000', '1998-05-04 00:00:00.000', 1, 30.09, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA'),
	(11065, 'LILAS', 8, '1998-05-01 00:00:00.000', '1998-05-29 00:00:00.000', NULL, 1, 12.91, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(11066, 'WHITC', 7, '1998-05-01 00:00:00.000', '1998-05-29 00:00:00.000', '1998-05-04 00:00:00.000', 2, 44.72, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA'),
	(11067, 'DRACD', 1, '1998-05-04 00:00:00.000', '1998-05-18 00:00:00.000', '1998-05-06 00:00:00.000', 2, 7.98, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany'),
	(11068, 'QUEEN', 8, '1998-05-04 00:00:00.000', '1998-06-01 00:00:00.000', NULL, 2, 81.75, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil'),
	(11069, 'TORTU', 1, '1998-05-04 00:00:00.000', '1998-06-01 00:00:00.000', '1998-05-06 00:00:00.000', 2, 15.67, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'Mexico'),
	(11070, 'LEHMS', 2, '1998-05-05 00:00:00.000', '1998-06-02 00:00:00.000', NULL, 1, 136, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany'),
	(11071, 'LILAS', 1, '1998-05-05 00:00:00.000', '1998-06-02 00:00:00.000', NULL, 1, 0.93, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
	(11072, 'ERNSH', 4, '1998-05-05 00:00:00.000', '1998-06-02 00:00:00.000', NULL, 2, 258.64, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
	(11073, 'PERIC', 2, '1998-05-05 00:00:00.000', '1998-06-02 00:00:00.000', NULL, 2, 24.95, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'Mexico'),
	(11074, 'SIMOB', 7, '1998-05-06 00:00:00.000', '1998-06-03 00:00:00.000', NULL, 2, 18.44, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', NULL, '1734', 'Denmark'),
	(11075, 'RICSU', 8, '1998-05-06 00:00:00.000', '1998-06-03 00:00:00.000', NULL, 2, 6.19, 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Switzerland'),
	(11076, 'BONAP', 4, '1998-05-06 00:00:00.000', '1998-06-03 00:00:00.000', NULL, 2, 38.28, 'Bon app''', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France'),
	(11077, 'RATTC', 1, '1998-05-06 00:00:00.000', '1998-06-03 00:00:00.000', NULL, 2, 8.53, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
/*!40000 ALTER TABLE "Orders" ENABLE KEYS */;

-- Volcando estructura para vista NORTHWND.Orders Qry
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Orders Qry" (
	"OrderID" INT NOT NULL,
	"CustomerID" NCHAR(5) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"EmployeeID" INT NULL,
	"OrderDate" DATETIME NULL,
	"RequiredDate" DATETIME NULL,
	"ShippedDate" DATETIME NULL,
	"ShipVia" INT NULL,
	"Freight" MONEY(19,4) NULL,
	"ShipName" NVARCHAR(40) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipAddress" NVARCHAR(60) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipCity" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipRegion" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipPostalCode" NVARCHAR(10) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShipCountry" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"CompanyName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Address" NVARCHAR(60) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"City" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Region" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"PostalCode" NVARCHAR(10) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Country" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS'
) ENGINE=MyISAM;

-- Volcando estructura para vista NORTHWND.Product Sales for 1997
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Product Sales for 1997" (
	"CategoryName" NVARCHAR(15) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ProductName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ProductSales" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para tabla NORTHWND.Products
CREATE TABLE IF NOT EXISTS "Products" (
	"ProductID" INT(10,0) NOT NULL,
	"ProductName" NVARCHAR(40) NOT NULL,
	"SupplierID" INT(10,0) NULL DEFAULT NULL,
	"CategoryID" INT(10,0) NULL DEFAULT NULL,
	"QuantityPerUnit" NVARCHAR(20) NULL DEFAULT NULL,
	"UnitPrice" MONEY(19,4) NULL DEFAULT (0),
	"UnitsInStock" SMALLINT(5,0) NULL DEFAULT (0),
	"UnitsOnOrder" SMALLINT(5,0) NULL DEFAULT (0),
	"ReorderLevel" SMALLINT(5,0) NULL DEFAULT (0),
	"Discontinued" BIT NOT NULL DEFAULT (0),
	PRIMARY KEY ("ProductID")
);

-- Volcando datos para la tabla NORTHWND.Products: -1 rows
/*!40000 ALTER TABLE "Products" DISABLE KEYS */;
INSERT IGNORE INTO "Products" ("ProductID", "ProductName", "SupplierID", "CategoryID", "QuantityPerUnit", "UnitPrice", "UnitsInStock", "UnitsOnOrder", "ReorderLevel", "Discontinued") VALUES
	(1, 'Chai', 1, 1, '10 boxes x 20 bags', 18, 39, 0, 10, 'True'),
	(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19, 17, 40, 25, 'True'),
	(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10, 13, 70, 25, 'True'),
	(4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22, 53, 0, 0, 'True'),
	(5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35, 0, 0, 0, 'True'),
	(6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25, 120, 0, 25, 'True'),
	(7, 'Uncle Bob''s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30, 15, 0, 10, 'False'),
	(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40, 6, 0, 0, 'False'),
	(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97, 29, 0, 0, 'True'),
	(10, 'Ikura', 4, 8, '12 - 200 ml jars', 31, 31, 0, 0, 'False'),
	(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21, 22, 30, 30, 'False'),
	(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38, 86, 0, 0, 'False'),
	(13, 'Konbu', 6, 8, '2 kg box', 6, 24, 0, 5, 'False'),
	(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25, 35, 0, 0, 'True'),
	(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.5, 39, 0, 5, 'False'),
	(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45, 29, 0, 10, 'False'),
	(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39, 0, 0, 0, 'True'),
	(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.5, 42, 0, 0, 'False'),
	(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.2, 25, 0, 5, 'True'),
	(20, 'Sir Rodney''s Marmalade', 8, 3, '30 gift boxes', 81, 40, 0, 0, 'False'),
	(21, 'Sir Rodney''s Scones', 8, 3, '24 pkgs. x 4 pieces', 10, 3, 40, 5, 'False'),
	(22, 'Gustaf''s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21, 104, 0, 25, 'False'),
	(23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9, 61, 0, 25, 'False'),
	(24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.5, 20, 0, 0, 'True'),
	(25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14, 76, 0, 30, 'False'),
	(26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23, 15, 0, 0, 'False'),
	(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9, 49, 0, 30, 'False'),
	(28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.6, 26, 0, 0, 'True'),
	(29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79, 0, 0, 0, 'True'),
	(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89, 10, 0, 15, 'False'),
	(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5, 0, 70, 20, 'False'),
	(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32, 9, 40, 25, 'False'),
	(33, 'Geitost', 15, 4, '500 g', 2.5, 112, 0, 20, 'False'),
	(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14, 111, 0, 15, 'False'),
	(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18, 20, 0, 15, 'False'),
	(36, 'Inlagd Sill', 17, 8, '24 - 250 g  jars', 19, 112, 0, 20, 'False'),
	(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26, 11, 50, 25, 'False'),
	(38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5, 17, 0, 15, 'False'),
	(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18, 69, 0, 5, 'False'),
	(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.4, 123, 0, 30, 'False'),
	(41, 'Jack''s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.65, 85, 0, 10, 'False'),
	(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14, 26, 0, 0, 'True'),
	(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46, 17, 10, 25, 'False'),
	(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45, 27, 0, 15, 'False'),
	(45, 'Rogede sild', 21, 8, '1k pkg.', 9.5, 5, 70, 15, 'False'),
	(46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12, 95, 0, 0, 'False'),
	(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5, 36, 0, 0, 'False'),
	(48, 'Chocolade', 22, 3, '10 pkgs.', 12.75, 15, 70, 25, 'False'),
	(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20, 10, 60, 15, 'False'),
	(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25, 65, 0, 30, 'False'),
	(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53, 20, 0, 10, 'False'),
	(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7, 38, 0, 25, 'False'),
	(53, 'Perth Pasties', 24, 6, '48 pieces', 32.8, 0, 0, 0, 'True'),
	(54, 'Tourtière', 25, 6, '16 pies', 7.45, 21, 0, 10, 'False'),
	(55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24, 115, 0, 20, 'False'),
	(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38, 21, 10, 30, 'False'),
	(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5, 36, 0, 20, 'False'),
	(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.25, 62, 0, 20, 'False'),
	(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55, 79, 0, 0, 'False'),
	(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34, 19, 0, 0, 'False'),
	(61, 'Sirop d''érable', 29, 2, '24 - 500 ml bottles', 28.5, 113, 0, 25, 'False'),
	(62, 'Tarte au sucre', 29, 3, '48 pies', 49.3, 17, 0, 0, 'False'),
	(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.9, 24, 0, 5, 'False'),
	(64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33.25, 22, 80, 30, 'False'),
	(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.05, 76, 0, 0, 'False'),
	(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17, 4, 100, 20, 'False'),
	(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14, 52, 0, 10, 'False'),
	(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5, 6, 10, 15, 'False'),
	(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36, 26, 0, 15, 'True'),
	(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15, 15, 10, 30, 'False'),
	(71, 'Flotemysost', 15, 4, '10 - 500 g pkgs.', 21.5, 26, 0, 0, 'False'),
	(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.8, 14, 0, 0, 'False'),
	(73, 'Röd Kaviar', 17, 8, '24 - 150 g jars', 15, 101, 0, 5, 'False'),
	(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10, 4, 20, 5, 'False'),
	(75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75, 125, 0, 25, 'False'),
	(76, 'Lakkalikööri', 23, 1, '500 ml', 18, 57, 0, 20, 'False'),
	(77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13, 32, 0, 15, 'True');
/*!40000 ALTER TABLE "Products" ENABLE KEYS */;

-- Volcando estructura para vista NORTHWND.Products Above Average Price
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Products Above Average Price" (
	"ProductName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"UnitPrice" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista NORTHWND.Products by Category
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Products by Category" (
	"CategoryName" NVARCHAR(15) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ProductName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"QuantityPerUnit" NVARCHAR(20) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"UnitsInStock" SMALLINT NULL,
	"Discontinued" BIT NOT NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista NORTHWND.Quarterly Orders
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Quarterly Orders" (
	"CustomerID" NCHAR(5) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"CompanyName" NVARCHAR(40) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"City" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"Country" NVARCHAR(15) NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS'
) ENGINE=MyISAM;

-- Volcando estructura para tabla NORTHWND.Region
CREATE TABLE IF NOT EXISTS "Region" (
	"RegionID" INT(10,0) NOT NULL,
	"RegionDescription" NCHAR(50) NOT NULL,
	PRIMARY KEY ("RegionID")
);

-- Volcando datos para la tabla NORTHWND.Region: -1 rows
/*!40000 ALTER TABLE "Region" DISABLE KEYS */;
INSERT IGNORE INTO "Region" ("RegionID", "RegionDescription") VALUES
	(1, 'Eastern                                           '),
	(2, 'Western                                           '),
	(3, 'Northern                                          '),
	(4, 'Southern                                          ');
/*!40000 ALTER TABLE "Region" ENABLE KEYS */;

-- Volcando estructura para vista NORTHWND.Sales by Category
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Sales by Category" (
	"CategoryID" INT NOT NULL,
	"CategoryName" NVARCHAR(15) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ProductName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ProductSales" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para procedimiento NORTHWND.Sales by Year
DELIMITER //

create procedure "Sales by Year" 
	@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal, DATENAME(yy,ShippedDate) AS Year
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
//
DELIMITER ;

-- Volcando estructura para vista NORTHWND.Sales Totals by Amount
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Sales Totals by Amount" (
	"SaleAmount" MONEY(19,4) NULL,
	"OrderID" INT NOT NULL,
	"CompanyName" NVARCHAR(40) NOT NULL COLLATE 'SQL_Latin1_General_CP1_CI_AS',
	"ShippedDate" DATETIME NULL
) ENGINE=MyISAM;

-- Volcando estructura para procedimiento NORTHWND.SalesByCategory
DELIMITER //
CREATE PROCEDURE SalesByCategory
    @CategoryName nvarchar(15), @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear != '1996' AND @OrdYear != '1997' AND @OrdYear != '1998' 
BEGIN
	SELECT @OrdYear = '1998'
END

SELECT ProductName,
	TotalPurchase=ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0)
FROM [Order Details] OD, Orders O, Products P, Categories C
WHERE OD.OrderID = O.OrderID 
	AND OD.ProductID = P.ProductID 
	AND P.CategoryID = C.CategoryID
	AND C.CategoryName = @CategoryName
	AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
GROUP BY ProductName
ORDER BY ProductName
//
DELIMITER ;

-- Volcando estructura para tabla NORTHWND.Shippers
CREATE TABLE IF NOT EXISTS "Shippers" (
	"ShipperID" INT(10,0) NOT NULL,
	"CompanyName" NVARCHAR(40) NOT NULL,
	"Phone" NVARCHAR(24) NULL DEFAULT NULL,
	PRIMARY KEY ("ShipperID")
);

-- Volcando datos para la tabla NORTHWND.Shippers: -1 rows
/*!40000 ALTER TABLE "Shippers" DISABLE KEYS */;
INSERT IGNORE INTO "Shippers" ("ShipperID", "CompanyName", "Phone") VALUES
	(1, 'Speedy Express', '(503) 555-9831'),
	(2, 'United Package', '(503) 555-3199'),
	(3, 'Federal Shipping', '(503) 555-9931');
/*!40000 ALTER TABLE "Shippers" ENABLE KEYS */;

-- Volcando estructura para procedimiento NORTHWND.sp_alterdiagram
DELIMITER //

	CREATE PROCEDURE dbo.sp_alterdiagram
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.sp_creatediagram
DELIMITER //

	CREATE PROCEDURE dbo.sp_creatediagram
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.sp_dropdiagram
DELIMITER //

	CREATE PROCEDURE dbo.sp_dropdiagram
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.sp_helpdiagramdefinition
DELIMITER //

	CREATE PROCEDURE dbo.sp_helpdiagramdefinition
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.sp_helpdiagrams
DELIMITER //

	CREATE PROCEDURE dbo.sp_helpdiagrams
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.sp_renamediagram
DELIMITER //

	CREATE PROCEDURE dbo.sp_renamediagram
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	//
DELIMITER ;

-- Volcando estructura para procedimiento NORTHWND.sp_upgraddiagrams
DELIMITER //

	CREATE PROCEDURE dbo.sp_upgraddiagrams
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	//
DELIMITER ;

-- Volcando estructura para vista NORTHWND.Summary of Sales by Quarter
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Summary of Sales by Quarter" (
	"ShippedDate" DATETIME NULL,
	"OrderID" INT NOT NULL,
	"Subtotal" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para vista NORTHWND.Summary of Sales by Year
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE "Summary of Sales by Year" (
	"ShippedDate" DATETIME NULL,
	"OrderID" INT NOT NULL,
	"Subtotal" MONEY(19,4) NULL
) ENGINE=MyISAM;

-- Volcando estructura para tabla NORTHWND.Suppliers
CREATE TABLE IF NOT EXISTS "Suppliers" (
	"SupplierID" INT(10,0) NOT NULL,
	"CompanyName" NVARCHAR(40) NOT NULL,
	"ContactName" NVARCHAR(30) NULL DEFAULT NULL,
	"ContactTitle" NVARCHAR(30) NULL DEFAULT NULL,
	"Address" NVARCHAR(60) NULL DEFAULT NULL,
	"City" NVARCHAR(15) NULL DEFAULT NULL,
	"Region" NVARCHAR(15) NULL DEFAULT NULL,
	"PostalCode" NVARCHAR(10) NULL DEFAULT NULL,
	"Country" NVARCHAR(15) NULL DEFAULT NULL,
	"Phone" NVARCHAR(24) NULL DEFAULT NULL,
	"Fax" NVARCHAR(24) NULL DEFAULT NULL,
	"HomePage" NTEXT(1073741823) NULL DEFAULT NULL,
	PRIMARY KEY ("SupplierID")
);

-- Volcando datos para la tabla NORTHWND.Suppliers: -1 rows
/*!40000 ALTER TABLE "Suppliers" DISABLE KEYS */;
INSERT IGNORE INTO "Suppliers" ("SupplierID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "Region", "PostalCode", "Country", "Phone", "Fax", "HomePage") VALUES
	(1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', NULL, 'EC1 4SD', 'UK', '(171) 555-2222', NULL, NULL),
	(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', NULL, '#CAJUN.HTM#'),
	(3, 'Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349', NULL),
	(4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', NULL, '100', 'Japan', '(03) 3555-5011', NULL, NULL),
	(5, 'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', NULL, NULL),
	(6, 'Mayumi''s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'Osaka', NULL, '545', 'Japan', '(06) 431-7877', NULL, 'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),
	(7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', NULL),
	(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', NULL, 'M14 GSD', 'UK', '(161) 555-4448', NULL, NULL),
	(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', NULL, 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91', NULL),
	(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'Sao Paulo', NULL, '5442', 'Brazil', '(11) 555 4640', NULL, NULL),
	(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', NULL, '10785', 'Germany', '(010) 9984510', NULL, NULL),
	(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', NULL, '60439', 'Germany', '(069) 992755', NULL, 'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),
	(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', NULL, '27478', 'Germany', '(04721) 8713', '(04721) 8714', NULL),
	(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', NULL, '48100', 'Italy', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#'),
	(15, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', NULL, '1320', 'Norway', '(0)2-953010', NULL, NULL),
	(16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue Suite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', NULL, NULL),
	(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', NULL, 'S-123 45', 'Sweden', '08-123 45 67', NULL, NULL),
	(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', NULL, '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', NULL),
	(19, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389', NULL),
	(20, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', NULL, '0512', 'Singapore', '555-8787', NULL, NULL),
	(21, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild Fiskebakken 10', 'Lyngby', NULL, '2800', 'Denmark', '43844108', '43844115', NULL),
	(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop Rijnweg 22', 'Zaandam', NULL, '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', NULL),
	(23, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', NULL, '53120', 'Finland', '(953) 10956', NULL, NULL),
	(24, 'G''day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade Hunter''s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),
	(25, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022', NULL, NULL),
	(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', NULL, '84100', 'Italy', '(089) 6547665', '(089) 6547667', NULL),
	(27, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', NULL, '71300', 'France', '85.57.00.07', NULL, NULL),
	(28, 'Gai pâturage', 'Eliane Noz', 'Sales Representative', 'Bat. B 3, rue des Alpes', 'Annecy', NULL, '74000', 'France', '38.76.98.06', '38.76.98.58', NULL),
	(29, 'Forêts d''érables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', NULL);
/*!40000 ALTER TABLE "Suppliers" ENABLE KEYS */;

-- Volcando estructura para tabla NORTHWND.sysdiagrams
CREATE TABLE IF NOT EXISTS "sysdiagrams" (
	"name" NVARCHAR(128) NOT NULL,
	"principal_id" INT(10,0) NOT NULL,
	"diagram_id" INT(10,0) NOT NULL,
	"version" INT(10,0) NULL DEFAULT NULL,
	"definition" VARBINARY(max) NULL DEFAULT NULL,
	PRIMARY KEY ("diagram_id"),
	UNIQUE KEY ("principal_id","name")
);

-- Volcando datos para la tabla NORTHWND.sysdiagrams: -1 rows
/*!40000 ALTER TABLE "sysdiagrams" DISABLE KEYS */;
/*!40000 ALTER TABLE "sysdiagrams" ENABLE KEYS */;

-- Volcando estructura para procedimiento NORTHWND.Ten Most Expensive Products
DELIMITER //

create procedure "Ten Most Expensive Products" AS
SET ROWCOUNT 10
SELECT Products.ProductName AS TenMostExpensiveProducts, Products.UnitPrice
FROM Products
ORDER BY Products.UnitPrice DESC
//
DELIMITER ;

-- Volcando estructura para tabla NORTHWND.Territories
CREATE TABLE IF NOT EXISTS "Territories" (
	"TerritoryID" NVARCHAR(20) NOT NULL,
	"TerritoryDescription" NCHAR(50) NOT NULL,
	"RegionID" INT(10,0) NOT NULL,
	PRIMARY KEY ("TerritoryID")
);

-- Volcando datos para la tabla NORTHWND.Territories: -1 rows
/*!40000 ALTER TABLE "Territories" DISABLE KEYS */;
INSERT IGNORE INTO "Territories" ("TerritoryID", "TerritoryDescription", "RegionID") VALUES
	('01581', 'Westboro                                          ', 1),
	('01730', 'Bedford                                           ', 1),
	('01833', 'Georgetow                                         ', 1),
	('02116', 'Boston                                            ', 1),
	('02139', 'Cambridge                                         ', 1),
	('02184', 'Braintree                                         ', 1),
	('02903', 'Providence                                        ', 1),
	('03049', 'Hollis                                            ', 3),
	('03801', 'Portsmouth                                        ', 3),
	('06897', 'Wilton                                            ', 1),
	('07960', 'Morristown                                        ', 1),
	('08837', 'Edison                                            ', 1),
	('10019', 'New York                                          ', 1),
	('10038', 'New York                                          ', 1),
	('11747', 'Mellvile                                          ', 1),
	('14450', 'Fairport                                          ', 1),
	('19428', 'Philadelphia                                      ', 3),
	('19713', 'Neward                                            ', 1),
	('20852', 'Rockville                                         ', 1),
	('27403', 'Greensboro                                        ', 1),
	('27511', 'Cary                                              ', 1),
	('29202', 'Columbia                                          ', 4),
	('30346', 'Atlanta                                           ', 4),
	('31406', 'Savannah                                          ', 4),
	('32859', 'Orlando                                           ', 4),
	('33607', 'Tampa                                             ', 4),
	('40222', 'Louisville                                        ', 1),
	('44122', 'Beachwood                                         ', 3),
	('45839', 'Findlay                                           ', 3),
	('48075', 'Southfield                                        ', 3),
	('48084', 'Troy                                              ', 3),
	('48304', 'Bloomfield Hills                                  ', 3),
	('53404', 'Racine                                            ', 3),
	('55113', 'Roseville                                         ', 3),
	('55439', 'Minneapolis                                       ', 3),
	('60179', 'Hoffman Estates                                   ', 2),
	('60601', 'Chicago                                           ', 2),
	('72716', 'Bentonville                                       ', 4),
	('75234', 'Dallas                                            ', 4),
	('78759', 'Austin                                            ', 4),
	('80202', 'Denver                                            ', 2),
	('80909', 'Colorado Springs                                  ', 2),
	('85014', 'Phoenix                                           ', 2),
	('85251', 'Scottsdale                                        ', 2),
	('90405', 'Santa Monica                                      ', 2),
	('94025', 'Menlo Park                                        ', 2),
	('94105', 'San Francisco                                     ', 2),
	('95008', 'Campbell                                          ', 2),
	('95054', 'Santa Clara                                       ', 2),
	('95060', 'Santa Cruz                                        ', 2),
	('98004', 'Bellevue                                          ', 2),
	('98052', 'Redmond                                           ', 2),
	('98104', 'Seattle                                           ', 2);
/*!40000 ALTER TABLE "Territories" ENABLE KEYS */;

-- Volcando estructura para vista NORTHWND.Alphabetical list of products
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Alphabetical list of products";

create view "Alphabetical list of products" AS
SELECT Products.*, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE (((Products.Discontinued)=0))
;

-- Volcando estructura para vista NORTHWND.Category Sales for 1997
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Category Sales for 1997";

create view "Category Sales for 1997" AS
SELECT "Product Sales for 1997".CategoryName, Sum("Product Sales for 1997".ProductSales) AS CategorySales
FROM "Product Sales for 1997"
GROUP BY "Product Sales for 1997".CategoryName
;

-- Volcando estructura para vista NORTHWND.Current Product List
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Current Product List";

create view "Current Product List" AS
SELECT Product_List.ProductID, Product_List.ProductName
FROM Products AS Product_List
WHERE (((Product_List.Discontinued)=0))
--ORDER BY Product_List.ProductName
;

-- Volcando estructura para vista NORTHWND.Customer and Suppliers by City
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Customer and Suppliers by City";

create view "Customer and Suppliers by City" AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
--ORDER BY City, CompanyName
;

-- Volcando estructura para vista NORTHWND.Invoices
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Invoices";

create view Invoices AS
SELECT Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, Orders.ShipRegion, Orders.ShipPostalCode, 
	Orders.ShipCountry, Orders.CustomerID, Customers.CompanyName AS CustomerName, Customers.Address, Customers.City, 
	Customers.Region, Customers.PostalCode, Customers.Country, 
	(FirstName + ' ' + LastName) AS Salesperson, 
	Orders.OrderID, Orders.OrderDate, Orders.RequiredDate, Orders.ShippedDate, Shippers.CompanyName As ShipperName, 
	"Order Details".ProductID, Products.ProductName, "Order Details".UnitPrice, "Order Details".Quantity, 
	"Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice, Orders.Freight
FROM 	Shippers INNER JOIN 
		(Products INNER JOIN 
			(
				(Employees INNER JOIN 
					(Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID) 
				ON Employees.EmployeeID = Orders.EmployeeID) 
			INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
		ON Products.ProductID = "Order Details".ProductID) 
	ON Shippers.ShipperID = Orders.ShipVia
;

-- Volcando estructura para vista NORTHWND.Order Details Extended
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Order Details Extended";

create view "Order Details Extended" AS
SELECT "Order Details".OrderID, "Order Details".ProductID, Products.ProductName, 
	"Order Details".UnitPrice, "Order Details".Quantity, "Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice
FROM Products INNER JOIN "Order Details" ON Products.ProductID = "Order Details".ProductID
--ORDER BY "Order Details".OrderID
;

-- Volcando estructura para vista NORTHWND.Order Subtotals
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Order Subtotals";

create view "Order Subtotals" AS
SELECT "Order Details".OrderID, Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM "Order Details"
GROUP BY "Order Details".OrderID
;

-- Volcando estructura para vista NORTHWND.Orders Qry
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Orders Qry";

create view "Orders Qry" AS
SELECT Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, Orders.OrderDate, Orders.RequiredDate, 
	Orders.ShippedDate, Orders.ShipVia, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, 
	Orders.ShipRegion, Orders.ShipPostalCode, Orders.ShipCountry, 
	Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
;

-- Volcando estructura para vista NORTHWND.Product Sales for 1997
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Product Sales for 1997";

create view "Product Sales for 1997" AS
SELECT Categories.CategoryName, Products.ProductName, 
Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ProductSales
FROM (Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID) 
	INNER JOIN (Orders 
		INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
	ON Products.ProductID = "Order Details".ProductID
WHERE (((Orders.ShippedDate) Between '19970101' And '19971231'))
GROUP BY Categories.CategoryName, Products.ProductName
;

-- Volcando estructura para vista NORTHWND.Products Above Average Price
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Products Above Average Price";

create view "Products Above Average Price" AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products)
--ORDER BY Products.UnitPrice DESC
;

-- Volcando estructura para vista NORTHWND.Products by Category
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Products by Category";

create view "Products by Category" AS
SELECT Categories.CategoryName, Products.ProductName, Products.QuantityPerUnit, Products.UnitsInStock, Products.Discontinued
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued <> 1
--ORDER BY Categories.CategoryName, Products.ProductName
;

-- Volcando estructura para vista NORTHWND.Quarterly Orders
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Quarterly Orders";

create view "Quarterly Orders" AS
SELECT DISTINCT Customers.CustomerID, Customers.CompanyName, Customers.City, Customers.Country
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
;

-- Volcando estructura para vista NORTHWND.Sales by Category
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Sales by Category";

create view "Sales by Category" AS
SELECT Categories.CategoryID, Categories.CategoryName, Products.ProductName, 
	Sum("Order Details Extended".ExtendedPrice) AS ProductSales
FROM 	Categories INNER JOIN 
		(Products INNER JOIN 
			(Orders INNER JOIN "Order Details Extended" ON Orders.OrderID = "Order Details Extended".OrderID) 
		ON Products.ProductID = "Order Details Extended".ProductID) 
	ON Categories.CategoryID = Products.CategoryID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GROUP BY Categories.CategoryID, Categories.CategoryName, Products.ProductName
--ORDER BY Products.ProductName
;

-- Volcando estructura para vista NORTHWND.Sales Totals by Amount
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Sales Totals by Amount";

create view "Sales Totals by Amount" AS
SELECT "Order Subtotals".Subtotal AS SaleAmount, Orders.OrderID, Customers.CompanyName, Orders.ShippedDate
FROM 	Customers INNER JOIN 
		(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Customers.CustomerID = Orders.CustomerID
WHERE ("Order Subtotals".Subtotal >2500) AND (Orders.ShippedDate BETWEEN '19970101' And '19971231')
;

-- Volcando estructura para vista NORTHWND.Summary of Sales by Quarter
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Summary of Sales by Quarter";

create view "Summary of Sales by Quarter" AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
;

-- Volcando estructura para vista NORTHWND.Summary of Sales by Year
-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS "Summary of Sales by Year";

create view "Summary of Sales by Year" AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
