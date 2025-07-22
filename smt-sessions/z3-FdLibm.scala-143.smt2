; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1083 () Bool)

(assert start!1083)

(declare-fun res!3716 () Bool)

(declare-fun e!2538 () Bool)

(assert (=> start!1083 (=> (not res!3716) (not e!2538))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!372 0))(
  ( (array!373 (arr!161 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!161 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!372)

(assert (=> start!1083 (= res!3716 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!161 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1083 e!2538))

(assert (=> start!1083 true))

(declare-fun array_inv!111 (array!372) Bool)

(assert (=> start!1083 (array_inv!111 qq!69)))

(declare-fun b!4813 () Bool)

(declare-fun res!3717 () Bool)

(assert (=> b!4813 (=> (not res!3717) (not e!2538))))

(declare-fun qqInv!0 (array!372) Bool)

(assert (=> b!4813 (= res!3717 (qqInv!0 qq!69))))

(declare-fun b!4814 () Bool)

(assert (=> b!4814 (= e!2538 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!161 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (fp.leq (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!161 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (bvsge #b00000000000000000000000000000001 (size!161 qq!69))))))

(assert (= (and start!1083 res!3716) b!4813))

(assert (= (and b!4813 res!3717) b!4814))

(declare-fun m!6193 () Bool)

(assert (=> start!1083 m!6193))

(declare-fun m!6195 () Bool)

(assert (=> b!4813 m!6195))

(declare-fun m!6197 () Bool)

(assert (=> b!4814 m!6197))

(declare-fun m!6199 () Bool)

(assert (=> b!4814 m!6199))

(declare-fun m!6201 () Bool)

(assert (=> b!4814 m!6201))

(check-sat (not start!1083) (not b!4813))
(check-sat)
