; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2919 () Bool)

(assert start!2919)

(declare-fun b_free!17 () Bool)

(declare-fun b_next!17 () Bool)

(assert (=> start!2919 (= b_free!17 (not b_next!17))))

(declare-fun tp!26 () Bool)

(declare-fun b_and!57 () Bool)

(assert (=> start!2919 (= tp!26 b_and!57)))

(declare-fun b!15911 () Bool)

(declare-fun res!12500 () Bool)

(declare-fun e!9004 () Bool)

(assert (=> b!15911 (=> (not res!12500) (not e!9004))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1353 0))(
  ( (array!1354 (arr!595 (Array (_ BitVec 32) (_ BitVec 32))) (size!595 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1353)

(declare-fun dynLambda!46 (Int (_ BitVec 32)) Bool)

(assert (=> b!15911 (= res!12500 (dynLambda!46 P!6 (select (arr!595 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!15912 () Bool)

(assert (=> b!15912 (= e!9004 (bvsge #b00000000000000000000000000000101 (size!595 a!13)))))

(declare-fun b!15914 () Bool)

(declare-fun res!12501 () Bool)

(assert (=> b!15914 (=> (not res!12501) (not e!9004))))

(assert (=> b!15914 (= res!12501 (dynLambda!46 P!6 (select (arr!595 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!15915 () Bool)

(declare-fun res!12504 () Bool)

(assert (=> b!15915 (=> (not res!12504) (not e!9004))))

(assert (=> b!15915 (= res!12504 (dynLambda!46 P!6 (select (arr!595 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!15916 () Bool)

(declare-fun res!12502 () Bool)

(assert (=> b!15916 (=> (not res!12502) (not e!9004))))

(assert (=> b!15916 (= res!12502 (dynLambda!46 P!6 (select (arr!595 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!15913 () Bool)

(declare-fun res!12503 () Bool)

(assert (=> b!15913 (=> (not res!12503) (not e!9004))))

(assert (=> b!15913 (= res!12503 (dynLambda!46 P!6 (select (arr!595 a!13) #b00000000000000000000000000000000)))))

(declare-fun res!12499 () Bool)

(assert (=> start!2919 (=> (not res!12499) (not e!9004))))

(assert (=> start!2919 (= res!12499 (= (size!595 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2919 e!9004))

(declare-fun array_inv!543 (array!1353) Bool)

(assert (=> start!2919 (array_inv!543 a!13)))

(assert (=> start!2919 tp!26))

(assert (= (and start!2919 res!12499) b!15913))

(assert (= (and b!15913 res!12503) b!15916))

(assert (= (and b!15916 res!12502) b!15911))

(assert (= (and b!15911 res!12500) b!15915))

(assert (= (and b!15915 res!12504) b!15914))

(assert (= (and b!15914 res!12501) b!15912))

(declare-fun b_lambda!5341 () Bool)

(assert (=> (not b_lambda!5341) (not b!15914)))

(declare-fun t!231 () Bool)

(declare-fun tb!41 () Bool)

(assert (=> (and start!2919 (= P!6 P!6) t!231) tb!41))

(declare-fun result!41 () Bool)

(assert (=> tb!41 (= result!41 true)))

(assert (=> b!15914 t!231))

(declare-fun b_and!59 () Bool)

(assert (= b_and!57 (and (=> t!231 result!41) b_and!59)))

(declare-fun b_lambda!5343 () Bool)

(assert (=> (not b_lambda!5343) (not b!15916)))

(declare-fun t!233 () Bool)

(declare-fun tb!43 () Bool)

(assert (=> (and start!2919 (= P!6 P!6) t!233) tb!43))

(declare-fun result!43 () Bool)

(assert (=> tb!43 (= result!43 true)))

(assert (=> b!15916 t!233))

(declare-fun b_and!61 () Bool)

(assert (= b_and!59 (and (=> t!233 result!43) b_and!61)))

(declare-fun b_lambda!5345 () Bool)

(assert (=> (not b_lambda!5345) (not b!15911)))

(declare-fun t!235 () Bool)

(declare-fun tb!45 () Bool)

(assert (=> (and start!2919 (= P!6 P!6) t!235) tb!45))

(declare-fun result!45 () Bool)

(assert (=> tb!45 (= result!45 true)))

(assert (=> b!15911 t!235))

(declare-fun b_and!63 () Bool)

(assert (= b_and!61 (and (=> t!235 result!45) b_and!63)))

(declare-fun b_lambda!5347 () Bool)

(assert (=> (not b_lambda!5347) (not b!15915)))

(declare-fun t!237 () Bool)

(declare-fun tb!47 () Bool)

(assert (=> (and start!2919 (= P!6 P!6) t!237) tb!47))

(declare-fun result!47 () Bool)

(assert (=> tb!47 (= result!47 true)))

(assert (=> b!15915 t!237))

(declare-fun b_and!65 () Bool)

(assert (= b_and!63 (and (=> t!237 result!47) b_and!65)))

(declare-fun b_lambda!5349 () Bool)

(assert (=> (not b_lambda!5349) (not b!15913)))

(declare-fun t!239 () Bool)

(declare-fun tb!49 () Bool)

(assert (=> (and start!2919 (= P!6 P!6) t!239) tb!49))

(declare-fun result!49 () Bool)

(assert (=> tb!49 (= result!49 true)))

(assert (=> b!15913 t!239))

(declare-fun b_and!67 () Bool)

(assert (= b_and!65 (and (=> t!239 result!49) b_and!67)))

(declare-fun m!22245 () Bool)

(assert (=> b!15915 m!22245))

(assert (=> b!15915 m!22245))

(declare-fun m!22247 () Bool)

(assert (=> b!15915 m!22247))

(declare-fun m!22249 () Bool)

(assert (=> b!15911 m!22249))

(assert (=> b!15911 m!22249))

(declare-fun m!22251 () Bool)

(assert (=> b!15911 m!22251))

(declare-fun m!22253 () Bool)

(assert (=> b!15914 m!22253))

(assert (=> b!15914 m!22253))

(declare-fun m!22255 () Bool)

(assert (=> b!15914 m!22255))

(declare-fun m!22257 () Bool)

(assert (=> b!15913 m!22257))

(assert (=> b!15913 m!22257))

(declare-fun m!22259 () Bool)

(assert (=> b!15913 m!22259))

(declare-fun m!22261 () Bool)

(assert (=> start!2919 m!22261))

(declare-fun m!22263 () Bool)

(assert (=> b!15916 m!22263))

(assert (=> b!15916 m!22263))

(declare-fun m!22265 () Bool)

(assert (=> b!15916 m!22265))

(check-sat (not b_lambda!5343) (not b_lambda!5347) (not b_lambda!5341) b_and!67 (not start!2919) (not b_lambda!5345) (not b_lambda!5349) (not b_next!17))
(check-sat b_and!67 (not b_next!17))
