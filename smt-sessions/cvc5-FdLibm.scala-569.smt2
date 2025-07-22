; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3143 () Bool)

(assert start!3143)

(declare-fun b_free!51 () Bool)

(declare-fun b_next!51 () Bool)

(assert (=> start!3143 (= b_free!51 (not b_next!51))))

(declare-fun tp!77 () Bool)

(declare-fun b_and!457 () Bool)

(assert (=> start!3143 (= tp!77 b_and!457)))

(declare-fun b!17843 () Bool)

(declare-fun res!14274 () Bool)

(declare-fun e!9453 () Bool)

(assert (=> b!17843 (=> (not res!14274) (not e!9453))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1404 0))(
  ( (array!1405 (arr!614 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!614 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1404)

(declare-fun dynLambda!68 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17843 (= res!14274 (dynLambda!68 P!5 (select (arr!614 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!17844 () Bool)

(declare-fun res!14272 () Bool)

(assert (=> b!17844 (=> (not res!14272) (not e!9453))))

(assert (=> b!17844 (= res!14272 (dynLambda!68 P!5 (select (arr!614 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!17845 () Bool)

(declare-fun res!14273 () Bool)

(assert (=> b!17845 (=> (not res!14273) (not e!9453))))

(assert (=> b!17845 (= res!14273 (dynLambda!68 P!5 (select (arr!614 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!17846 () Bool)

(assert (=> b!17846 (= e!9453 (bvsge #b00000000000000000000000000000011 (size!614 a!12)))))

(declare-fun res!14271 () Bool)

(assert (=> start!3143 (=> (not res!14271) (not e!9453))))

(assert (=> start!3143 (= res!14271 (= (size!614 a!12) #b00000000000000000000000000010100))))

(assert (=> start!3143 e!9453))

(declare-fun array_inv!562 (array!1404) Bool)

(assert (=> start!3143 (array_inv!562 a!12)))

(assert (=> start!3143 tp!77))

(assert (= (and start!3143 res!14271) b!17843))

(assert (= (and b!17843 res!14274) b!17844))

(assert (= (and b!17844 res!14272) b!17845))

(assert (= (and b!17845 res!14273) b!17846))

(declare-fun b_lambda!8347 () Bool)

(assert (=> (not b_lambda!8347) (not b!17843)))

(declare-fun t!597 () Bool)

(declare-fun tb!407 () Bool)

(assert (=> (and start!3143 (= P!5 P!5) t!597) tb!407))

(declare-fun result!407 () Bool)

(assert (=> tb!407 (= result!407 true)))

(assert (=> b!17843 t!597))

(declare-fun b_and!459 () Bool)

(assert (= b_and!457 (and (=> t!597 result!407) b_and!459)))

(declare-fun b_lambda!8349 () Bool)

(assert (=> (not b_lambda!8349) (not b!17844)))

(declare-fun t!599 () Bool)

(declare-fun tb!409 () Bool)

(assert (=> (and start!3143 (= P!5 P!5) t!599) tb!409))

(declare-fun result!409 () Bool)

(assert (=> tb!409 (= result!409 true)))

(assert (=> b!17844 t!599))

(declare-fun b_and!461 () Bool)

(assert (= b_and!459 (and (=> t!599 result!409) b_and!461)))

(declare-fun b_lambda!8351 () Bool)

(assert (=> (not b_lambda!8351) (not b!17845)))

(declare-fun t!601 () Bool)

(declare-fun tb!411 () Bool)

(assert (=> (and start!3143 (= P!5 P!5) t!601) tb!411))

(declare-fun result!411 () Bool)

(assert (=> tb!411 (= result!411 true)))

(assert (=> b!17845 t!601))

(declare-fun b_and!463 () Bool)

(assert (= b_and!461 (and (=> t!601 result!411) b_and!463)))

(declare-fun m!28193 () Bool)

(assert (=> b!17843 m!28193))

(assert (=> b!17843 m!28193))

(declare-fun m!28195 () Bool)

(assert (=> b!17843 m!28195))

(declare-fun m!28197 () Bool)

(assert (=> b!17844 m!28197))

(assert (=> b!17844 m!28197))

(declare-fun m!28199 () Bool)

(assert (=> b!17844 m!28199))

(declare-fun m!28201 () Bool)

(assert (=> b!17845 m!28201))

(assert (=> b!17845 m!28201))

(declare-fun m!28203 () Bool)

(assert (=> b!17845 m!28203))

(declare-fun m!28205 () Bool)

(assert (=> start!3143 m!28205))

(push 1)

(assert b_and!463)

(assert (not b_next!51))

(assert (not b_lambda!8351))

(assert (not b_lambda!8349))

(assert (not b_lambda!8347))

(assert (not start!3143))

(check-sat)

(pop 1)

(push 1)

(assert b_and!463)

(assert (not b_next!51))

(check-sat)

(pop 1)

