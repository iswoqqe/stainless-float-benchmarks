; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2951 () Bool)

(assert start!2951)

(declare-fun b_free!17 () Bool)

(declare-fun b_next!17 () Bool)

(assert (=> start!2951 (= b_free!17 (not b_next!17))))

(declare-fun tp!26 () Bool)

(declare-fun b_and!57 () Bool)

(assert (=> start!2951 (= tp!26 b_and!57)))

(declare-fun b!16377 () Bool)

(declare-fun res!12930 () Bool)

(declare-fun e!9093 () Bool)

(assert (=> b!16377 (=> (not res!12930) (not e!9093))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1356 0))(
  ( (array!1357 (arr!595 (Array (_ BitVec 32) (_ BitVec 32))) (size!595 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1356)

(declare-fun dynLambda!47 (Int (_ BitVec 32)) Bool)

(assert (=> b!16377 (= res!12930 (dynLambda!47 P!6 (select (arr!595 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!16378 () Bool)

(declare-fun res!12928 () Bool)

(assert (=> b!16378 (=> (not res!12928) (not e!9093))))

(assert (=> b!16378 (= res!12928 (dynLambda!47 P!6 (select (arr!595 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!16379 () Bool)

(declare-fun res!12925 () Bool)

(assert (=> b!16379 (=> (not res!12925) (not e!9093))))

(assert (=> b!16379 (= res!12925 (dynLambda!47 P!6 (select (arr!595 a!13) #b00000000000000000000000000000011)))))

(declare-fun res!12929 () Bool)

(assert (=> start!2951 (=> (not res!12929) (not e!9093))))

(assert (=> start!2951 (= res!12929 (= (size!595 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2951 e!9093))

(declare-fun array_inv!543 (array!1356) Bool)

(assert (=> start!2951 (array_inv!543 a!13)))

(assert (=> start!2951 tp!26))

(declare-fun b!16380 () Bool)

(declare-fun res!12927 () Bool)

(assert (=> b!16380 (=> (not res!12927) (not e!9093))))

(assert (=> b!16380 (= res!12927 (dynLambda!47 P!6 (select (arr!595 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!16381 () Bool)

(declare-fun res!12926 () Bool)

(assert (=> b!16381 (=> (not res!12926) (not e!9093))))

(assert (=> b!16381 (= res!12926 (dynLambda!47 P!6 (select (arr!595 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!16382 () Bool)

(assert (=> b!16382 (= e!9093 (bvsge #b00000000000000000000000000000101 (size!595 a!13)))))

(assert (= (and start!2951 res!12929) b!16380))

(assert (= (and b!16380 res!12927) b!16381))

(assert (= (and b!16381 res!12926) b!16377))

(assert (= (and b!16377 res!12930) b!16379))

(assert (= (and b!16379 res!12925) b!16378))

(assert (= (and b!16378 res!12928) b!16382))

(declare-fun b_lambda!6621 () Bool)

(assert (=> (not b_lambda!6621) (not b!16377)))

(declare-fun t!231 () Bool)

(declare-fun tb!41 () Bool)

(assert (=> (and start!2951 (= P!6 P!6) t!231) tb!41))

(declare-fun result!41 () Bool)

(assert (=> tb!41 (= result!41 true)))

(assert (=> b!16377 t!231))

(declare-fun b_and!59 () Bool)

(assert (= b_and!57 (and (=> t!231 result!41) b_and!59)))

(declare-fun b_lambda!6623 () Bool)

(assert (=> (not b_lambda!6623) (not b!16380)))

(declare-fun t!233 () Bool)

(declare-fun tb!43 () Bool)

(assert (=> (and start!2951 (= P!6 P!6) t!233) tb!43))

(declare-fun result!43 () Bool)

(assert (=> tb!43 (= result!43 true)))

(assert (=> b!16380 t!233))

(declare-fun b_and!61 () Bool)

(assert (= b_and!59 (and (=> t!233 result!43) b_and!61)))

(declare-fun b_lambda!6625 () Bool)

(assert (=> (not b_lambda!6625) (not b!16381)))

(declare-fun t!235 () Bool)

(declare-fun tb!45 () Bool)

(assert (=> (and start!2951 (= P!6 P!6) t!235) tb!45))

(declare-fun result!45 () Bool)

(assert (=> tb!45 (= result!45 true)))

(assert (=> b!16381 t!235))

(declare-fun b_and!63 () Bool)

(assert (= b_and!61 (and (=> t!235 result!45) b_and!63)))

(declare-fun b_lambda!6627 () Bool)

(assert (=> (not b_lambda!6627) (not b!16379)))

(declare-fun t!237 () Bool)

(declare-fun tb!47 () Bool)

(assert (=> (and start!2951 (= P!6 P!6) t!237) tb!47))

(declare-fun result!47 () Bool)

(assert (=> tb!47 (= result!47 true)))

(assert (=> b!16379 t!237))

(declare-fun b_and!65 () Bool)

(assert (= b_and!63 (and (=> t!237 result!47) b_and!65)))

(declare-fun b_lambda!6629 () Bool)

(assert (=> (not b_lambda!6629) (not b!16378)))

(declare-fun t!239 () Bool)

(declare-fun tb!49 () Bool)

(assert (=> (and start!2951 (= P!6 P!6) t!239) tb!49))

(declare-fun result!49 () Bool)

(assert (=> tb!49 (= result!49 true)))

(assert (=> b!16378 t!239))

(declare-fun b_and!67 () Bool)

(assert (= b_and!65 (and (=> t!239 result!49) b_and!67)))

(declare-fun m!24579 () Bool)

(assert (=> b!16381 m!24579))

(assert (=> b!16381 m!24579))

(declare-fun m!24581 () Bool)

(assert (=> b!16381 m!24581))

(declare-fun m!24583 () Bool)

(assert (=> b!16379 m!24583))

(assert (=> b!16379 m!24583))

(declare-fun m!24585 () Bool)

(assert (=> b!16379 m!24585))

(declare-fun m!24587 () Bool)

(assert (=> b!16378 m!24587))

(assert (=> b!16378 m!24587))

(declare-fun m!24589 () Bool)

(assert (=> b!16378 m!24589))

(declare-fun m!24591 () Bool)

(assert (=> b!16377 m!24591))

(assert (=> b!16377 m!24591))

(declare-fun m!24593 () Bool)

(assert (=> b!16377 m!24593))

(declare-fun m!24595 () Bool)

(assert (=> start!2951 m!24595))

(declare-fun m!24597 () Bool)

(assert (=> b!16380 m!24597))

(assert (=> b!16380 m!24597))

(declare-fun m!24599 () Bool)

(assert (=> b!16380 m!24599))

(check-sat (not start!2951) (not b_lambda!6629) (not b_next!17) (not b_lambda!6627) (not b_lambda!6621) (not b_lambda!6623) (not b_lambda!6625) b_and!67)
(check-sat b_and!67 (not b_next!17))
