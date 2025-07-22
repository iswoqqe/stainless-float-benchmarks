; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3141 () Bool)

(assert start!3141)

(declare-fun b_free!49 () Bool)

(declare-fun b_next!49 () Bool)

(assert (=> start!3141 (= b_free!49 (not b_next!49))))

(declare-fun tp!74 () Bool)

(declare-fun b_and!451 () Bool)

(assert (=> start!3141 (= tp!74 b_and!451)))

(declare-fun res!14261 () Bool)

(declare-fun e!9447 () Bool)

(assert (=> start!3141 (=> (not res!14261) (not e!9447))))

(declare-datatypes ((array!1402 0))(
  ( (array!1403 (arr!613 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!613 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1402)

(assert (=> start!3141 (= res!14261 (= (size!613 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3141 e!9447))

(declare-fun array_inv!561 (array!1402) Bool)

(assert (=> start!3141 (array_inv!561 a!12)))

(assert (=> start!3141 tp!74))

(declare-fun b!17832 () Bool)

(declare-fun res!14260 () Bool)

(assert (=> b!17832 (=> (not res!14260) (not e!9447))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!67 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17832 (= res!14260 (dynLambda!67 P!5 (select (arr!613 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!17833 () Bool)

(declare-fun res!14262 () Bool)

(assert (=> b!17833 (=> (not res!14262) (not e!9447))))

(assert (=> b!17833 (= res!14262 (dynLambda!67 P!5 (select (arr!613 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!17834 () Bool)

(assert (=> b!17834 (= e!9447 (bvsge #b00000000000000000000000000000010 (size!613 a!12)))))

(assert (= (and start!3141 res!14261) b!17832))

(assert (= (and b!17832 res!14260) b!17833))

(assert (= (and b!17833 res!14262) b!17834))

(declare-fun b_lambda!8343 () Bool)

(assert (=> (not b_lambda!8343) (not b!17832)))

(declare-fun t!593 () Bool)

(declare-fun tb!403 () Bool)

(assert (=> (and start!3141 (= P!5 P!5) t!593) tb!403))

(declare-fun result!403 () Bool)

(assert (=> tb!403 (= result!403 true)))

(assert (=> b!17832 t!593))

(declare-fun b_and!453 () Bool)

(assert (= b_and!451 (and (=> t!593 result!403) b_and!453)))

(declare-fun b_lambda!8345 () Bool)

(assert (=> (not b_lambda!8345) (not b!17833)))

(declare-fun t!595 () Bool)

(declare-fun tb!405 () Bool)

(assert (=> (and start!3141 (= P!5 P!5) t!595) tb!405))

(declare-fun result!405 () Bool)

(assert (=> tb!405 (= result!405 true)))

(assert (=> b!17833 t!595))

(declare-fun b_and!455 () Bool)

(assert (= b_and!453 (and (=> t!595 result!405) b_and!455)))

(declare-fun m!28183 () Bool)

(assert (=> start!3141 m!28183))

(declare-fun m!28185 () Bool)

(assert (=> b!17832 m!28185))

(assert (=> b!17832 m!28185))

(declare-fun m!28187 () Bool)

(assert (=> b!17832 m!28187))

(declare-fun m!28189 () Bool)

(assert (=> b!17833 m!28189))

(assert (=> b!17833 m!28189))

(declare-fun m!28191 () Bool)

(assert (=> b!17833 m!28191))

(push 1)

(assert (not start!3141))

(assert (not b_next!49))

(assert b_and!455)

(assert (not b_lambda!8343))

(assert (not b_lambda!8345))

(check-sat)

(pop 1)

(push 1)

(assert b_and!455)

(assert (not b_next!49))

(check-sat)

(pop 1)

