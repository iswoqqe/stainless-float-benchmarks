; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2199 () Bool)

(assert start!2199)

(declare-fun b_free!5 () Bool)

(declare-fun b_next!5 () Bool)

(assert (=> start!2199 (= b_free!5 (not b_next!5))))

(declare-fun tp!8 () Bool)

(declare-fun b_and!11 () Bool)

(assert (=> start!2199 (= tp!8 b_and!11)))

(declare-fun b!11371 () Bool)

(declare-fun res!9211 () Bool)

(declare-fun e!6193 () Bool)

(assert (=> b!11371 (=> (not res!9211) (not e!6193))))

(declare-fun P!4 () Int)

(declare-datatypes ((array!762 0))(
  ( (array!763 (arr!331 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!331 (_ BitVec 32))) )
))
(declare-fun a!11 () array!762)

(declare-fun dynLambda!31 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!11371 (= res!9211 (dynLambda!31 P!4 (select (arr!331 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!11373 () Bool)

(declare-fun res!9210 () Bool)

(assert (=> b!11373 (=> (not res!9210) (not e!6193))))

(assert (=> b!11373 (= res!9210 (dynLambda!31 P!4 (select (arr!331 a!11) #b00000000000000000000000000000010)))))

(declare-fun b!11374 () Bool)

(assert (=> b!11374 (= e!6193 (bvsge #b00000000000000000000000000000011 (size!331 a!11)))))

(declare-fun res!9213 () Bool)

(assert (=> start!2199 (=> (not res!9213) (not e!6193))))

(assert (=> start!2199 (= res!9213 (= (size!331 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2199 e!6193))

(declare-fun array_inv!280 (array!762) Bool)

(assert (=> start!2199 (array_inv!280 a!11)))

(assert (=> start!2199 tp!8))

(declare-fun b!11372 () Bool)

(declare-fun res!9212 () Bool)

(assert (=> b!11372 (=> (not res!9212) (not e!6193))))

(assert (=> b!11372 (= res!9212 (dynLambda!31 P!4 (select (arr!331 a!11) #b00000000000000000000000000000001)))))

(assert (= (and start!2199 res!9213) b!11371))

(assert (= (and b!11371 res!9211) b!11372))

(assert (= (and b!11372 res!9212) b!11373))

(assert (= (and b!11373 res!9210) b!11374))

(declare-fun b_lambda!6027 () Bool)

(assert (=> (not b_lambda!6027) (not b!11371)))

(declare-fun t!197 () Bool)

(declare-fun tb!7 () Bool)

(assert (=> (and start!2199 (= P!4 P!4) t!197) tb!7))

(declare-fun result!7 () Bool)

(assert (=> tb!7 (= result!7 true)))

(assert (=> b!11371 t!197))

(declare-fun b_and!13 () Bool)

(assert (= b_and!11 (and (=> t!197 result!7) b_and!13)))

(declare-fun b_lambda!6029 () Bool)

(assert (=> (not b_lambda!6029) (not b!11373)))

(declare-fun t!199 () Bool)

(declare-fun tb!9 () Bool)

(assert (=> (and start!2199 (= P!4 P!4) t!199) tb!9))

(declare-fun result!9 () Bool)

(assert (=> tb!9 (= result!9 true)))

(assert (=> b!11373 t!199))

(declare-fun b_and!15 () Bool)

(assert (= b_and!13 (and (=> t!199 result!9) b_and!15)))

(declare-fun b_lambda!6031 () Bool)

(assert (=> (not b_lambda!6031) (not b!11372)))

(declare-fun t!201 () Bool)

(declare-fun tb!11 () Bool)

(assert (=> (and start!2199 (= P!4 P!4) t!201) tb!11))

(declare-fun result!11 () Bool)

(assert (=> tb!11 (= result!11 true)))

(assert (=> b!11372 t!201))

(declare-fun b_and!17 () Bool)

(assert (= b_and!15 (and (=> t!201 result!11) b_and!17)))

(declare-fun m!19113 () Bool)

(assert (=> b!11371 m!19113))

(assert (=> b!11371 m!19113))

(declare-fun m!19115 () Bool)

(assert (=> b!11371 m!19115))

(declare-fun m!19117 () Bool)

(assert (=> b!11373 m!19117))

(assert (=> b!11373 m!19117))

(declare-fun m!19119 () Bool)

(assert (=> b!11373 m!19119))

(declare-fun m!19121 () Bool)

(assert (=> start!2199 m!19121))

(declare-fun m!19123 () Bool)

(assert (=> b!11372 m!19123))

(assert (=> b!11372 m!19123))

(declare-fun m!19125 () Bool)

(assert (=> b!11372 m!19125))

(push 1)

(assert b_and!17)

(assert (not start!2199))

(assert (not b_lambda!6027))

(assert (not b_next!5))

(assert (not b_lambda!6031))

(assert (not b_lambda!6029))

(check-sat)

(pop 1)

(push 1)

(assert b_and!17)

(assert (not b_next!5))

(check-sat)

(pop 1)

