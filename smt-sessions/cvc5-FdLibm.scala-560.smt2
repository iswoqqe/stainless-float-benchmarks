; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3125 () Bool)

(assert start!3125)

(declare-fun b_free!37 () Bool)

(declare-fun b_next!37 () Bool)

(assert (=> start!3125 (= b_free!37 (not b_next!37))))

(declare-fun tp!56 () Bool)

(declare-fun b_and!267 () Bool)

(assert (=> start!3125 (= tp!56 b_and!267)))

(declare-fun b!17582 () Bool)

(declare-fun res!14012 () Bool)

(declare-fun e!9405 () Bool)

(assert (=> b!17582 (=> (not res!14012) (not e!9405))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1386 0))(
  ( (array!1387 (arr!605 (Array (_ BitVec 32) (_ BitVec 32))) (size!605 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1386)

(declare-fun dynLambda!61 (Int (_ BitVec 32)) Bool)

(assert (=> b!17582 (= res!14012 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17583 () Bool)

(declare-fun res!14017 () Bool)

(assert (=> b!17583 (=> (not res!14017) (not e!9405))))

(assert (=> b!17583 (= res!14017 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17584 () Bool)

(declare-fun res!14020 () Bool)

(assert (=> b!17584 (=> (not res!14020) (not e!9405))))

(assert (=> b!17584 (= res!14020 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17585 () Bool)

(declare-fun res!14021 () Bool)

(assert (=> b!17585 (=> (not res!14021) (not e!9405))))

(assert (=> b!17585 (= res!14021 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000001001)))))

(declare-fun b!17586 () Bool)

(declare-fun res!14024 () Bool)

(assert (=> b!17586 (=> (not res!14024) (not e!9405))))

(assert (=> b!17586 (= res!14024 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000001010)))))

(declare-fun b!17587 () Bool)

(declare-fun res!14010 () Bool)

(assert (=> b!17587 (=> (not res!14010) (not e!9405))))

(assert (=> b!17587 (= res!14010 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000000101)))))

(declare-fun res!14025 () Bool)

(assert (=> start!3125 (=> (not res!14025) (not e!9405))))

(assert (=> start!3125 (= res!14025 (= (size!605 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3125 e!9405))

(declare-fun array_inv!553 (array!1386) Bool)

(assert (=> start!3125 (array_inv!553 a!13)))

(assert (=> start!3125 tp!56))

(declare-fun b!17588 () Bool)

(declare-fun res!14011 () Bool)

(assert (=> b!17588 (=> (not res!14011) (not e!9405))))

(assert (=> b!17588 (= res!14011 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!17589 () Bool)

(declare-fun res!14015 () Bool)

(assert (=> b!17589 (=> (not res!14015) (not e!9405))))

(assert (=> b!17589 (= res!14015 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000001110)))))

(declare-fun b!17590 () Bool)

(assert (=> b!17590 (= e!9405 (bvsge #b00000000000000000000000000001111 (size!605 a!13)))))

(declare-fun b!17591 () Bool)

(declare-fun res!14022 () Bool)

(assert (=> b!17591 (=> (not res!14022) (not e!9405))))

(assert (=> b!17591 (= res!14022 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17592 () Bool)

(declare-fun res!14016 () Bool)

(assert (=> b!17592 (=> (not res!14016) (not e!9405))))

(assert (=> b!17592 (= res!14016 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!17593 () Bool)

(declare-fun res!14013 () Bool)

(assert (=> b!17593 (=> (not res!14013) (not e!9405))))

(assert (=> b!17593 (= res!14013 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000001100)))))

(declare-fun b!17594 () Bool)

(declare-fun res!14014 () Bool)

(assert (=> b!17594 (=> (not res!14014) (not e!9405))))

(assert (=> b!17594 (= res!14014 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!17595 () Bool)

(declare-fun res!14023 () Bool)

(assert (=> b!17595 (=> (not res!14023) (not e!9405))))

(assert (=> b!17595 (= res!14023 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000001011)))))

(declare-fun b!17596 () Bool)

(declare-fun res!14018 () Bool)

(assert (=> b!17596 (=> (not res!14018) (not e!9405))))

(assert (=> b!17596 (= res!14018 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17597 () Bool)

(declare-fun res!14019 () Bool)

(assert (=> b!17597 (=> (not res!14019) (not e!9405))))

(assert (=> b!17597 (= res!14019 (dynLambda!61 P!6 (select (arr!605 a!13) #b00000000000000000000000000001101)))))

(assert (= (and start!3125 res!14025) b!17583))

(assert (= (and b!17583 res!14017) b!17582))

(assert (= (and b!17582 res!14012) b!17584))

(assert (= (and b!17584 res!14020) b!17596))

(assert (= (and b!17596 res!14018) b!17591))

(assert (= (and b!17591 res!14022) b!17587))

(assert (= (and b!17587 res!14010) b!17594))

(assert (= (and b!17594 res!14014) b!17588))

(assert (= (and b!17588 res!14011) b!17592))

(assert (= (and b!17592 res!14016) b!17585))

(assert (= (and b!17585 res!14021) b!17586))

(assert (= (and b!17586 res!14024) b!17595))

(assert (= (and b!17595 res!14023) b!17593))

(assert (= (and b!17593 res!14013) b!17597))

(assert (= (and b!17597 res!14019) b!17589))

(assert (= (and b!17589 res!14015) b!17590))

(declare-fun b_lambda!8171 () Bool)

(assert (=> (not b_lambda!8171) (not b!17594)))

(declare-fun t!421 () Bool)

(declare-fun tb!231 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!421) tb!231))

(declare-fun result!231 () Bool)

(assert (=> tb!231 (= result!231 true)))

(assert (=> b!17594 t!421))

(declare-fun b_and!269 () Bool)

(assert (= b_and!267 (and (=> t!421 result!231) b_and!269)))

(declare-fun b_lambda!8173 () Bool)

(assert (=> (not b_lambda!8173) (not b!17596)))

(declare-fun t!423 () Bool)

(declare-fun tb!233 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!423) tb!233))

(declare-fun result!233 () Bool)

(assert (=> tb!233 (= result!233 true)))

(assert (=> b!17596 t!423))

(declare-fun b_and!271 () Bool)

(assert (= b_and!269 (and (=> t!423 result!233) b_and!271)))

(declare-fun b_lambda!8175 () Bool)

(assert (=> (not b_lambda!8175) (not b!17595)))

(declare-fun t!425 () Bool)

(declare-fun tb!235 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!425) tb!235))

(declare-fun result!235 () Bool)

(assert (=> tb!235 (= result!235 true)))

(assert (=> b!17595 t!425))

(declare-fun b_and!273 () Bool)

(assert (= b_and!271 (and (=> t!425 result!235) b_and!273)))

(declare-fun b_lambda!8177 () Bool)

(assert (=> (not b_lambda!8177) (not b!17587)))

(declare-fun t!427 () Bool)

(declare-fun tb!237 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!427) tb!237))

(declare-fun result!237 () Bool)

(assert (=> tb!237 (= result!237 true)))

(assert (=> b!17587 t!427))

(declare-fun b_and!275 () Bool)

(assert (= b_and!273 (and (=> t!427 result!237) b_and!275)))

(declare-fun b_lambda!8179 () Bool)

(assert (=> (not b_lambda!8179) (not b!17584)))

(declare-fun t!429 () Bool)

(declare-fun tb!239 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!429) tb!239))

(declare-fun result!239 () Bool)

(assert (=> tb!239 (= result!239 true)))

(assert (=> b!17584 t!429))

(declare-fun b_and!277 () Bool)

(assert (= b_and!275 (and (=> t!429 result!239) b_and!277)))

(declare-fun b_lambda!8181 () Bool)

(assert (=> (not b_lambda!8181) (not b!17592)))

(declare-fun t!431 () Bool)

(declare-fun tb!241 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!431) tb!241))

(declare-fun result!241 () Bool)

(assert (=> tb!241 (= result!241 true)))

(assert (=> b!17592 t!431))

(declare-fun b_and!279 () Bool)

(assert (= b_and!277 (and (=> t!431 result!241) b_and!279)))

(declare-fun b_lambda!8183 () Bool)

(assert (=> (not b_lambda!8183) (not b!17591)))

(declare-fun t!433 () Bool)

(declare-fun tb!243 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!433) tb!243))

(declare-fun result!243 () Bool)

(assert (=> tb!243 (= result!243 true)))

(assert (=> b!17591 t!433))

(declare-fun b_and!281 () Bool)

(assert (= b_and!279 (and (=> t!433 result!243) b_and!281)))

(declare-fun b_lambda!8185 () Bool)

(assert (=> (not b_lambda!8185) (not b!17585)))

(declare-fun t!435 () Bool)

(declare-fun tb!245 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!435) tb!245))

(declare-fun result!245 () Bool)

(assert (=> tb!245 (= result!245 true)))

(assert (=> b!17585 t!435))

(declare-fun b_and!283 () Bool)

(assert (= b_and!281 (and (=> t!435 result!245) b_and!283)))

(declare-fun b_lambda!8187 () Bool)

(assert (=> (not b_lambda!8187) (not b!17593)))

(declare-fun t!437 () Bool)

(declare-fun tb!247 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!437) tb!247))

(declare-fun result!247 () Bool)

(assert (=> tb!247 (= result!247 true)))

(assert (=> b!17593 t!437))

(declare-fun b_and!285 () Bool)

(assert (= b_and!283 (and (=> t!437 result!247) b_and!285)))

(declare-fun b_lambda!8189 () Bool)

(assert (=> (not b_lambda!8189) (not b!17589)))

(declare-fun t!439 () Bool)

(declare-fun tb!249 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!439) tb!249))

(declare-fun result!249 () Bool)

(assert (=> tb!249 (= result!249 true)))

(assert (=> b!17589 t!439))

(declare-fun b_and!287 () Bool)

(assert (= b_and!285 (and (=> t!439 result!249) b_and!287)))

(declare-fun b_lambda!8191 () Bool)

(assert (=> (not b_lambda!8191) (not b!17583)))

(declare-fun t!441 () Bool)

(declare-fun tb!251 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!441) tb!251))

(declare-fun result!251 () Bool)

(assert (=> tb!251 (= result!251 true)))

(assert (=> b!17583 t!441))

(declare-fun b_and!289 () Bool)

(assert (= b_and!287 (and (=> t!441 result!251) b_and!289)))

(declare-fun b_lambda!8193 () Bool)

(assert (=> (not b_lambda!8193) (not b!17582)))

(declare-fun t!443 () Bool)

(declare-fun tb!253 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!443) tb!253))

(declare-fun result!253 () Bool)

(assert (=> tb!253 (= result!253 true)))

(assert (=> b!17582 t!443))

(declare-fun b_and!291 () Bool)

(assert (= b_and!289 (and (=> t!443 result!253) b_and!291)))

(declare-fun b_lambda!8195 () Bool)

(assert (=> (not b_lambda!8195) (not b!17586)))

(declare-fun t!445 () Bool)

(declare-fun tb!255 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!445) tb!255))

(declare-fun result!255 () Bool)

(assert (=> tb!255 (= result!255 true)))

(assert (=> b!17586 t!445))

(declare-fun b_and!293 () Bool)

(assert (= b_and!291 (and (=> t!445 result!255) b_and!293)))

(declare-fun b_lambda!8197 () Bool)

(assert (=> (not b_lambda!8197) (not b!17597)))

(declare-fun t!447 () Bool)

(declare-fun tb!257 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!447) tb!257))

(declare-fun result!257 () Bool)

(assert (=> tb!257 (= result!257 true)))

(assert (=> b!17597 t!447))

(declare-fun b_and!295 () Bool)

(assert (= b_and!293 (and (=> t!447 result!257) b_and!295)))

(declare-fun b_lambda!8199 () Bool)

(assert (=> (not b_lambda!8199) (not b!17588)))

(declare-fun t!449 () Bool)

(declare-fun tb!259 () Bool)

(assert (=> (and start!3125 (= P!6 P!6) t!449) tb!259))

(declare-fun result!259 () Bool)

(assert (=> tb!259 (= result!259 true)))

(assert (=> b!17588 t!449))

(declare-fun b_and!297 () Bool)

(assert (= b_and!295 (and (=> t!449 result!259) b_and!297)))

(declare-fun m!27823 () Bool)

(assert (=> b!17584 m!27823))

(assert (=> b!17584 m!27823))

(declare-fun m!27825 () Bool)

(assert (=> b!17584 m!27825))

(declare-fun m!27827 () Bool)

(assert (=> b!17589 m!27827))

(assert (=> b!17589 m!27827))

(declare-fun m!27829 () Bool)

(assert (=> b!17589 m!27829))

(declare-fun m!27831 () Bool)

(assert (=> b!17585 m!27831))

(assert (=> b!17585 m!27831))

(declare-fun m!27833 () Bool)

(assert (=> b!17585 m!27833))

(declare-fun m!27835 () Bool)

(assert (=> b!17592 m!27835))

(assert (=> b!17592 m!27835))

(declare-fun m!27837 () Bool)

(assert (=> b!17592 m!27837))

(declare-fun m!27839 () Bool)

(assert (=> b!17587 m!27839))

(assert (=> b!17587 m!27839))

(declare-fun m!27841 () Bool)

(assert (=> b!17587 m!27841))

(declare-fun m!27843 () Bool)

(assert (=> b!17582 m!27843))

(assert (=> b!17582 m!27843))

(declare-fun m!27845 () Bool)

(assert (=> b!17582 m!27845))

(declare-fun m!27847 () Bool)

(assert (=> b!17586 m!27847))

(assert (=> b!17586 m!27847))

(declare-fun m!27849 () Bool)

(assert (=> b!17586 m!27849))

(declare-fun m!27851 () Bool)

(assert (=> b!17583 m!27851))

(assert (=> b!17583 m!27851))

(declare-fun m!27853 () Bool)

(assert (=> b!17583 m!27853))

(declare-fun m!27855 () Bool)

(assert (=> b!17595 m!27855))

(assert (=> b!17595 m!27855))

(declare-fun m!27857 () Bool)

(assert (=> b!17595 m!27857))

(declare-fun m!27859 () Bool)

(assert (=> b!17594 m!27859))

(assert (=> b!17594 m!27859))

(declare-fun m!27861 () Bool)

(assert (=> b!17594 m!27861))

(declare-fun m!27863 () Bool)

(assert (=> b!17588 m!27863))

(assert (=> b!17588 m!27863))

(declare-fun m!27865 () Bool)

(assert (=> b!17588 m!27865))

(declare-fun m!27867 () Bool)

(assert (=> b!17593 m!27867))

(assert (=> b!17593 m!27867))

(declare-fun m!27869 () Bool)

(assert (=> b!17593 m!27869))

(declare-fun m!27871 () Bool)

(assert (=> b!17591 m!27871))

(assert (=> b!17591 m!27871))

(declare-fun m!27873 () Bool)

(assert (=> b!17591 m!27873))

(declare-fun m!27875 () Bool)

(assert (=> b!17596 m!27875))

(assert (=> b!17596 m!27875))

(declare-fun m!27877 () Bool)

(assert (=> b!17596 m!27877))

(declare-fun m!27879 () Bool)

(assert (=> start!3125 m!27879))

(declare-fun m!27881 () Bool)

(assert (=> b!17597 m!27881))

(assert (=> b!17597 m!27881))

(declare-fun m!27883 () Bool)

(assert (=> b!17597 m!27883))

(push 1)

(assert (not b_lambda!8187))

(assert (not b_lambda!8195))

(assert (not start!3125))

(assert (not b_lambda!8173))

(assert (not b_lambda!8179))

(assert (not b_lambda!8193))

(assert (not b_lambda!8197))

(assert (not b_next!37))

(assert (not b_lambda!8171))

(assert (not b_lambda!8183))

(assert b_and!297)

(assert (not b_lambda!8189))

(assert (not b_lambda!8181))

(assert (not b_lambda!8185))

(assert (not b_lambda!8191))

(assert (not b_lambda!8175))

(assert (not b_lambda!8199))

(assert (not b_lambda!8177))

(check-sat)

(pop 1)

(push 1)

(assert b_and!297)

(assert (not b_next!37))

(check-sat)

(pop 1)

