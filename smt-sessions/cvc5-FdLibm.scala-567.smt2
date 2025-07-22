; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3139 () Bool)

(assert start!3139)

(declare-fun b_free!47 () Bool)

(declare-fun b_next!47 () Bool)

(assert (=> start!3139 (= b_free!47 (not b_next!47))))

(declare-fun tp!71 () Bool)

(declare-fun b_and!447 () Bool)

(assert (=> start!3139 (= tp!71 b_and!447)))

(declare-fun res!14252 () Bool)

(declare-fun e!9441 () Bool)

(assert (=> start!3139 (=> (not res!14252) (not e!9441))))

(declare-datatypes ((array!1400 0))(
  ( (array!1401 (arr!612 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!612 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1400)

(assert (=> start!3139 (= res!14252 (= (size!612 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3139 e!9441))

(declare-fun array_inv!560 (array!1400) Bool)

(assert (=> start!3139 (array_inv!560 a!12)))

(assert (=> start!3139 tp!71))

(declare-fun b!17824 () Bool)

(declare-fun res!14253 () Bool)

(assert (=> b!17824 (=> (not res!14253) (not e!9441))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!66 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17824 (= res!14253 (dynLambda!66 P!5 (select (arr!612 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!17825 () Bool)

(assert (=> b!17825 (= e!9441 (bvsge #b00000000000000000000000000000001 (size!612 a!12)))))

(assert (= (and start!3139 res!14252) b!17824))

(assert (= (and b!17824 res!14253) b!17825))

(declare-fun b_lambda!8341 () Bool)

(assert (=> (not b_lambda!8341) (not b!17824)))

(declare-fun t!591 () Bool)

(declare-fun tb!401 () Bool)

(assert (=> (and start!3139 (= P!5 P!5) t!591) tb!401))

(declare-fun result!401 () Bool)

(assert (=> tb!401 (= result!401 true)))

(assert (=> b!17824 t!591))

(declare-fun b_and!449 () Bool)

(assert (= b_and!447 (and (=> t!591 result!401) b_and!449)))

(declare-fun m!28177 () Bool)

(assert (=> start!3139 m!28177))

(declare-fun m!28179 () Bool)

(assert (=> b!17824 m!28179))

(assert (=> b!17824 m!28179))

(declare-fun m!28181 () Bool)

(assert (=> b!17824 m!28181))

(push 1)

(assert (not start!3139))

(assert (not b_lambda!8341))

(assert b_and!449)

(assert (not b_next!47))

(check-sat)

(pop 1)

(push 1)

(assert b_and!449)

(assert (not b_next!47))

(check-sat)

(pop 1)

