; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1101 () Bool)

(assert start!1101)

(declare-fun res!4066 () Bool)

(declare-fun e!2621 () Bool)

(assert (=> start!1101 (=> (not res!4066) (not e!2621))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!377 0))(
  ( (array!378 (arr!163 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!163 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!377)

(assert (=> start!1101 (= res!4066 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!163 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1101 e!2621))

(assert (=> start!1101 true))

(declare-fun array_inv!113 (array!377) Bool)

(assert (=> start!1101 (array_inv!113 qq!69)))

(declare-fun b!5193 () Bool)

(declare-fun res!4067 () Bool)

(assert (=> b!5193 (=> (not res!4067) (not e!2621))))

(declare-fun qqInv!0 (array!377) Bool)

(assert (=> b!5193 (= res!4067 (qqInv!0 qq!69))))

(declare-fun b!5194 () Bool)

(assert (=> b!5194 (= e!2621 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!163 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (fp.leq (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!163 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (bvsge #b00000000000000000000000000000000 (size!163 qq!69))))))

(assert (= (and start!1101 res!4066) b!5193))

(assert (= (and b!5193 res!4067) b!5194))

(declare-fun m!7893 () Bool)

(assert (=> start!1101 m!7893))

(declare-fun m!7895 () Bool)

(assert (=> b!5193 m!7895))

(declare-fun m!7897 () Bool)

(assert (=> b!5194 m!7897))

(declare-fun m!7899 () Bool)

(assert (=> b!5194 m!7899))

(declare-fun m!7901 () Bool)

(assert (=> b!5194 m!7901))

(check-sat (not b!5193) (not start!1101))
(check-sat)
