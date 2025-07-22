; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1071 () Bool)

(assert start!1071)

(declare-fun res!3680 () Bool)

(declare-fun e!2502 () Bool)

(assert (=> start!1071 (=> (not res!3680) (not e!2502))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!360 0))(
  ( (array!361 (arr!155 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!155 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!360)

(assert (=> start!1071 (= res!3680 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!155 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1071 e!2502))

(assert (=> start!1071 true))

(declare-fun array_inv!105 (array!360) Bool)

(assert (=> start!1071 (array_inv!105 qq!69)))

(declare-fun b!4777 () Bool)

(declare-fun res!3681 () Bool)

(assert (=> b!4777 (=> (not res!3681) (not e!2502))))

(declare-fun qqInv!0 (array!360) Bool)

(assert (=> b!4777 (= res!3681 (qqInv!0 qq!69))))

(declare-fun b!4778 () Bool)

(assert (=> b!4778 (= e!2502 (bvsge #b00000000000000000000000000000000 (size!155 qq!69)))))

(assert (= (and start!1071 res!3680) b!4777))

(assert (= (and b!4777 res!3681) b!4778))

(declare-fun m!6151 () Bool)

(assert (=> start!1071 m!6151))

(declare-fun m!6153 () Bool)

(assert (=> b!4777 m!6153))

(check-sat (not b!4777) (not start!1071))
(check-sat)
