; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3103 () Bool)

(assert start!3103)

(declare-fun b_free!15 () Bool)

(declare-fun b_next!15 () Bool)

(assert (=> start!3103 (= b_free!15 (not b_next!15))))

(declare-fun tp!23 () Bool)

(declare-fun b_and!47 () Bool)

(assert (=> start!3103 (= tp!23 b_and!47)))

(declare-fun b!17230 () Bool)

(declare-fun res!13659 () Bool)

(declare-fun e!9340 () Bool)

(assert (=> b!17230 (=> (not res!13659) (not e!9340))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1364 0))(
  ( (array!1365 (arr!594 (Array (_ BitVec 32) (_ BitVec 32))) (size!594 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1364)

(declare-fun dynLambda!50 (Int (_ BitVec 32)) Bool)

(assert (=> b!17230 (= res!13659 (dynLambda!50 P!6 (select (arr!594 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17231 () Bool)

(declare-fun res!13662 () Bool)

(assert (=> b!17231 (=> (not res!13662) (not e!9340))))

(assert (=> b!17231 (= res!13662 (dynLambda!50 P!6 (select (arr!594 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17232 () Bool)

(declare-fun res!13661 () Bool)

(assert (=> b!17232 (=> (not res!13661) (not e!9340))))

(assert (=> b!17232 (= res!13661 (dynLambda!50 P!6 (select (arr!594 a!13) #b00000000000000000000000000000000)))))

(declare-fun res!13658 () Bool)

(assert (=> start!3103 (=> (not res!13658) (not e!9340))))

(assert (=> start!3103 (= res!13658 (= (size!594 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3103 e!9340))

(declare-fun array_inv!542 (array!1364) Bool)

(assert (=> start!3103 (array_inv!542 a!13)))

(assert (=> start!3103 tp!23))

(declare-fun b!17233 () Bool)

(declare-fun res!13660 () Bool)

(assert (=> b!17233 (=> (not res!13660) (not e!9340))))

(assert (=> b!17233 (= res!13660 (dynLambda!50 P!6 (select (arr!594 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17234 () Bool)

(assert (=> b!17234 (= e!9340 (bvsge #b00000000000000000000000000000100 (size!594 a!13)))))

(assert (= (and start!3103 res!13658) b!17232))

(assert (= (and b!17232 res!13661) b!17231))

(assert (= (and b!17231 res!13662) b!17233))

(assert (= (and b!17233 res!13660) b!17230))

(assert (= (and b!17230 res!13659) b!17234))

(declare-fun b_lambda!7973 () Bool)

(assert (=> (not b_lambda!7973) (not b!17230)))

(declare-fun t!223 () Bool)

(declare-fun tb!33 () Bool)

(assert (=> (and start!3103 (= P!6 P!6) t!223) tb!33))

(declare-fun result!33 () Bool)

(assert (=> tb!33 (= result!33 true)))

(assert (=> b!17230 t!223))

(declare-fun b_and!49 () Bool)

(assert (= b_and!47 (and (=> t!223 result!33) b_and!49)))

(declare-fun b_lambda!7975 () Bool)

(assert (=> (not b_lambda!7975) (not b!17231)))

(declare-fun t!225 () Bool)

(declare-fun tb!35 () Bool)

(assert (=> (and start!3103 (= P!6 P!6) t!225) tb!35))

(declare-fun result!35 () Bool)

(assert (=> tb!35 (= result!35 true)))

(assert (=> b!17231 t!225))

(declare-fun b_and!51 () Bool)

(assert (= b_and!49 (and (=> t!225 result!35) b_and!51)))

(declare-fun b_lambda!7977 () Bool)

(assert (=> (not b_lambda!7977) (not b!17232)))

(declare-fun t!227 () Bool)

(declare-fun tb!37 () Bool)

(assert (=> (and start!3103 (= P!6 P!6) t!227) tb!37))

(declare-fun result!37 () Bool)

(assert (=> tb!37 (= result!37 true)))

(assert (=> b!17232 t!227))

(declare-fun b_and!53 () Bool)

(assert (= b_and!51 (and (=> t!227 result!37) b_and!53)))

(declare-fun b_lambda!7979 () Bool)

(assert (=> (not b_lambda!7979) (not b!17233)))

(declare-fun t!229 () Bool)

(declare-fun tb!39 () Bool)

(assert (=> (and start!3103 (= P!6 P!6) t!229) tb!39))

(declare-fun result!39 () Bool)

(assert (=> tb!39 (= result!39 true)))

(assert (=> b!17233 t!229))

(declare-fun b_and!55 () Bool)

(assert (= b_and!53 (and (=> t!229 result!39) b_and!55)))

(declare-fun m!27405 () Bool)

(assert (=> start!3103 m!27405))

(declare-fun m!27407 () Bool)

(assert (=> b!17230 m!27407))

(assert (=> b!17230 m!27407))

(declare-fun m!27409 () Bool)

(assert (=> b!17230 m!27409))

(declare-fun m!27411 () Bool)

(assert (=> b!17232 m!27411))

(assert (=> b!17232 m!27411))

(declare-fun m!27413 () Bool)

(assert (=> b!17232 m!27413))

(declare-fun m!27415 () Bool)

(assert (=> b!17231 m!27415))

(assert (=> b!17231 m!27415))

(declare-fun m!27417 () Bool)

(assert (=> b!17231 m!27417))

(declare-fun m!27419 () Bool)

(assert (=> b!17233 m!27419))

(assert (=> b!17233 m!27419))

(declare-fun m!27421 () Bool)

(assert (=> b!17233 m!27421))

(push 1)

(assert (not b_lambda!7973))

(assert (not b_next!15))

(assert (not b_lambda!7977))

(assert (not start!3103))

(assert (not b_lambda!7979))

(assert (not b_lambda!7975))

(assert b_and!55)

(check-sat)

(pop 1)

(push 1)

(assert b_and!55)

(assert (not b_next!15))

(check-sat)

(pop 1)

