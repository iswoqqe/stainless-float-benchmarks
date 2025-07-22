; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2849 () Bool)

(assert start!2849)

(declare-fun b!15500 () Bool)

(declare-fun res!12103 () Bool)

(declare-fun e!8836 () Bool)

(assert (=> b!15500 (=> (not res!12103) (not e!8836))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun jz!49 () (_ BitVec 32))

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!15500 (= res!12103 (and (bvsle #b00000000000000000000000000000000 j!78) (bvsle j!78 jz!49) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) z!100) (fp.leq z!100 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun b!15501 () Bool)

(declare-fun e!8837 () Bool)

(declare-datatypes ((Unit!1604 0))(
  ( (Unit!1605) )
))
(declare-datatypes ((array!1307 0))(
  ( (array!1308 (arr!575 (Array (_ BitVec 32) (_ BitVec 32))) (size!575 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!422 0))(
  ( (tuple4!423 (_1!405 Unit!1604) (_2!405 array!1307) (_3!342 (_ BitVec 32)) (_4!211 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!8079 () tuple4!422)

(assert (=> b!15501 (= e!8837 false)))

(declare-fun lt!8078 () (_ FloatingPoint 11 53))

(declare-fun iq!146 () array!1307)

(declare-datatypes ((array!1309 0))(
  ( (array!1310 (arr!576 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!576 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1309)

(declare-fun lt!8077 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1309 array!1307 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!422)

(assert (=> b!15501 (= lt!8079 (computeModuloWhile!0 jz!49 q!79 (array!1308 (store (arr!575 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8078))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8078)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8078)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8078))))))) (size!575 iq!146)) lt!8077 (fp.add roundNearestTiesToEven (select (arr!576 q!79) (bvsub j!78 #b00000000000000000000000000000001)) lt!8078)))))

(declare-fun b!15502 () Bool)

(declare-fun e!8834 () Bool)

(assert (=> b!15502 (= e!8836 e!8834)))

(declare-fun res!12104 () Bool)

(assert (=> b!15502 (=> (not res!12104) (not e!8834))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15502 (= res!12104 (QInt!0 (select (store (arr!575 iq!146) (bvsub jz!49 j!78) (ite (fp.isNaN (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8078))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8078)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8078)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven z!100 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8078))))))) (bvsub jz!49 j!78))))))

(assert (=> b!15502 (= lt!8078 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) z!100)))))))))

(declare-fun b!15503 () Bool)

(declare-fun res!12105 () Bool)

(assert (=> b!15503 (=> (not res!12105) (not e!8836))))

(declare-fun iqInv!0 (array!1307) Bool)

(assert (=> b!15503 (= res!12105 (iqInv!0 iq!146))))

(declare-fun b!15504 () Bool)

(declare-fun res!12101 () Bool)

(assert (=> b!15504 (=> (not res!12101) (not e!8836))))

(assert (=> b!15504 (= res!12101 (bvsgt j!78 #b00000000000000000000000000000000))))

(declare-fun res!12107 () Bool)

(assert (=> start!2849 (=> (not res!12107) (not e!8836))))

(assert (=> start!2849 (= res!12107 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2849 e!8836))

(assert (=> start!2849 true))

(declare-fun array_inv!523 (array!1307) Bool)

(assert (=> start!2849 (array_inv!523 iq!146)))

(declare-fun array_inv!524 (array!1309) Bool)

(assert (=> start!2849 (array_inv!524 q!79)))

(declare-fun b!15505 () Bool)

(declare-fun res!12106 () Bool)

(assert (=> b!15505 (=> (not res!12106) (not e!8836))))

(declare-fun qInv!0 (array!1309) Bool)

(assert (=> b!15505 (= res!12106 (qInv!0 q!79))))

(declare-fun b!15506 () Bool)

(assert (=> b!15506 (= e!8834 e!8837)))

(declare-fun res!12102 () Bool)

(assert (=> b!15506 (=> (not res!12102) (not e!8837))))

(assert (=> b!15506 (= res!12102 (bvsgt lt!8077 #b00000000000000000000000000000000))))

(assert (=> b!15506 (= lt!8077 (bvsub j!78 #b00000000000000000000000000000001))))

(declare-fun b!15507 () Bool)

(declare-fun res!12108 () Bool)

(assert (=> b!15507 (=> (not res!12108) (not e!8834))))

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!15507 (= res!12108 (P!3 (select (arr!576 q!79) (bvsub j!78 #b00000000000000000000000000000001))))))

(declare-fun b!15508 () Bool)

(declare-fun res!12100 () Bool)

(assert (=> b!15508 (=> (not res!12100) (not e!8834))))

(assert (=> b!15508 (= res!12100 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8078) (fp.leq lt!8078 (fp #b0 #b10000011001 #b0100000000000000000000010000000000000000000000000000))))))

(assert (= (and start!2849 res!12107) b!15505))

(assert (= (and b!15505 res!12106) b!15500))

(assert (= (and b!15500 res!12103) b!15503))

(assert (= (and b!15503 res!12105) b!15504))

(assert (= (and b!15504 res!12101) b!15502))

(assert (= (and b!15502 res!12104) b!15508))

(assert (= (and b!15508 res!12100) b!15507))

(assert (= (and b!15507 res!12108) b!15506))

(assert (= (and b!15506 res!12102) b!15501))

(declare-fun m!21661 () Bool)

(assert (=> b!15503 m!21661))

(declare-fun m!21663 () Bool)

(assert (=> b!15502 m!21663))

(declare-fun m!21665 () Bool)

(assert (=> b!15502 m!21665))

(assert (=> b!15502 m!21665))

(declare-fun m!21667 () Bool)

(assert (=> b!15502 m!21667))

(declare-fun m!21669 () Bool)

(assert (=> b!15505 m!21669))

(assert (=> b!15501 m!21663))

(declare-fun m!21671 () Bool)

(assert (=> b!15501 m!21671))

(declare-fun m!21673 () Bool)

(assert (=> b!15501 m!21673))

(assert (=> b!15507 m!21671))

(assert (=> b!15507 m!21671))

(declare-fun m!21675 () Bool)

(assert (=> b!15507 m!21675))

(declare-fun m!21677 () Bool)

(assert (=> start!2849 m!21677))

(declare-fun m!21679 () Bool)

(assert (=> start!2849 m!21679))

(check-sat (not b!15507) (not start!2849) (not b!15502) (not b!15505) (not b!15501) (not b!15503))
(check-sat)
