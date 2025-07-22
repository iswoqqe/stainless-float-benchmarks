; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1091 () Bool)

(assert start!1091)

(declare-fun res!4174 () Bool)

(declare-fun e!2615 () Bool)

(assert (=> start!1091 (=> (not res!4174) (not e!2615))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!365 0))(
  ( (array!366 (arr!157 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!157 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!365)

(assert (=> start!1091 (= res!4174 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!157 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1091 e!2615))

(assert (=> start!1091 true))

(declare-fun array_inv!107 (array!365) Bool)

(assert (=> start!1091 (array_inv!107 qq!69)))

(declare-fun b!5313 () Bool)

(declare-fun res!4175 () Bool)

(assert (=> b!5313 (=> (not res!4175) (not e!2615))))

(declare-fun qqInv!0 (array!365) Bool)

(assert (=> b!5313 (= res!4175 (qqInv!0 qq!69))))

(declare-fun b!5314 () Bool)

(assert (=> b!5314 (= e!2615 false)))

(assert (= (and start!1091 res!4174) b!5313))

(assert (= (and b!5313 res!4175) b!5314))

(declare-fun m!8629 () Bool)

(assert (=> start!1091 m!8629))

(declare-fun m!8631 () Bool)

(assert (=> b!5313 m!8631))

(push 1)

(assert (not start!1091))

(assert (not b!5313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

