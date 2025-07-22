; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3115 () Bool)

(assert start!3115)

(declare-fun b_free!27 () Bool)

(declare-fun b_next!27 () Bool)

(assert (=> start!3115 (= b_free!27 (not b_next!27))))

(declare-fun tp!41 () Bool)

(declare-fun b_and!137 () Bool)

(assert (=> start!3115 (= tp!41 b_and!137)))

(declare-fun b!17377 () Bool)

(declare-fun res!13812 () Bool)

(declare-fun e!9376 () Bool)

(assert (=> b!17377 (=> (not res!13812) (not e!9376))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1376 0))(
  ( (array!1377 (arr!600 (Array (_ BitVec 32) (_ BitVec 32))) (size!600 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1376)

(declare-fun dynLambda!56 (Int (_ BitVec 32)) Bool)

(assert (=> b!17377 (= res!13812 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17378 () Bool)

(declare-fun res!13813 () Bool)

(assert (=> b!17378 (=> (not res!13813) (not e!9376))))

(assert (=> b!17378 (= res!13813 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!17379 () Bool)

(declare-fun res!13805 () Bool)

(assert (=> b!17379 (=> (not res!13805) (not e!9376))))

(assert (=> b!17379 (= res!13805 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000001001)))))

(declare-fun b!17380 () Bool)

(declare-fun res!13808 () Bool)

(assert (=> b!17380 (=> (not res!13808) (not e!9376))))

(assert (=> b!17380 (= res!13808 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17381 () Bool)

(declare-fun res!13806 () Bool)

(assert (=> b!17381 (=> (not res!13806) (not e!9376))))

(assert (=> b!17381 (= res!13806 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!17382 () Bool)

(declare-fun res!13809 () Bool)

(assert (=> b!17382 (=> (not res!13809) (not e!9376))))

(assert (=> b!17382 (= res!13809 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17384 () Bool)

(declare-fun res!13811 () Bool)

(assert (=> b!17384 (=> (not res!13811) (not e!9376))))

(assert (=> b!17384 (= res!13811 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17385 () Bool)

(declare-fun res!13815 () Bool)

(assert (=> b!17385 (=> (not res!13815) (not e!9376))))

(assert (=> b!17385 (= res!13815 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!17386 () Bool)

(declare-fun res!13807 () Bool)

(assert (=> b!17386 (=> (not res!13807) (not e!9376))))

(assert (=> b!17386 (= res!13807 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17387 () Bool)

(assert (=> b!17387 (= e!9376 (bvsge #b00000000000000000000000000001010 (size!600 a!13)))))

(declare-fun b!17383 () Bool)

(declare-fun res!13810 () Bool)

(assert (=> b!17383 (=> (not res!13810) (not e!9376))))

(assert (=> b!17383 (= res!13810 (dynLambda!56 P!6 (select (arr!600 a!13) #b00000000000000000000000000001000)))))

(declare-fun res!13814 () Bool)

(assert (=> start!3115 (=> (not res!13814) (not e!9376))))

(assert (=> start!3115 (= res!13814 (= (size!600 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3115 e!9376))

(declare-fun array_inv!548 (array!1376) Bool)

(assert (=> start!3115 (array_inv!548 a!13)))

(assert (=> start!3115 tp!41))

(assert (= (and start!3115 res!13814) b!17382))

(assert (= (and b!17382 res!13809) b!17377))

(assert (= (and b!17377 res!13812) b!17384))

(assert (= (and b!17384 res!13811) b!17386))

(assert (= (and b!17386 res!13807) b!17380))

(assert (= (and b!17380 res!13808) b!17378))

(assert (= (and b!17378 res!13813) b!17385))

(assert (= (and b!17385 res!13815) b!17381))

(assert (= (and b!17381 res!13806) b!17383))

(assert (= (and b!17383 res!13810) b!17379))

(assert (= (and b!17379 res!13805) b!17387))

(declare-fun b_lambda!8051 () Bool)

(assert (=> (not b_lambda!8051) (not b!17382)))

(declare-fun t!301 () Bool)

(declare-fun tb!111 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!301) tb!111))

(declare-fun result!111 () Bool)

(assert (=> tb!111 (= result!111 true)))

(assert (=> b!17382 t!301))

(declare-fun b_and!139 () Bool)

(assert (= b_and!137 (and (=> t!301 result!111) b_and!139)))

(declare-fun b_lambda!8053 () Bool)

(assert (=> (not b_lambda!8053) (not b!17383)))

(declare-fun t!303 () Bool)

(declare-fun tb!113 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!303) tb!113))

(declare-fun result!113 () Bool)

(assert (=> tb!113 (= result!113 true)))

(assert (=> b!17383 t!303))

(declare-fun b_and!141 () Bool)

(assert (= b_and!139 (and (=> t!303 result!113) b_and!141)))

(declare-fun b_lambda!8055 () Bool)

(assert (=> (not b_lambda!8055) (not b!17381)))

(declare-fun t!305 () Bool)

(declare-fun tb!115 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!305) tb!115))

(declare-fun result!115 () Bool)

(assert (=> tb!115 (= result!115 true)))

(assert (=> b!17381 t!305))

(declare-fun b_and!143 () Bool)

(assert (= b_and!141 (and (=> t!305 result!115) b_and!143)))

(declare-fun b_lambda!8057 () Bool)

(assert (=> (not b_lambda!8057) (not b!17384)))

(declare-fun t!307 () Bool)

(declare-fun tb!117 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!307) tb!117))

(declare-fun result!117 () Bool)

(assert (=> tb!117 (= result!117 true)))

(assert (=> b!17384 t!307))

(declare-fun b_and!145 () Bool)

(assert (= b_and!143 (and (=> t!307 result!117) b_and!145)))

(declare-fun b_lambda!8059 () Bool)

(assert (=> (not b_lambda!8059) (not b!17379)))

(declare-fun t!309 () Bool)

(declare-fun tb!119 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!309) tb!119))

(declare-fun result!119 () Bool)

(assert (=> tb!119 (= result!119 true)))

(assert (=> b!17379 t!309))

(declare-fun b_and!147 () Bool)

(assert (= b_and!145 (and (=> t!309 result!119) b_and!147)))

(declare-fun b_lambda!8061 () Bool)

(assert (=> (not b_lambda!8061) (not b!17385)))

(declare-fun t!311 () Bool)

(declare-fun tb!121 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!311) tb!121))

(declare-fun result!121 () Bool)

(assert (=> tb!121 (= result!121 true)))

(assert (=> b!17385 t!311))

(declare-fun b_and!149 () Bool)

(assert (= b_and!147 (and (=> t!311 result!121) b_and!149)))

(declare-fun b_lambda!8063 () Bool)

(assert (=> (not b_lambda!8063) (not b!17380)))

(declare-fun t!313 () Bool)

(declare-fun tb!123 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!313) tb!123))

(declare-fun result!123 () Bool)

(assert (=> tb!123 (= result!123 true)))

(assert (=> b!17380 t!313))

(declare-fun b_and!151 () Bool)

(assert (= b_and!149 (and (=> t!313 result!123) b_and!151)))

(declare-fun b_lambda!8065 () Bool)

(assert (=> (not b_lambda!8065) (not b!17386)))

(declare-fun t!315 () Bool)

(declare-fun tb!125 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!315) tb!125))

(declare-fun result!125 () Bool)

(assert (=> tb!125 (= result!125 true)))

(assert (=> b!17386 t!315))

(declare-fun b_and!153 () Bool)

(assert (= b_and!151 (and (=> t!315 result!125) b_and!153)))

(declare-fun b_lambda!8067 () Bool)

(assert (=> (not b_lambda!8067) (not b!17378)))

(declare-fun t!317 () Bool)

(declare-fun tb!127 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!317) tb!127))

(declare-fun result!127 () Bool)

(assert (=> tb!127 (= result!127 true)))

(assert (=> b!17378 t!317))

(declare-fun b_and!155 () Bool)

(assert (= b_and!153 (and (=> t!317 result!127) b_and!155)))

(declare-fun b_lambda!8069 () Bool)

(assert (=> (not b_lambda!8069) (not b!17377)))

(declare-fun t!319 () Bool)

(declare-fun tb!129 () Bool)

(assert (=> (and start!3115 (= P!6 P!6) t!319) tb!129))

(declare-fun result!129 () Bool)

(assert (=> tb!129 (= result!129 true)))

(assert (=> b!17377 t!319))

(declare-fun b_and!157 () Bool)

(assert (= b_and!155 (and (=> t!319 result!129) b_and!157)))

(declare-fun m!27573 () Bool)

(assert (=> b!17383 m!27573))

(assert (=> b!17383 m!27573))

(declare-fun m!27575 () Bool)

(assert (=> b!17383 m!27575))

(declare-fun m!27577 () Bool)

(assert (=> b!17379 m!27577))

(assert (=> b!17379 m!27577))

(declare-fun m!27579 () Bool)

(assert (=> b!17379 m!27579))

(declare-fun m!27581 () Bool)

(assert (=> b!17381 m!27581))

(assert (=> b!17381 m!27581))

(declare-fun m!27583 () Bool)

(assert (=> b!17381 m!27583))

(declare-fun m!27585 () Bool)

(assert (=> b!17385 m!27585))

(assert (=> b!17385 m!27585))

(declare-fun m!27587 () Bool)

(assert (=> b!17385 m!27587))

(declare-fun m!27589 () Bool)

(assert (=> start!3115 m!27589))

(declare-fun m!27591 () Bool)

(assert (=> b!17377 m!27591))

(assert (=> b!17377 m!27591))

(declare-fun m!27593 () Bool)

(assert (=> b!17377 m!27593))

(declare-fun m!27595 () Bool)

(assert (=> b!17386 m!27595))

(assert (=> b!17386 m!27595))

(declare-fun m!27597 () Bool)

(assert (=> b!17386 m!27597))

(declare-fun m!27599 () Bool)

(assert (=> b!17384 m!27599))

(assert (=> b!17384 m!27599))

(declare-fun m!27601 () Bool)

(assert (=> b!17384 m!27601))

(declare-fun m!27603 () Bool)

(assert (=> b!17378 m!27603))

(assert (=> b!17378 m!27603))

(declare-fun m!27605 () Bool)

(assert (=> b!17378 m!27605))

(declare-fun m!27607 () Bool)

(assert (=> b!17380 m!27607))

(assert (=> b!17380 m!27607))

(declare-fun m!27609 () Bool)

(assert (=> b!17380 m!27609))

(declare-fun m!27611 () Bool)

(assert (=> b!17382 m!27611))

(assert (=> b!17382 m!27611))

(declare-fun m!27613 () Bool)

(assert (=> b!17382 m!27613))

(push 1)

(assert (not b_lambda!8063))

(assert (not b_lambda!8051))

(assert b_and!157)

(assert (not start!3115))

(assert (not b_next!27))

(assert (not b_lambda!8067))

(assert (not b_lambda!8059))

(assert (not b_lambda!8053))

(assert (not b_lambda!8069))

(assert (not b_lambda!8065))

(assert (not b_lambda!8057))

(assert (not b_lambda!8055))

(assert (not b_lambda!8061))

(check-sat)

(pop 1)

(push 1)

(assert b_and!157)

(assert (not b_next!27))

(check-sat)

(pop 1)

