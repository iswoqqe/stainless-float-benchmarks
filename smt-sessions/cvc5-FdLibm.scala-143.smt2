; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1099 () Bool)

(assert start!1099)

(declare-fun res!4198 () Bool)

(declare-fun e!2639 () Bool)

(assert (=> start!1099 (=> (not res!4198) (not e!2639))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!373 0))(
  ( (array!374 (arr!161 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!161 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!373)

(assert (=> start!1099 (= res!4198 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!161 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1099 e!2639))

(assert (=> start!1099 true))

(declare-fun array_inv!111 (array!373) Bool)

(assert (=> start!1099 (array_inv!111 qq!69)))

(declare-fun b!5337 () Bool)

(declare-fun res!4199 () Bool)

(assert (=> b!5337 (=> (not res!4199) (not e!2639))))

(declare-fun qqInv!0 (array!373) Bool)

(assert (=> b!5337 (= res!4199 (qqInv!0 qq!69))))

(declare-fun b!5338 () Bool)

(assert (=> b!5338 (= e!2639 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!161 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (fp.leq (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!161 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (bvsge #b00000000000000000000000000000001 (size!161 qq!69))))))

(assert (= (and start!1099 res!4198) b!5337))

(assert (= (and b!5337 res!4199) b!5338))

(declare-fun m!8663 () Bool)

(assert (=> start!1099 m!8663))

(declare-fun m!8665 () Bool)

(assert (=> b!5337 m!8665))

(declare-fun m!8667 () Bool)

(assert (=> b!5338 m!8667))

(declare-fun m!8669 () Bool)

(assert (=> b!5338 m!8669))

(declare-fun m!8671 () Bool)

(assert (=> b!5338 m!8671))

(push 1)

(assert (not start!1099))

(assert (not b!5337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

