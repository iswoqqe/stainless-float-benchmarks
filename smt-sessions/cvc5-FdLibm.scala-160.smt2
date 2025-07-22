; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1133 () Bool)

(assert start!1133)

(declare-fun res!4300 () Bool)

(declare-fun e!2741 () Bool)

(assert (=> start!1133 (=> (not res!4300) (not e!2741))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!407 0))(
  ( (array!408 (arr!178 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!178 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!407)

(assert (=> start!1133 (= res!4300 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!178 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1133 e!2741))

(assert (=> start!1133 true))

(declare-fun array_inv!128 (array!407) Bool)

(assert (=> start!1133 (array_inv!128 qq!69)))

(declare-fun b!5439 () Bool)

(declare-fun res!4301 () Bool)

(assert (=> b!5439 (=> (not res!4301) (not e!2741))))

(declare-fun qqInv!0 (array!407) Bool)

(assert (=> b!5439 (= res!4301 (qqInv!0 qq!69))))

(declare-fun b!5440 () Bool)

(assert (=> b!5440 (= e!2741 false)))

(assert (= (and start!1133 res!4300) b!5439))

(assert (= (and b!5439 res!4301) b!5440))

(declare-fun m!8917 () Bool)

(assert (=> start!1133 m!8917))

(declare-fun m!8919 () Bool)

(assert (=> b!5439 m!8919))

(declare-fun m!8921 () Bool)

(assert (=> b!5440 m!8921))

(declare-fun m!8923 () Bool)

(assert (=> b!5440 m!8923))

(declare-fun m!8925 () Bool)

(assert (=> b!5440 m!8925))

(declare-fun m!8927 () Bool)

(assert (=> b!5440 m!8927))

(declare-fun m!8929 () Bool)

(assert (=> b!5440 m!8929))

(declare-fun m!8931 () Bool)

(assert (=> b!5440 m!8931))

(declare-fun m!8933 () Bool)

(assert (=> b!5440 m!8933))

(declare-fun m!8935 () Bool)

(assert (=> b!5440 m!8935))

(declare-fun m!8937 () Bool)

(assert (=> b!5440 m!8937))

(push 1)

(assert (not start!1133))

(assert (not b!5439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

