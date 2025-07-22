; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2197 () Bool)

(assert start!2197)

(declare-fun b_free!3 () Bool)

(declare-fun b_next!3 () Bool)

(assert (=> start!2197 (= b_free!3 (not b_next!3))))

(declare-fun tp!5 () Bool)

(declare-fun b_and!5 () Bool)

(assert (=> start!2197 (= tp!5 b_and!5)))

(declare-fun res!9201 () Bool)

(declare-fun e!6186 () Bool)

(assert (=> start!2197 (=> (not res!9201) (not e!6186))))

(declare-datatypes ((array!760 0))(
  ( (array!761 (arr!330 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!330 (_ BitVec 32))) )
))
(declare-fun a!11 () array!760)

(assert (=> start!2197 (= res!9201 (= (size!330 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2197 e!6186))

(declare-fun array_inv!279 (array!760) Bool)

(assert (=> start!2197 (array_inv!279 a!11)))

(assert (=> start!2197 tp!5))

(declare-fun b!11360 () Bool)

(declare-fun res!9200 () Bool)

(assert (=> b!11360 (=> (not res!9200) (not e!6186))))

(declare-fun P!4 () Int)

(declare-fun dynLambda!30 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!11360 (= res!9200 (dynLambda!30 P!4 (select (arr!330 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!11361 () Bool)

(declare-fun res!9199 () Bool)

(assert (=> b!11361 (=> (not res!9199) (not e!6186))))

(assert (=> b!11361 (= res!9199 (dynLambda!30 P!4 (select (arr!330 a!11) #b00000000000000000000000000000001)))))

(declare-fun b!11362 () Bool)

(assert (=> b!11362 (= e!6186 (bvsge #b00000000000000000000000000000010 (size!330 a!11)))))

(assert (= (and start!2197 res!9201) b!11360))

(assert (= (and b!11360 res!9200) b!11361))

(assert (= (and b!11361 res!9199) b!11362))

(declare-fun b_lambda!6023 () Bool)

(assert (=> (not b_lambda!6023) (not b!11360)))

(declare-fun t!193 () Bool)

(declare-fun tb!3 () Bool)

(assert (=> (and start!2197 (= P!4 P!4) t!193) tb!3))

(declare-fun result!3 () Bool)

(assert (=> tb!3 (= result!3 true)))

(assert (=> b!11360 t!193))

(declare-fun b_and!7 () Bool)

(assert (= b_and!5 (and (=> t!193 result!3) b_and!7)))

(declare-fun b_lambda!6025 () Bool)

(assert (=> (not b_lambda!6025) (not b!11361)))

(declare-fun t!195 () Bool)

(declare-fun tb!5 () Bool)

(assert (=> (and start!2197 (= P!4 P!4) t!195) tb!5))

(declare-fun result!5 () Bool)

(assert (=> tb!5 (= result!5 true)))

(assert (=> b!11361 t!195))

(declare-fun b_and!9 () Bool)

(assert (= b_and!7 (and (=> t!195 result!5) b_and!9)))

(declare-fun m!19103 () Bool)

(assert (=> start!2197 m!19103))

(declare-fun m!19105 () Bool)

(assert (=> b!11360 m!19105))

(assert (=> b!11360 m!19105))

(declare-fun m!19107 () Bool)

(assert (=> b!11360 m!19107))

(declare-fun m!19109 () Bool)

(assert (=> b!11361 m!19109))

(assert (=> b!11361 m!19109))

(declare-fun m!19111 () Bool)

(assert (=> b!11361 m!19111))

(push 1)

(assert (not b_lambda!6025))

(assert (not start!2197))

(assert b_and!9)

(assert (not b_lambda!6023))

(assert (not b_next!3))

(check-sat)

(pop 1)

(push 1)

(assert b_and!9)

(assert (not b_next!3))

(check-sat)

(pop 1)

