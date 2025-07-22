; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2957 () Bool)

(assert start!2957)

(declare-fun b_free!51 () Bool)

(declare-fun b_next!51 () Bool)

(assert (=> start!2957 (= b_free!51 (not b_next!51))))

(declare-fun tp!77 () Bool)

(declare-fun b_and!457 () Bool)

(assert (=> start!2957 (= tp!77 b_and!457)))

(declare-fun res!13096 () Bool)

(declare-fun e!9112 () Bool)

(assert (=> start!2957 (=> (not res!13096) (not e!9112))))

(declare-datatypes ((array!1391 0))(
  ( (array!1392 (arr!614 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!614 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1391)

(assert (=> start!2957 (= res!13096 (= (size!614 a!12) #b00000000000000000000000000010100))))

(assert (=> start!2957 e!9112))

(declare-fun array_inv!562 (array!1391) Bool)

(assert (=> start!2957 (array_inv!562 a!12)))

(assert (=> start!2957 tp!77))

(declare-fun b!16507 () Bool)

(declare-fun res!13097 () Bool)

(assert (=> b!16507 (=> (not res!13097) (not e!9112))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!63 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!16507 (= res!13097 (dynLambda!63 P!5 (select (arr!614 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!16508 () Bool)

(declare-fun res!13098 () Bool)

(assert (=> b!16508 (=> (not res!13098) (not e!9112))))

(assert (=> b!16508 (= res!13098 (dynLambda!63 P!5 (select (arr!614 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!16509 () Bool)

(declare-fun res!13095 () Bool)

(assert (=> b!16509 (=> (not res!13095) (not e!9112))))

(assert (=> b!16509 (= res!13095 (dynLambda!63 P!5 (select (arr!614 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!16510 () Bool)

(assert (=> b!16510 (= e!9112 (bvsge #b00000000000000000000000000000011 (size!614 a!12)))))

(assert (= (and start!2957 res!13096) b!16507))

(assert (= (and b!16507 res!13097) b!16508))

(assert (= (and b!16508 res!13098) b!16509))

(assert (= (and b!16509 res!13095) b!16510))

(declare-fun b_lambda!5707 () Bool)

(assert (=> (not b_lambda!5707) (not b!16507)))

(declare-fun t!597 () Bool)

(declare-fun tb!407 () Bool)

(assert (=> (and start!2957 (= P!5 P!5) t!597) tb!407))

(declare-fun result!407 () Bool)

(assert (=> tb!407 (= result!407 true)))

(assert (=> b!16507 t!597))

(declare-fun b_and!459 () Bool)

(assert (= b_and!457 (and (=> t!597 result!407) b_and!459)))

(declare-fun b_lambda!5709 () Bool)

(assert (=> (not b_lambda!5709) (not b!16508)))

(declare-fun t!599 () Bool)

(declare-fun tb!409 () Bool)

(assert (=> (and start!2957 (= P!5 P!5) t!599) tb!409))

(declare-fun result!409 () Bool)

(assert (=> tb!409 (= result!409 true)))

(assert (=> b!16508 t!599))

(declare-fun b_and!461 () Bool)

(assert (= b_and!459 (and (=> t!599 result!409) b_and!461)))

(declare-fun b_lambda!5711 () Bool)

(assert (=> (not b_lambda!5711) (not b!16509)))

(declare-fun t!601 () Bool)

(declare-fun tb!411 () Bool)

(assert (=> (and start!2957 (= P!5 P!5) t!601) tb!411))

(declare-fun result!411 () Bool)

(assert (=> tb!411 (= result!411 true)))

(assert (=> b!16509 t!601))

(declare-fun b_and!463 () Bool)

(assert (= b_and!461 (and (=> t!601 result!411) b_and!463)))

(declare-fun m!23015 () Bool)

(assert (=> start!2957 m!23015))

(declare-fun m!23017 () Bool)

(assert (=> b!16507 m!23017))

(assert (=> b!16507 m!23017))

(declare-fun m!23019 () Bool)

(assert (=> b!16507 m!23019))

(declare-fun m!23021 () Bool)

(assert (=> b!16508 m!23021))

(assert (=> b!16508 m!23021))

(declare-fun m!23023 () Bool)

(assert (=> b!16508 m!23023))

(declare-fun m!23025 () Bool)

(assert (=> b!16509 m!23025))

(assert (=> b!16509 m!23025))

(declare-fun m!23027 () Bool)

(assert (=> b!16509 m!23027))

(check-sat (not b_lambda!5707) b_and!463 (not b_lambda!5709) (not start!2957) (not b_next!51) (not b_lambda!5711))
(check-sat b_and!463 (not b_next!51))
