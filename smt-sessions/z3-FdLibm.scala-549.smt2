; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2949 () Bool)

(assert start!2949)

(declare-fun b_free!15 () Bool)

(declare-fun b_next!15 () Bool)

(assert (=> start!2949 (= b_free!15 (not b_next!15))))

(declare-fun tp!23 () Bool)

(declare-fun b_and!47 () Bool)

(assert (=> start!2949 (= tp!23 b_and!47)))

(declare-fun res!12910 () Bool)

(declare-fun e!9087 () Bool)

(assert (=> start!2949 (=> (not res!12910) (not e!9087))))

(declare-datatypes ((array!1354 0))(
  ( (array!1355 (arr!594 (Array (_ BitVec 32) (_ BitVec 32))) (size!594 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1354)

(assert (=> start!2949 (= res!12910 (= (size!594 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2949 e!9087))

(declare-fun array_inv!542 (array!1354) Bool)

(assert (=> start!2949 (array_inv!542 a!13)))

(assert (=> start!2949 tp!23))

(declare-fun b!16360 () Bool)

(declare-fun res!12909 () Bool)

(assert (=> b!16360 (=> (not res!12909) (not e!9087))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!46 (Int (_ BitVec 32)) Bool)

(assert (=> b!16360 (= res!12909 (dynLambda!46 P!6 (select (arr!594 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!16361 () Bool)

(assert (=> b!16361 (= e!9087 (bvsge #b00000000000000000000000000000100 (size!594 a!13)))))

(declare-fun b!16362 () Bool)

(declare-fun res!12912 () Bool)

(assert (=> b!16362 (=> (not res!12912) (not e!9087))))

(assert (=> b!16362 (= res!12912 (dynLambda!46 P!6 (select (arr!594 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!16363 () Bool)

(declare-fun res!12908 () Bool)

(assert (=> b!16363 (=> (not res!12908) (not e!9087))))

(assert (=> b!16363 (= res!12908 (dynLambda!46 P!6 (select (arr!594 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!16364 () Bool)

(declare-fun res!12911 () Bool)

(assert (=> b!16364 (=> (not res!12911) (not e!9087))))

(assert (=> b!16364 (= res!12911 (dynLambda!46 P!6 (select (arr!594 a!13) #b00000000000000000000000000000000)))))

(assert (= (and start!2949 res!12910) b!16364))

(assert (= (and b!16364 res!12911) b!16362))

(assert (= (and b!16362 res!12912) b!16363))

(assert (= (and b!16363 res!12908) b!16360))

(assert (= (and b!16360 res!12909) b!16361))

(declare-fun b_lambda!6613 () Bool)

(assert (=> (not b_lambda!6613) (not b!16360)))

(declare-fun t!223 () Bool)

(declare-fun tb!33 () Bool)

(assert (=> (and start!2949 (= P!6 P!6) t!223) tb!33))

(declare-fun result!33 () Bool)

(assert (=> tb!33 (= result!33 true)))

(assert (=> b!16360 t!223))

(declare-fun b_and!49 () Bool)

(assert (= b_and!47 (and (=> t!223 result!33) b_and!49)))

(declare-fun b_lambda!6615 () Bool)

(assert (=> (not b_lambda!6615) (not b!16362)))

(declare-fun t!225 () Bool)

(declare-fun tb!35 () Bool)

(assert (=> (and start!2949 (= P!6 P!6) t!225) tb!35))

(declare-fun result!35 () Bool)

(assert (=> tb!35 (= result!35 true)))

(assert (=> b!16362 t!225))

(declare-fun b_and!51 () Bool)

(assert (= b_and!49 (and (=> t!225 result!35) b_and!51)))

(declare-fun b_lambda!6617 () Bool)

(assert (=> (not b_lambda!6617) (not b!16363)))

(declare-fun t!227 () Bool)

(declare-fun tb!37 () Bool)

(assert (=> (and start!2949 (= P!6 P!6) t!227) tb!37))

(declare-fun result!37 () Bool)

(assert (=> tb!37 (= result!37 true)))

(assert (=> b!16363 t!227))

(declare-fun b_and!53 () Bool)

(assert (= b_and!51 (and (=> t!227 result!37) b_and!53)))

(declare-fun b_lambda!6619 () Bool)

(assert (=> (not b_lambda!6619) (not b!16364)))

(declare-fun t!229 () Bool)

(declare-fun tb!39 () Bool)

(assert (=> (and start!2949 (= P!6 P!6) t!229) tb!39))

(declare-fun result!39 () Bool)

(assert (=> tb!39 (= result!39 true)))

(assert (=> b!16364 t!229))

(declare-fun b_and!55 () Bool)

(assert (= b_and!53 (and (=> t!229 result!39) b_and!55)))

(declare-fun m!24561 () Bool)

(assert (=> b!16364 m!24561))

(assert (=> b!16364 m!24561))

(declare-fun m!24563 () Bool)

(assert (=> b!16364 m!24563))

(declare-fun m!24565 () Bool)

(assert (=> b!16360 m!24565))

(assert (=> b!16360 m!24565))

(declare-fun m!24567 () Bool)

(assert (=> b!16360 m!24567))

(declare-fun m!24569 () Bool)

(assert (=> b!16362 m!24569))

(assert (=> b!16362 m!24569))

(declare-fun m!24571 () Bool)

(assert (=> b!16362 m!24571))

(declare-fun m!24573 () Bool)

(assert (=> start!2949 m!24573))

(declare-fun m!24575 () Bool)

(assert (=> b!16363 m!24575))

(assert (=> b!16363 m!24575))

(declare-fun m!24577 () Bool)

(assert (=> b!16363 m!24577))

(check-sat (not start!2949) (not b_lambda!6613) (not b_lambda!6619) b_and!55 (not b_lambda!6617) (not b_next!15) (not b_lambda!6615))
(check-sat b_and!55 (not b_next!15))
