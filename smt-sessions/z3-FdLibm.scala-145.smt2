; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1087 () Bool)

(assert start!1087)

(declare-fun res!3728 () Bool)

(declare-fun e!2550 () Bool)

(assert (=> start!1087 (=> (not res!3728) (not e!2550))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!376 0))(
  ( (array!377 (arr!163 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!163 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!376)

(assert (=> start!1087 (= res!3728 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!163 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1087 e!2550))

(assert (=> start!1087 true))

(declare-fun array_inv!113 (array!376) Bool)

(assert (=> start!1087 (array_inv!113 qq!69)))

(declare-fun b!4825 () Bool)

(declare-fun res!3729 () Bool)

(assert (=> b!4825 (=> (not res!3729) (not e!2550))))

(declare-fun qqInv!0 (array!376) Bool)

(assert (=> b!4825 (= res!3729 (qqInv!0 qq!69))))

(declare-fun b!4826 () Bool)

(assert (=> b!4826 (= e!2550 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!163 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (fp.leq (select (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp.mul roundNearestTiesToEven (fp #b0 #b01111111111 #b1001001000011111101101000000000000000000000000000000) (select (arr!163 qq!69) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (bvsge #b00000000000000000000000000000000 (size!163 qq!69))))))

(assert (= (and start!1087 res!3728) b!4825))

(assert (= (and b!4825 res!3729) b!4826))

(declare-fun m!6213 () Bool)

(assert (=> start!1087 m!6213))

(declare-fun m!6215 () Bool)

(assert (=> b!4825 m!6215))

(declare-fun m!6217 () Bool)

(assert (=> b!4826 m!6217))

(declare-fun m!6219 () Bool)

(assert (=> b!4826 m!6219))

(declare-fun m!6221 () Bool)

(assert (=> b!4826 m!6221))

(check-sat (not start!1087) (not b!4825))
(check-sat)
