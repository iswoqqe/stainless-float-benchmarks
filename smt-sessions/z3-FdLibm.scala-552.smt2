; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2955 () Bool)

(assert start!2955)

(declare-fun b_free!21 () Bool)

(declare-fun b_next!21 () Bool)

(assert (=> start!2955 (= b_free!21 (not b_next!21))))

(declare-fun tp!32 () Bool)

(declare-fun b_and!83 () Bool)

(assert (=> start!2955 (= tp!32 b_and!83)))

(declare-fun b!16420 () Bool)

(declare-fun res!12974 () Bool)

(declare-fun e!9105 () Bool)

(assert (=> b!16420 (=> (not res!12974) (not e!9105))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1360 0))(
  ( (array!1361 (arr!597 (Array (_ BitVec 32) (_ BitVec 32))) (size!597 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1360)

(declare-fun dynLambda!49 (Int (_ BitVec 32)) Bool)

(assert (=> b!16420 (= res!12974 (dynLambda!49 P!6 (select (arr!597 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!16421 () Bool)

(declare-fun res!12972 () Bool)

(assert (=> b!16421 (=> (not res!12972) (not e!9105))))

(assert (=> b!16421 (= res!12972 (dynLambda!49 P!6 (select (arr!597 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!16422 () Bool)

(declare-fun res!12973 () Bool)

(assert (=> b!16422 (=> (not res!12973) (not e!9105))))

(assert (=> b!16422 (= res!12973 (dynLambda!49 P!6 (select (arr!597 a!13) #b00000000000000000000000000000001)))))

(declare-fun res!12971 () Bool)

(assert (=> start!2955 (=> (not res!12971) (not e!9105))))

(assert (=> start!2955 (= res!12971 (= (size!597 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2955 e!9105))

(declare-fun array_inv!545 (array!1360) Bool)

(assert (=> start!2955 (array_inv!545 a!13)))

(assert (=> start!2955 tp!32))

(declare-fun b!16423 () Bool)

(declare-fun res!12968 () Bool)

(assert (=> b!16423 (=> (not res!12968) (not e!9105))))

(assert (=> b!16423 (= res!12968 (dynLambda!49 P!6 (select (arr!597 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!16424 () Bool)

(declare-fun res!12970 () Bool)

(assert (=> b!16424 (=> (not res!12970) (not e!9105))))

(assert (=> b!16424 (= res!12970 (dynLambda!49 P!6 (select (arr!597 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!16425 () Bool)

(declare-fun res!12975 () Bool)

(assert (=> b!16425 (=> (not res!12975) (not e!9105))))

(assert (=> b!16425 (= res!12975 (dynLambda!49 P!6 (select (arr!597 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!16426 () Bool)

(declare-fun res!12969 () Bool)

(assert (=> b!16426 (=> (not res!12969) (not e!9105))))

(assert (=> b!16426 (= res!12969 (dynLambda!49 P!6 (select (arr!597 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!16427 () Bool)

(assert (=> b!16427 (= e!9105 (bvsge #b00000000000000000000000000000111 (size!597 a!13)))))

(assert (= (and start!2955 res!12971) b!16421))

(assert (= (and b!16421 res!12972) b!16422))

(assert (= (and b!16422 res!12973) b!16423))

(assert (= (and b!16423 res!12968) b!16420))

(assert (= (and b!16420 res!12974) b!16426))

(assert (= (and b!16426 res!12969) b!16425))

(assert (= (and b!16425 res!12975) b!16424))

(assert (= (and b!16424 res!12970) b!16427))

(declare-fun b_lambda!6643 () Bool)

(assert (=> (not b_lambda!6643) (not b!16425)))

(declare-fun t!253 () Bool)

(declare-fun tb!63 () Bool)

(assert (=> (and start!2955 (= P!6 P!6) t!253) tb!63))

(declare-fun result!63 () Bool)

(assert (=> tb!63 (= result!63 true)))

(assert (=> b!16425 t!253))

(declare-fun b_and!85 () Bool)

(assert (= b_and!83 (and (=> t!253 result!63) b_and!85)))

(declare-fun b_lambda!6645 () Bool)

(assert (=> (not b_lambda!6645) (not b!16421)))

(declare-fun t!255 () Bool)

(declare-fun tb!65 () Bool)

(assert (=> (and start!2955 (= P!6 P!6) t!255) tb!65))

(declare-fun result!65 () Bool)

(assert (=> tb!65 (= result!65 true)))

(assert (=> b!16421 t!255))

(declare-fun b_and!87 () Bool)

(assert (= b_and!85 (and (=> t!255 result!65) b_and!87)))

(declare-fun b_lambda!6647 () Bool)

(assert (=> (not b_lambda!6647) (not b!16422)))

(declare-fun t!257 () Bool)

(declare-fun tb!67 () Bool)

(assert (=> (and start!2955 (= P!6 P!6) t!257) tb!67))

(declare-fun result!67 () Bool)

(assert (=> tb!67 (= result!67 true)))

(assert (=> b!16422 t!257))

(declare-fun b_and!89 () Bool)

(assert (= b_and!87 (and (=> t!257 result!67) b_and!89)))

(declare-fun b_lambda!6649 () Bool)

(assert (=> (not b_lambda!6649) (not b!16424)))

(declare-fun t!259 () Bool)

(declare-fun tb!69 () Bool)

(assert (=> (and start!2955 (= P!6 P!6) t!259) tb!69))

(declare-fun result!69 () Bool)

(assert (=> tb!69 (= result!69 true)))

(assert (=> b!16424 t!259))

(declare-fun b_and!91 () Bool)

(assert (= b_and!89 (and (=> t!259 result!69) b_and!91)))

(declare-fun b_lambda!6651 () Bool)

(assert (=> (not b_lambda!6651) (not b!16426)))

(declare-fun t!261 () Bool)

(declare-fun tb!71 () Bool)

(assert (=> (and start!2955 (= P!6 P!6) t!261) tb!71))

(declare-fun result!71 () Bool)

(assert (=> tb!71 (= result!71 true)))

(assert (=> b!16426 t!261))

(declare-fun b_and!93 () Bool)

(assert (= b_and!91 (and (=> t!261 result!71) b_and!93)))

(declare-fun b_lambda!6653 () Bool)

(assert (=> (not b_lambda!6653) (not b!16423)))

(declare-fun t!263 () Bool)

(declare-fun tb!73 () Bool)

(assert (=> (and start!2955 (= P!6 P!6) t!263) tb!73))

(declare-fun result!73 () Bool)

(assert (=> tb!73 (= result!73 true)))

(assert (=> b!16423 t!263))

(declare-fun b_and!95 () Bool)

(assert (= b_and!93 (and (=> t!263 result!73) b_and!95)))

(declare-fun b_lambda!6655 () Bool)

(assert (=> (not b_lambda!6655) (not b!16420)))

(declare-fun t!265 () Bool)

(declare-fun tb!75 () Bool)

(assert (=> (and start!2955 (= P!6 P!6) t!265) tb!75))

(declare-fun result!75 () Bool)

(assert (=> tb!75 (= result!75 true)))

(assert (=> b!16420 t!265))

(declare-fun b_and!97 () Bool)

(assert (= b_and!95 (and (=> t!265 result!75) b_and!97)))

(declare-fun m!24627 () Bool)

(assert (=> b!16426 m!24627))

(assert (=> b!16426 m!24627))

(declare-fun m!24629 () Bool)

(assert (=> b!16426 m!24629))

(declare-fun m!24631 () Bool)

(assert (=> start!2955 m!24631))

(declare-fun m!24633 () Bool)

(assert (=> b!16422 m!24633))

(assert (=> b!16422 m!24633))

(declare-fun m!24635 () Bool)

(assert (=> b!16422 m!24635))

(declare-fun m!24637 () Bool)

(assert (=> b!16421 m!24637))

(assert (=> b!16421 m!24637))

(declare-fun m!24639 () Bool)

(assert (=> b!16421 m!24639))

(declare-fun m!24641 () Bool)

(assert (=> b!16420 m!24641))

(assert (=> b!16420 m!24641))

(declare-fun m!24643 () Bool)

(assert (=> b!16420 m!24643))

(declare-fun m!24645 () Bool)

(assert (=> b!16425 m!24645))

(assert (=> b!16425 m!24645))

(declare-fun m!24647 () Bool)

(assert (=> b!16425 m!24647))

(declare-fun m!24649 () Bool)

(assert (=> b!16423 m!24649))

(assert (=> b!16423 m!24649))

(declare-fun m!24651 () Bool)

(assert (=> b!16423 m!24651))

(declare-fun m!24653 () Bool)

(assert (=> b!16424 m!24653))

(assert (=> b!16424 m!24653))

(declare-fun m!24655 () Bool)

(assert (=> b!16424 m!24655))

(check-sat (not start!2955) (not b_lambda!6649) (not b_lambda!6647) (not b_lambda!6653) (not b_next!21) (not b_lambda!6651) (not b_lambda!6655) b_and!97 (not b_lambda!6645) (not b_lambda!6643))
(check-sat b_and!97 (not b_next!21))
