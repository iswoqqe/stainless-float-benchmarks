; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3109 () Bool)

(assert start!3109)

(declare-fun b_free!21 () Bool)

(declare-fun b_next!21 () Bool)

(assert (=> start!3109 (= b_free!21 (not b_next!21))))

(declare-fun tp!32 () Bool)

(declare-fun b_and!83 () Bool)

(assert (=> start!3109 (= tp!32 b_and!83)))

(declare-fun b!17290 () Bool)

(declare-fun res!13723 () Bool)

(declare-fun e!9358 () Bool)

(assert (=> b!17290 (=> (not res!13723) (not e!9358))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1370 0))(
  ( (array!1371 (arr!597 (Array (_ BitVec 32) (_ BitVec 32))) (size!597 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1370)

(declare-fun dynLambda!53 (Int (_ BitVec 32)) Bool)

(assert (=> b!17290 (= res!13723 (dynLambda!53 P!6 (select (arr!597 a!13) #b00000000000000000000000000000001)))))

(declare-fun res!13725 () Bool)

(assert (=> start!3109 (=> (not res!13725) (not e!9358))))

(assert (=> start!3109 (= res!13725 (= (size!597 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3109 e!9358))

(declare-fun array_inv!545 (array!1370) Bool)

(assert (=> start!3109 (array_inv!545 a!13)))

(assert (=> start!3109 tp!32))

(declare-fun b!17291 () Bool)

(declare-fun res!13718 () Bool)

(assert (=> b!17291 (=> (not res!13718) (not e!9358))))

(assert (=> b!17291 (= res!13718 (dynLambda!53 P!6 (select (arr!597 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!17292 () Bool)

(declare-fun res!13720 () Bool)

(assert (=> b!17292 (=> (not res!13720) (not e!9358))))

(assert (=> b!17292 (= res!13720 (dynLambda!53 P!6 (select (arr!597 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!17293 () Bool)

(declare-fun res!13721 () Bool)

(assert (=> b!17293 (=> (not res!13721) (not e!9358))))

(assert (=> b!17293 (= res!13721 (dynLambda!53 P!6 (select (arr!597 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17294 () Bool)

(assert (=> b!17294 (= e!9358 (bvsge #b00000000000000000000000000000111 (size!597 a!13)))))

(declare-fun b!17295 () Bool)

(declare-fun res!13724 () Bool)

(assert (=> b!17295 (=> (not res!13724) (not e!9358))))

(assert (=> b!17295 (= res!13724 (dynLambda!53 P!6 (select (arr!597 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17296 () Bool)

(declare-fun res!13722 () Bool)

(assert (=> b!17296 (=> (not res!13722) (not e!9358))))

(assert (=> b!17296 (= res!13722 (dynLambda!53 P!6 (select (arr!597 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17297 () Bool)

(declare-fun res!13719 () Bool)

(assert (=> b!17297 (=> (not res!13719) (not e!9358))))

(assert (=> b!17297 (= res!13719 (dynLambda!53 P!6 (select (arr!597 a!13) #b00000000000000000000000000000010)))))

(assert (= (and start!3109 res!13725) b!17293))

(assert (= (and b!17293 res!13721) b!17290))

(assert (= (and b!17290 res!13723) b!17297))

(assert (= (and b!17297 res!13719) b!17295))

(assert (= (and b!17295 res!13724) b!17296))

(assert (= (and b!17296 res!13722) b!17291))

(assert (= (and b!17291 res!13718) b!17292))

(assert (= (and b!17292 res!13720) b!17294))

(declare-fun b_lambda!8003 () Bool)

(assert (=> (not b_lambda!8003) (not b!17292)))

(declare-fun t!253 () Bool)

(declare-fun tb!63 () Bool)

(assert (=> (and start!3109 (= P!6 P!6) t!253) tb!63))

(declare-fun result!63 () Bool)

(assert (=> tb!63 (= result!63 true)))

(assert (=> b!17292 t!253))

(declare-fun b_and!85 () Bool)

(assert (= b_and!83 (and (=> t!253 result!63) b_and!85)))

(declare-fun b_lambda!8005 () Bool)

(assert (=> (not b_lambda!8005) (not b!17290)))

(declare-fun t!255 () Bool)

(declare-fun tb!65 () Bool)

(assert (=> (and start!3109 (= P!6 P!6) t!255) tb!65))

(declare-fun result!65 () Bool)

(assert (=> tb!65 (= result!65 true)))

(assert (=> b!17290 t!255))

(declare-fun b_and!87 () Bool)

(assert (= b_and!85 (and (=> t!255 result!65) b_and!87)))

(declare-fun b_lambda!8007 () Bool)

(assert (=> (not b_lambda!8007) (not b!17293)))

(declare-fun t!257 () Bool)

(declare-fun tb!67 () Bool)

(assert (=> (and start!3109 (= P!6 P!6) t!257) tb!67))

(declare-fun result!67 () Bool)

(assert (=> tb!67 (= result!67 true)))

(assert (=> b!17293 t!257))

(declare-fun b_and!89 () Bool)

(assert (= b_and!87 (and (=> t!257 result!67) b_and!89)))

(declare-fun b_lambda!8009 () Bool)

(assert (=> (not b_lambda!8009) (not b!17296)))

(declare-fun t!259 () Bool)

(declare-fun tb!69 () Bool)

(assert (=> (and start!3109 (= P!6 P!6) t!259) tb!69))

(declare-fun result!69 () Bool)

(assert (=> tb!69 (= result!69 true)))

(assert (=> b!17296 t!259))

(declare-fun b_and!91 () Bool)

(assert (= b_and!89 (and (=> t!259 result!69) b_and!91)))

(declare-fun b_lambda!8011 () Bool)

(assert (=> (not b_lambda!8011) (not b!17291)))

(declare-fun t!261 () Bool)

(declare-fun tb!71 () Bool)

(assert (=> (and start!3109 (= P!6 P!6) t!261) tb!71))

(declare-fun result!71 () Bool)

(assert (=> tb!71 (= result!71 true)))

(assert (=> b!17291 t!261))

(declare-fun b_and!93 () Bool)

(assert (= b_and!91 (and (=> t!261 result!71) b_and!93)))

(declare-fun b_lambda!8013 () Bool)

(assert (=> (not b_lambda!8013) (not b!17295)))

(declare-fun t!263 () Bool)

(declare-fun tb!73 () Bool)

(assert (=> (and start!3109 (= P!6 P!6) t!263) tb!73))

(declare-fun result!73 () Bool)

(assert (=> tb!73 (= result!73 true)))

(assert (=> b!17295 t!263))

(declare-fun b_and!95 () Bool)

(assert (= b_and!93 (and (=> t!263 result!73) b_and!95)))

(declare-fun b_lambda!8015 () Bool)

(assert (=> (not b_lambda!8015) (not b!17297)))

(declare-fun t!265 () Bool)

(declare-fun tb!75 () Bool)

(assert (=> (and start!3109 (= P!6 P!6) t!265) tb!75))

(declare-fun result!75 () Bool)

(assert (=> tb!75 (= result!75 true)))

(assert (=> b!17297 t!265))

(declare-fun b_and!97 () Bool)

(assert (= b_and!95 (and (=> t!265 result!75) b_and!97)))

(declare-fun m!27471 () Bool)

(assert (=> b!17290 m!27471))

(assert (=> b!17290 m!27471))

(declare-fun m!27473 () Bool)

(assert (=> b!17290 m!27473))

(declare-fun m!27475 () Bool)

(assert (=> b!17295 m!27475))

(assert (=> b!17295 m!27475))

(declare-fun m!27477 () Bool)

(assert (=> b!17295 m!27477))

(declare-fun m!27479 () Bool)

(assert (=> b!17291 m!27479))

(assert (=> b!17291 m!27479))

(declare-fun m!27481 () Bool)

(assert (=> b!17291 m!27481))

(declare-fun m!27483 () Bool)

(assert (=> start!3109 m!27483))

(declare-fun m!27485 () Bool)

(assert (=> b!17296 m!27485))

(assert (=> b!17296 m!27485))

(declare-fun m!27487 () Bool)

(assert (=> b!17296 m!27487))

(declare-fun m!27489 () Bool)

(assert (=> b!17292 m!27489))

(assert (=> b!17292 m!27489))

(declare-fun m!27491 () Bool)

(assert (=> b!17292 m!27491))

(declare-fun m!27493 () Bool)

(assert (=> b!17297 m!27493))

(assert (=> b!17297 m!27493))

(declare-fun m!27495 () Bool)

(assert (=> b!17297 m!27495))

(declare-fun m!27497 () Bool)

(assert (=> b!17293 m!27497))

(assert (=> b!17293 m!27497))

(declare-fun m!27499 () Bool)

(assert (=> b!17293 m!27499))

(push 1)

(assert (not start!3109))

(assert (not b_lambda!8015))

(assert (not b_lambda!8007))

(assert (not b_lambda!8009))

(assert (not b_lambda!8003))

(assert (not b_lambda!8011))

(assert b_and!97)

(assert (not b_lambda!8013))

(assert (not b_lambda!8005))

(assert (not b_next!21))

(check-sat)

(pop 1)

(push 1)

(assert b_and!97)

(assert (not b_next!21))

(check-sat)

(pop 1)

