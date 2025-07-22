; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3097 () Bool)

(assert start!3097)

(declare-fun b_free!9 () Bool)

(declare-fun b_next!9 () Bool)

(assert (=> start!3097 (= b_free!9 (not b_next!9))))

(declare-fun tp!14 () Bool)

(declare-fun b_and!29 () Bool)

(assert (=> start!3097 (= tp!14 b_and!29)))

(declare-fun res!13626 () Bool)

(declare-fun e!9322 () Bool)

(assert (=> start!3097 (=> (not res!13626) (not e!9322))))

(declare-datatypes ((array!1358 0))(
  ( (array!1359 (arr!591 (Array (_ BitVec 32) (_ BitVec 32))) (size!591 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1358)

(assert (=> start!3097 (= res!13626 (= (size!591 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3097 e!9322))

(declare-fun array_inv!539 (array!1358) Bool)

(assert (=> start!3097 (array_inv!539 a!13)))

(assert (=> start!3097 tp!14))

(declare-fun b!17197 () Bool)

(declare-fun res!13625 () Bool)

(assert (=> b!17197 (=> (not res!13625) (not e!9322))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!47 (Int (_ BitVec 32)) Bool)

(assert (=> b!17197 (= res!13625 (dynLambda!47 P!6 (select (arr!591 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17198 () Bool)

(assert (=> b!17198 (= e!9322 (bvsge #b00000000000000000000000000000001 (size!591 a!13)))))

(assert (= (and start!3097 res!13626) b!17197))

(assert (= (and b!17197 res!13625) b!17198))

(declare-fun b_lambda!7961 () Bool)

(assert (=> (not b_lambda!7961) (not b!17197)))

(declare-fun t!211 () Bool)

(declare-fun tb!21 () Bool)

(assert (=> (and start!3097 (= P!6 P!6) t!211) tb!21))

(declare-fun result!21 () Bool)

(assert (=> tb!21 (= result!21 true)))

(assert (=> b!17197 t!211))

(declare-fun b_and!31 () Bool)

(assert (= b_and!29 (and (=> t!211 result!21) b_and!31)))

(declare-fun m!27375 () Bool)

(assert (=> start!3097 m!27375))

(declare-fun m!27377 () Bool)

(assert (=> b!17197 m!27377))

(assert (=> b!17197 m!27377))

(declare-fun m!27379 () Bool)

(assert (=> b!17197 m!27379))

(push 1)

(assert (not start!3097))

(assert (not b_lambda!7961))

(assert b_and!31)

(assert (not b_next!9))

(check-sat)

(pop 1)

(push 1)

(assert b_and!31)

(assert (not b_next!9))

(check-sat)

(pop 1)

