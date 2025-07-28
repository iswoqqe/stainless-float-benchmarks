; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1091 () Bool)

(assert start!1091)

(declare-fun res!4036 () Bool)

(declare-fun e!2591 () Bool)

(assert (=> start!1091 (=> (not res!4036) (not e!2591))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!367 0))(
  ( (array!368 (arr!158 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!158 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!367)

(assert (=> start!1091 (= res!4036 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!158 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1091 e!2591))

(assert (=> start!1091 true))

(declare-fun array_inv!108 (array!367) Bool)

(assert (=> start!1091 (array_inv!108 qq!69)))

(declare-fun b!5163 () Bool)

(declare-fun res!4037 () Bool)

(assert (=> b!5163 (=> (not res!4037) (not e!2591))))

(declare-fun qqInv!0 (array!367) Bool)

(assert (=> b!5163 (= res!4037 (qqInv!0 qq!69))))

(declare-fun b!5164 () Bool)

(assert (=> b!5164 (= e!2591 false)))

(assert (= (and start!1091 res!4036) b!5163))

(assert (= (and b!5163 res!4037) b!5164))

(declare-fun m!7843 () Bool)

(assert (=> start!1091 m!7843))

(declare-fun m!7845 () Bool)

(assert (=> b!5163 m!7845))

(declare-fun m!7847 () Bool)

(assert (=> b!5164 m!7847))

(declare-fun m!7849 () Bool)

(assert (=> b!5164 m!7849))

(declare-fun m!7851 () Bool)

(assert (=> b!5164 m!7851))

(check-sat (not start!1091) (not b!5163))
(check-sat)
