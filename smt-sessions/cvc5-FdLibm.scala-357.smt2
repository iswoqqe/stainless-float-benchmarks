; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2195 () Bool)

(assert start!2195)

(declare-fun b_free!1 () Bool)

(declare-fun b_next!1 () Bool)

(assert (=> start!2195 (= b_free!1 (not b_next!1))))

(declare-fun tp!2 () Bool)

(declare-fun b_and!1 () Bool)

(assert (=> start!2195 (= tp!2 b_and!1)))

(declare-fun res!9191 () Bool)

(declare-fun e!6181 () Bool)

(assert (=> start!2195 (=> (not res!9191) (not e!6181))))

(declare-datatypes ((array!758 0))(
  ( (array!759 (arr!329 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!329 (_ BitVec 32))) )
))
(declare-fun a!11 () array!758)

(assert (=> start!2195 (= res!9191 (= (size!329 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2195 e!6181))

(declare-fun array_inv!278 (array!758) Bool)

(assert (=> start!2195 (array_inv!278 a!11)))

(assert (=> start!2195 tp!2))

(declare-fun b!11352 () Bool)

(declare-fun res!9192 () Bool)

(assert (=> b!11352 (=> (not res!9192) (not e!6181))))

(declare-fun P!4 () Int)

(declare-fun dynLambda!29 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!11352 (= res!9192 (dynLambda!29 P!4 (select (arr!329 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!11353 () Bool)

(assert (=> b!11353 (= e!6181 (bvsge #b00000000000000000000000000000001 (size!329 a!11)))))

(assert (= (and start!2195 res!9191) b!11352))

(assert (= (and b!11352 res!9192) b!11353))

(declare-fun b_lambda!6021 () Bool)

(assert (=> (not b_lambda!6021) (not b!11352)))

(declare-fun t!191 () Bool)

(declare-fun tb!1 () Bool)

(assert (=> (and start!2195 (= P!4 P!4) t!191) tb!1))

(declare-fun result!1 () Bool)

(assert (=> tb!1 (= result!1 true)))

(assert (=> b!11352 t!191))

(declare-fun b_and!3 () Bool)

(assert (= b_and!1 (and (=> t!191 result!1) b_and!3)))

(declare-fun m!19097 () Bool)

(assert (=> start!2195 m!19097))

(declare-fun m!19099 () Bool)

(assert (=> b!11352 m!19099))

(assert (=> b!11352 m!19099))

(declare-fun m!19101 () Bool)

(assert (=> b!11352 m!19101))

(push 1)

(assert (not start!2195))

(assert (not b_lambda!6021))

(assert b_and!3)

(assert (not b_next!1))

(check-sat)

(pop 1)

(push 1)

(assert b_and!3)

(assert (not b_next!1))

(check-sat)

(pop 1)

