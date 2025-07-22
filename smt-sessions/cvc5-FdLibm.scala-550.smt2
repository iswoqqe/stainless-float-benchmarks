; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3105 () Bool)

(assert start!3105)

(declare-fun b_free!17 () Bool)

(declare-fun b_next!17 () Bool)

(assert (=> start!3105 (= b_free!17 (not b_next!17))))

(declare-fun tp!26 () Bool)

(declare-fun b_and!57 () Bool)

(assert (=> start!3105 (= tp!26 b_and!57)))

(declare-fun b!17247 () Bool)

(declare-fun res!13676 () Bool)

(declare-fun e!9346 () Bool)

(assert (=> b!17247 (=> (not res!13676) (not e!9346))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1366 0))(
  ( (array!1367 (arr!595 (Array (_ BitVec 32) (_ BitVec 32))) (size!595 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1366)

(declare-fun dynLambda!51 (Int (_ BitVec 32)) Bool)

(assert (=> b!17247 (= res!13676 (dynLambda!51 P!6 (select (arr!595 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17248 () Bool)

(declare-fun res!13677 () Bool)

(assert (=> b!17248 (=> (not res!13677) (not e!9346))))

(assert (=> b!17248 (= res!13677 (dynLambda!51 P!6 (select (arr!595 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17249 () Bool)

(assert (=> b!17249 (= e!9346 (bvsge #b00000000000000000000000000000101 (size!595 a!13)))))

(declare-fun b!17250 () Bool)

(declare-fun res!13675 () Bool)

(assert (=> b!17250 (=> (not res!13675) (not e!9346))))

(assert (=> b!17250 (= res!13675 (dynLambda!51 P!6 (select (arr!595 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17251 () Bool)

(declare-fun res!13679 () Bool)

(assert (=> b!17251 (=> (not res!13679) (not e!9346))))

(assert (=> b!17251 (= res!13679 (dynLambda!51 P!6 (select (arr!595 a!13) #b00000000000000000000000000000010)))))

(declare-fun res!13678 () Bool)

(assert (=> start!3105 (=> (not res!13678) (not e!9346))))

(assert (=> start!3105 (= res!13678 (= (size!595 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3105 e!9346))

(declare-fun array_inv!543 (array!1366) Bool)

(assert (=> start!3105 (array_inv!543 a!13)))

(assert (=> start!3105 tp!26))

(declare-fun b!17252 () Bool)

(declare-fun res!13680 () Bool)

(assert (=> b!17252 (=> (not res!13680) (not e!9346))))

(assert (=> b!17252 (= res!13680 (dynLambda!51 P!6 (select (arr!595 a!13) #b00000000000000000000000000000000)))))

(assert (= (and start!3105 res!13678) b!17252))

(assert (= (and b!17252 res!13680) b!17248))

(assert (= (and b!17248 res!13677) b!17251))

(assert (= (and b!17251 res!13679) b!17247))

(assert (= (and b!17247 res!13676) b!17250))

(assert (= (and b!17250 res!13675) b!17249))

(declare-fun b_lambda!7981 () Bool)

(assert (=> (not b_lambda!7981) (not b!17247)))

(declare-fun t!231 () Bool)

(declare-fun tb!41 () Bool)

(assert (=> (and start!3105 (= P!6 P!6) t!231) tb!41))

(declare-fun result!41 () Bool)

(assert (=> tb!41 (= result!41 true)))

(assert (=> b!17247 t!231))

(declare-fun b_and!59 () Bool)

(assert (= b_and!57 (and (=> t!231 result!41) b_and!59)))

(declare-fun b_lambda!7983 () Bool)

(assert (=> (not b_lambda!7983) (not b!17252)))

(declare-fun t!233 () Bool)

(declare-fun tb!43 () Bool)

(assert (=> (and start!3105 (= P!6 P!6) t!233) tb!43))

(declare-fun result!43 () Bool)

(assert (=> tb!43 (= result!43 true)))

(assert (=> b!17252 t!233))

(declare-fun b_and!61 () Bool)

(assert (= b_and!59 (and (=> t!233 result!43) b_and!61)))

(declare-fun b_lambda!7985 () Bool)

(assert (=> (not b_lambda!7985) (not b!17251)))

(declare-fun t!235 () Bool)

(declare-fun tb!45 () Bool)

(assert (=> (and start!3105 (= P!6 P!6) t!235) tb!45))

(declare-fun result!45 () Bool)

(assert (=> tb!45 (= result!45 true)))

(assert (=> b!17251 t!235))

(declare-fun b_and!63 () Bool)

(assert (= b_and!61 (and (=> t!235 result!45) b_and!63)))

(declare-fun b_lambda!7987 () Bool)

(assert (=> (not b_lambda!7987) (not b!17248)))

(declare-fun t!237 () Bool)

(declare-fun tb!47 () Bool)

(assert (=> (and start!3105 (= P!6 P!6) t!237) tb!47))

(declare-fun result!47 () Bool)

(assert (=> tb!47 (= result!47 true)))

(assert (=> b!17248 t!237))

(declare-fun b_and!65 () Bool)

(assert (= b_and!63 (and (=> t!237 result!47) b_and!65)))

(declare-fun b_lambda!7989 () Bool)

(assert (=> (not b_lambda!7989) (not b!17250)))

(declare-fun t!239 () Bool)

(declare-fun tb!49 () Bool)

(assert (=> (and start!3105 (= P!6 P!6) t!239) tb!49))

(declare-fun result!49 () Bool)

(assert (=> tb!49 (= result!49 true)))

(assert (=> b!17250 t!239))

(declare-fun b_and!67 () Bool)

(assert (= b_and!65 (and (=> t!239 result!49) b_and!67)))

(declare-fun m!27423 () Bool)

(assert (=> b!17251 m!27423))

(assert (=> b!17251 m!27423))

(declare-fun m!27425 () Bool)

(assert (=> b!17251 m!27425))

(declare-fun m!27427 () Bool)

(assert (=> b!17247 m!27427))

(assert (=> b!17247 m!27427))

(declare-fun m!27429 () Bool)

(assert (=> b!17247 m!27429))

(declare-fun m!27431 () Bool)

(assert (=> b!17252 m!27431))

(assert (=> b!17252 m!27431))

(declare-fun m!27433 () Bool)

(assert (=> b!17252 m!27433))

(declare-fun m!27435 () Bool)

(assert (=> b!17250 m!27435))

(assert (=> b!17250 m!27435))

(declare-fun m!27437 () Bool)

(assert (=> b!17250 m!27437))

(declare-fun m!27439 () Bool)

(assert (=> start!3105 m!27439))

(declare-fun m!27441 () Bool)

(assert (=> b!17248 m!27441))

(assert (=> b!17248 m!27441))

(declare-fun m!27443 () Bool)

(assert (=> b!17248 m!27443))

(push 1)

(assert (not start!3105))

(assert (not b_lambda!7987))

(assert (not b_next!17))

(assert (not b_lambda!7989))

(assert (not b_lambda!7985))

(assert (not b_lambda!7983))

(assert b_and!67)

(assert (not b_lambda!7981))

(check-sat)

(pop 1)

(push 1)

(assert b_and!67)

(assert (not b_next!17))

(check-sat)

(pop 1)

