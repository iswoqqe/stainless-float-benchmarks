; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3127 () Bool)

(assert start!3127)

(declare-fun b_free!39 () Bool)

(declare-fun b_next!39 () Bool)

(assert (=> start!3127 (= b_free!39 (not b_next!39))))

(declare-fun tp!59 () Bool)

(declare-fun b_and!299 () Bool)

(assert (=> start!3127 (= tp!59 b_and!299)))

(declare-fun b!17632 () Bool)

(declare-fun res!14065 () Bool)

(declare-fun e!9411 () Bool)

(assert (=> b!17632 (=> (not res!14065) (not e!9411))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1388 0))(
  ( (array!1389 (arr!606 (Array (_ BitVec 32) (_ BitVec 32))) (size!606 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1388)

(declare-fun dynLambda!62 (Int (_ BitVec 32)) Bool)

(assert (=> b!17632 (= res!14065 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000001011)))))

(declare-fun b!17633 () Bool)

(declare-fun res!14073 () Bool)

(assert (=> b!17633 (=> (not res!14073) (not e!9411))))

(assert (=> b!17633 (= res!14073 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17634 () Bool)

(declare-fun res!14062 () Bool)

(assert (=> b!17634 (=> (not res!14062) (not e!9411))))

(assert (=> b!17634 (= res!14062 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17635 () Bool)

(declare-fun res!14064 () Bool)

(assert (=> b!17635 (=> (not res!14064) (not e!9411))))

(assert (=> b!17635 (= res!14064 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000001100)))))

(declare-fun b!17636 () Bool)

(declare-fun res!14068 () Bool)

(assert (=> b!17636 (=> (not res!14068) (not e!9411))))

(assert (=> b!17636 (= res!14068 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!17637 () Bool)

(declare-fun res!14072 () Bool)

(assert (=> b!17637 (=> (not res!14072) (not e!9411))))

(assert (=> b!17637 (= res!14072 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000001110)))))

(declare-fun res!14066 () Bool)

(assert (=> start!3127 (=> (not res!14066) (not e!9411))))

(assert (=> start!3127 (= res!14066 (= (size!606 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3127 e!9411))

(declare-fun array_inv!554 (array!1388) Bool)

(assert (=> start!3127 (array_inv!554 a!13)))

(assert (=> start!3127 tp!59))

(declare-fun b!17638 () Bool)

(declare-fun res!14069 () Bool)

(assert (=> b!17638 (=> (not res!14069) (not e!9411))))

(assert (=> b!17638 (= res!14069 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000001010)))))

(declare-fun b!17639 () Bool)

(declare-fun res!14061 () Bool)

(assert (=> b!17639 (=> (not res!14061) (not e!9411))))

(assert (=> b!17639 (= res!14061 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000001101)))))

(declare-fun b!17640 () Bool)

(declare-fun res!14060 () Bool)

(assert (=> b!17640 (=> (not res!14060) (not e!9411))))

(assert (=> b!17640 (= res!14060 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000001001)))))

(declare-fun b!17641 () Bool)

(declare-fun res!14071 () Bool)

(assert (=> b!17641 (=> (not res!14071) (not e!9411))))

(assert (=> b!17641 (= res!14071 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17642 () Bool)

(declare-fun res!14076 () Bool)

(assert (=> b!17642 (=> (not res!14076) (not e!9411))))

(assert (=> b!17642 (= res!14076 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!17643 () Bool)

(assert (=> b!17643 (= e!9411 (bvsge #b00000000000000000000000000010000 (size!606 a!13)))))

(declare-fun b!17644 () Bool)

(declare-fun res!14074 () Bool)

(assert (=> b!17644 (=> (not res!14074) (not e!9411))))

(assert (=> b!17644 (= res!14074 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000001111)))))

(declare-fun b!17645 () Bool)

(declare-fun res!14063 () Bool)

(assert (=> b!17645 (=> (not res!14063) (not e!9411))))

(assert (=> b!17645 (= res!14063 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17646 () Bool)

(declare-fun res!14070 () Bool)

(assert (=> b!17646 (=> (not res!14070) (not e!9411))))

(assert (=> b!17646 (= res!14070 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!17647 () Bool)

(declare-fun res!14067 () Bool)

(assert (=> b!17647 (=> (not res!14067) (not e!9411))))

(assert (=> b!17647 (= res!14067 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!17648 () Bool)

(declare-fun res!14075 () Bool)

(assert (=> b!17648 (=> (not res!14075) (not e!9411))))

(assert (=> b!17648 (= res!14075 (dynLambda!62 P!6 (select (arr!606 a!13) #b00000000000000000000000000000010)))))

(assert (= (and start!3127 res!14066) b!17641))

(assert (= (and b!17641 res!14071) b!17633))

(assert (= (and b!17633 res!14073) b!17648))

(assert (= (and b!17648 res!14075) b!17634))

(assert (= (and b!17634 res!14062) b!17645))

(assert (= (and b!17645 res!14063) b!17642))

(assert (= (and b!17642 res!14076) b!17646))

(assert (= (and b!17646 res!14070) b!17647))

(assert (= (and b!17647 res!14067) b!17636))

(assert (= (and b!17636 res!14068) b!17640))

(assert (= (and b!17640 res!14060) b!17638))

(assert (= (and b!17638 res!14069) b!17632))

(assert (= (and b!17632 res!14065) b!17635))

(assert (= (and b!17635 res!14064) b!17639))

(assert (= (and b!17639 res!14061) b!17637))

(assert (= (and b!17637 res!14072) b!17644))

(assert (= (and b!17644 res!14074) b!17643))

(declare-fun b_lambda!8201 () Bool)

(assert (=> (not b_lambda!8201) (not b!17632)))

(declare-fun t!451 () Bool)

(declare-fun tb!261 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!451) tb!261))

(declare-fun result!261 () Bool)

(assert (=> tb!261 (= result!261 true)))

(assert (=> b!17632 t!451))

(declare-fun b_and!301 () Bool)

(assert (= b_and!299 (and (=> t!451 result!261) b_and!301)))

(declare-fun b_lambda!8203 () Bool)

(assert (=> (not b_lambda!8203) (not b!17642)))

(declare-fun t!453 () Bool)

(declare-fun tb!263 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!453) tb!263))

(declare-fun result!263 () Bool)

(assert (=> tb!263 (= result!263 true)))

(assert (=> b!17642 t!453))

(declare-fun b_and!303 () Bool)

(assert (= b_and!301 (and (=> t!453 result!263) b_and!303)))

(declare-fun b_lambda!8205 () Bool)

(assert (=> (not b_lambda!8205) (not b!17639)))

(declare-fun t!455 () Bool)

(declare-fun tb!265 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!455) tb!265))

(declare-fun result!265 () Bool)

(assert (=> tb!265 (= result!265 true)))

(assert (=> b!17639 t!455))

(declare-fun b_and!305 () Bool)

(assert (= b_and!303 (and (=> t!455 result!265) b_and!305)))

(declare-fun b_lambda!8207 () Bool)

(assert (=> (not b_lambda!8207) (not b!17648)))

(declare-fun t!457 () Bool)

(declare-fun tb!267 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!457) tb!267))

(declare-fun result!267 () Bool)

(assert (=> tb!267 (= result!267 true)))

(assert (=> b!17648 t!457))

(declare-fun b_and!307 () Bool)

(assert (= b_and!305 (and (=> t!457 result!267) b_and!307)))

(declare-fun b_lambda!8209 () Bool)

(assert (=> (not b_lambda!8209) (not b!17635)))

(declare-fun t!459 () Bool)

(declare-fun tb!269 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!459) tb!269))

(declare-fun result!269 () Bool)

(assert (=> tb!269 (= result!269 true)))

(assert (=> b!17635 t!459))

(declare-fun b_and!309 () Bool)

(assert (= b_and!307 (and (=> t!459 result!269) b_and!309)))

(declare-fun b_lambda!8211 () Bool)

(assert (=> (not b_lambda!8211) (not b!17634)))

(declare-fun t!461 () Bool)

(declare-fun tb!271 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!461) tb!271))

(declare-fun result!271 () Bool)

(assert (=> tb!271 (= result!271 true)))

(assert (=> b!17634 t!461))

(declare-fun b_and!311 () Bool)

(assert (= b_and!309 (and (=> t!461 result!271) b_and!311)))

(declare-fun b_lambda!8213 () Bool)

(assert (=> (not b_lambda!8213) (not b!17638)))

(declare-fun t!463 () Bool)

(declare-fun tb!273 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!463) tb!273))

(declare-fun result!273 () Bool)

(assert (=> tb!273 (= result!273 true)))

(assert (=> b!17638 t!463))

(declare-fun b_and!313 () Bool)

(assert (= b_and!311 (and (=> t!463 result!273) b_and!313)))

(declare-fun b_lambda!8215 () Bool)

(assert (=> (not b_lambda!8215) (not b!17645)))

(declare-fun t!465 () Bool)

(declare-fun tb!275 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!465) tb!275))

(declare-fun result!275 () Bool)

(assert (=> tb!275 (= result!275 true)))

(assert (=> b!17645 t!465))

(declare-fun b_and!315 () Bool)

(assert (= b_and!313 (and (=> t!465 result!275) b_and!315)))

(declare-fun b_lambda!8217 () Bool)

(assert (=> (not b_lambda!8217) (not b!17641)))

(declare-fun t!467 () Bool)

(declare-fun tb!277 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!467) tb!277))

(declare-fun result!277 () Bool)

(assert (=> tb!277 (= result!277 true)))

(assert (=> b!17641 t!467))

(declare-fun b_and!317 () Bool)

(assert (= b_and!315 (and (=> t!467 result!277) b_and!317)))

(declare-fun b_lambda!8219 () Bool)

(assert (=> (not b_lambda!8219) (not b!17644)))

(declare-fun t!469 () Bool)

(declare-fun tb!279 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!469) tb!279))

(declare-fun result!279 () Bool)

(assert (=> tb!279 (= result!279 true)))

(assert (=> b!17644 t!469))

(declare-fun b_and!319 () Bool)

(assert (= b_and!317 (and (=> t!469 result!279) b_and!319)))

(declare-fun b_lambda!8221 () Bool)

(assert (=> (not b_lambda!8221) (not b!17637)))

(declare-fun t!471 () Bool)

(declare-fun tb!281 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!471) tb!281))

(declare-fun result!281 () Bool)

(assert (=> tb!281 (= result!281 true)))

(assert (=> b!17637 t!471))

(declare-fun b_and!321 () Bool)

(assert (= b_and!319 (and (=> t!471 result!281) b_and!321)))

(declare-fun b_lambda!8223 () Bool)

(assert (=> (not b_lambda!8223) (not b!17636)))

(declare-fun t!473 () Bool)

(declare-fun tb!283 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!473) tb!283))

(declare-fun result!283 () Bool)

(assert (=> tb!283 (= result!283 true)))

(assert (=> b!17636 t!473))

(declare-fun b_and!323 () Bool)

(assert (= b_and!321 (and (=> t!473 result!283) b_and!323)))

(declare-fun b_lambda!8225 () Bool)

(assert (=> (not b_lambda!8225) (not b!17646)))

(declare-fun t!475 () Bool)

(declare-fun tb!285 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!475) tb!285))

(declare-fun result!285 () Bool)

(assert (=> tb!285 (= result!285 true)))

(assert (=> b!17646 t!475))

(declare-fun b_and!325 () Bool)

(assert (= b_and!323 (and (=> t!475 result!285) b_and!325)))

(declare-fun b_lambda!8227 () Bool)

(assert (=> (not b_lambda!8227) (not b!17640)))

(declare-fun t!477 () Bool)

(declare-fun tb!287 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!477) tb!287))

(declare-fun result!287 () Bool)

(assert (=> tb!287 (= result!287 true)))

(assert (=> b!17640 t!477))

(declare-fun b_and!327 () Bool)

(assert (= b_and!325 (and (=> t!477 result!287) b_and!327)))

(declare-fun b_lambda!8229 () Bool)

(assert (=> (not b_lambda!8229) (not b!17647)))

(declare-fun t!479 () Bool)

(declare-fun tb!289 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!479) tb!289))

(declare-fun result!289 () Bool)

(assert (=> tb!289 (= result!289 true)))

(assert (=> b!17647 t!479))

(declare-fun b_and!329 () Bool)

(assert (= b_and!327 (and (=> t!479 result!289) b_and!329)))

(declare-fun b_lambda!8231 () Bool)

(assert (=> (not b_lambda!8231) (not b!17633)))

(declare-fun t!481 () Bool)

(declare-fun tb!291 () Bool)

(assert (=> (and start!3127 (= P!6 P!6) t!481) tb!291))

(declare-fun result!291 () Bool)

(assert (=> tb!291 (= result!291 true)))

(assert (=> b!17633 t!481))

(declare-fun b_and!331 () Bool)

(assert (= b_and!329 (and (=> t!481 result!291) b_and!331)))

(declare-fun m!27885 () Bool)

(assert (=> b!17637 m!27885))

(assert (=> b!17637 m!27885))

(declare-fun m!27887 () Bool)

(assert (=> b!17637 m!27887))

(declare-fun m!27889 () Bool)

(assert (=> b!17646 m!27889))

(assert (=> b!17646 m!27889))

(declare-fun m!27891 () Bool)

(assert (=> b!17646 m!27891))

(declare-fun m!27893 () Bool)

(assert (=> b!17644 m!27893))

(assert (=> b!17644 m!27893))

(declare-fun m!27895 () Bool)

(assert (=> b!17644 m!27895))

(declare-fun m!27897 () Bool)

(assert (=> b!17633 m!27897))

(assert (=> b!17633 m!27897))

(declare-fun m!27899 () Bool)

(assert (=> b!17633 m!27899))

(declare-fun m!27901 () Bool)

(assert (=> b!17641 m!27901))

(assert (=> b!17641 m!27901))

(declare-fun m!27903 () Bool)

(assert (=> b!17641 m!27903))

(declare-fun m!27905 () Bool)

(assert (=> b!17638 m!27905))

(assert (=> b!17638 m!27905))

(declare-fun m!27907 () Bool)

(assert (=> b!17638 m!27907))

(declare-fun m!27909 () Bool)

(assert (=> b!17642 m!27909))

(assert (=> b!17642 m!27909))

(declare-fun m!27911 () Bool)

(assert (=> b!17642 m!27911))

(declare-fun m!27913 () Bool)

(assert (=> b!17639 m!27913))

(assert (=> b!17639 m!27913))

(declare-fun m!27915 () Bool)

(assert (=> b!17639 m!27915))

(declare-fun m!27917 () Bool)

(assert (=> b!17648 m!27917))

(assert (=> b!17648 m!27917))

(declare-fun m!27919 () Bool)

(assert (=> b!17648 m!27919))

(declare-fun m!27921 () Bool)

(assert (=> b!17645 m!27921))

(assert (=> b!17645 m!27921))

(declare-fun m!27923 () Bool)

(assert (=> b!17645 m!27923))

(declare-fun m!27925 () Bool)

(assert (=> b!17635 m!27925))

(assert (=> b!17635 m!27925))

(declare-fun m!27927 () Bool)

(assert (=> b!17635 m!27927))

(declare-fun m!27929 () Bool)

(assert (=> b!17647 m!27929))

(assert (=> b!17647 m!27929))

(declare-fun m!27931 () Bool)

(assert (=> b!17647 m!27931))

(declare-fun m!27933 () Bool)

(assert (=> b!17632 m!27933))

(assert (=> b!17632 m!27933))

(declare-fun m!27935 () Bool)

(assert (=> b!17632 m!27935))

(declare-fun m!27937 () Bool)

(assert (=> start!3127 m!27937))

(declare-fun m!27939 () Bool)

(assert (=> b!17634 m!27939))

(assert (=> b!17634 m!27939))

(declare-fun m!27941 () Bool)

(assert (=> b!17634 m!27941))

(declare-fun m!27943 () Bool)

(assert (=> b!17636 m!27943))

(assert (=> b!17636 m!27943))

(declare-fun m!27945 () Bool)

(assert (=> b!17636 m!27945))

(declare-fun m!27947 () Bool)

(assert (=> b!17640 m!27947))

(assert (=> b!17640 m!27947))

(declare-fun m!27949 () Bool)

(assert (=> b!17640 m!27949))

(push 1)

(assert (not b_lambda!8209))

(assert (not b_lambda!8211))

(assert (not b_lambda!8201))

(assert (not b_lambda!8203))

(assert (not b_lambda!8205))

(assert (not b_lambda!8229))

(assert b_and!331)

(assert (not b_lambda!8213))

(assert (not b_lambda!8225))

(assert (not b_lambda!8207))

(assert (not b_lambda!8215))

(assert (not b_lambda!8221))

(assert (not b_lambda!8231))

(assert (not start!3127))

(assert (not b_lambda!8217))

(assert (not b_lambda!8219))

(assert (not b_lambda!8227))

(assert (not b_next!39))

(assert (not b_lambda!8223))

(check-sat)

(pop 1)

(push 1)

(assert b_and!331)

(assert (not b_next!39))

(check-sat)

(pop 1)

