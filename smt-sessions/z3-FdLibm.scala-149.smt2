; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1109 () Bool)

(assert start!1109)

(declare-fun res!4090 () Bool)

(declare-fun e!2645 () Bool)

(assert (=> start!1109 (=> (not res!4090) (not e!2645))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!385 0))(
  ( (array!386 (arr!167 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!167 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!385)

(assert (=> start!1109 (= res!4090 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!167 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1109 e!2645))

(assert (=> start!1109 true))

(declare-fun array_inv!117 (array!385) Bool)

(assert (=> start!1109 (array_inv!117 qq!69)))

(declare-fun b!5217 () Bool)

(declare-fun res!4091 () Bool)

(assert (=> b!5217 (=> (not res!4091) (not e!2645))))

(declare-fun qqInv!0 (array!385) Bool)

(assert (=> b!5217 (= res!4091 (qqInv!0 qq!69))))

(declare-fun b!5218 () Bool)

(assert (=> b!5218 (= e!2645 false)))

(assert (= (and start!1109 res!4090) b!5217))

(assert (= (and b!5217 res!4091) b!5218))

(declare-fun m!7939 () Bool)

(assert (=> start!1109 m!7939))

(declare-fun m!7941 () Bool)

(assert (=> b!5217 m!7941))

(declare-fun m!7943 () Bool)

(assert (=> b!5218 m!7943))

(declare-fun m!7945 () Bool)

(assert (=> b!5218 m!7945))

(declare-fun m!7947 () Bool)

(assert (=> b!5218 m!7947))

(declare-fun m!7949 () Bool)

(assert (=> b!5218 m!7949))

(declare-fun m!7951 () Bool)

(assert (=> b!5218 m!7951))

(declare-fun m!7953 () Bool)

(assert (=> b!5218 m!7953))

(check-sat (not start!1109) (not b!5217))
(check-sat)
