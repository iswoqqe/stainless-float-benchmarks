; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2731 () Bool)

(assert start!2731)

(declare-fun b!15005 () Bool)

(declare-fun res!11686 () Bool)

(declare-fun e!8217 () Bool)

(assert (=> b!15005 (=> (not res!11686) (not e!8217))))

(declare-datatypes ((array!1098 0))(
  ( (array!1099 (arr!481 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!481 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1098)

(declare-fun qInv!0 (array!1098) Bool)

(assert (=> b!15005 (= res!11686 (qInv!0 q!31))))

(declare-fun b!15006 () Bool)

(declare-fun e!8216 () Bool)

(assert (=> b!15006 (= e!8217 e!8216)))

(declare-fun res!11688 () Bool)

(assert (=> b!15006 (=> (not res!11688) (not e!8216))))

(declare-datatypes ((Unit!1577 0))(
  ( (Unit!1578) )
))
(declare-datatypes ((array!1100 0))(
  ( (array!1101 (arr!482 (Array (_ BitVec 32) (_ BitVec 32))) (size!482 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!362 0))(
  ( (tuple4!363 (_1!380 Unit!1577) (_2!380 array!1100) (_3!312 (_ BitVec 32)) (_4!181 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7703 () tuple4!362)

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun lt!7702 () (_ FloatingPoint 11 53))

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!15006 (= res!11688 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7702) (fp.lt lt!7702 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!482 (_2!380 lt!7703)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15006 (= lt!7702 (fp.sub roundNearestTiesToEven (_4!181 lt!7703) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!181 lt!7703) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!181 lt!7703) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!181 lt!7703) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!181 lt!7703) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8218 () tuple4!362)

(assert (=> b!15006 (= lt!7703 e!8218)))

(declare-fun c!1871 () Bool)

(assert (=> b!15006 (= c!1871 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7700 () (_ FloatingPoint 11 53))

(assert (=> b!15006 (= lt!7700 (select (arr!481 q!31) jz!20))))

(declare-fun lt!7701 () array!1100)

(assert (=> b!15006 (= lt!7701 (array!1101 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15008 () Bool)

(declare-fun res!11687 () Bool)

(assert (=> b!15008 (=> (not res!11687) (not e!8216))))

(declare-fun iq!76 () array!1100)

(declare-fun iqInv!0 (array!1100) Bool)

(assert (=> b!15008 (= res!11687 (iqInv!0 iq!76))))

(declare-fun b!15009 () Bool)

(declare-fun lt!7699 () (_ BitVec 32))

(assert (=> b!15009 (= e!8216 (or (bvslt lt!7699 #b00000000000000000000000000000000) (bvsge lt!7699 (size!482 iq!76))))))

(assert (=> b!15009 (= lt!7699 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun b!15010 () Bool)

(declare-fun Unit!1579 () Unit!1577)

(assert (=> b!15010 (= e!8218 (tuple4!363 Unit!1579 lt!7701 jz!20 lt!7700))))

(declare-fun res!11685 () Bool)

(assert (=> start!2731 (=> (not res!11685) (not e!8217))))

(assert (=> start!2731 (= res!11685 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2731 e!8217))

(assert (=> start!2731 true))

(declare-fun array_inv!429 (array!1098) Bool)

(assert (=> start!2731 (array_inv!429 q!31)))

(declare-fun array_inv!430 (array!1100) Bool)

(assert (=> start!2731 (array_inv!430 iq!76)))

(declare-fun b!15007 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1098 array!1100 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!362)

(assert (=> b!15007 (= e!8218 (computeModuloWhile!0 jz!20 q!31 lt!7701 jz!20 lt!7700))))

(assert (= (and start!2731 res!11685) b!15005))

(assert (= (and b!15005 res!11686) b!15006))

(assert (= (and b!15006 c!1871) b!15007))

(assert (= (and b!15006 (not c!1871)) b!15010))

(assert (= (and b!15006 res!11688) b!15008))

(assert (= (and b!15008 res!11687) b!15009))

(declare-fun m!24589 () Bool)

(assert (=> start!2731 m!24589))

(declare-fun m!24591 () Bool)

(assert (=> start!2731 m!24591))

(declare-fun m!24593 () Bool)

(assert (=> b!15007 m!24593))

(declare-fun m!24595 () Bool)

(assert (=> b!15005 m!24595))

(declare-fun m!24597 () Bool)

(assert (=> b!15006 m!24597))

(declare-fun m!24599 () Bool)

(assert (=> b!15006 m!24599))

(declare-fun m!24601 () Bool)

(assert (=> b!15008 m!24601))

(push 1)

(assert (not b!15008))

(assert (not b!15007))

(assert (not start!2731))

(assert (not b!15005))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7545 () Bool)

(declare-fun res!11691 () Bool)

(declare-fun e!8223 () Bool)

(assert (=> d!7545 (=> (not res!11691) (not e!8223))))

(assert (=> d!7545 (= res!11691 (= (size!482 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!7545 (= (iqInv!0 iq!76) e!8223)))

(declare-fun b!15013 () Bool)

(declare-fun lambda!666 () Int)

(declare-fun all20Int!0 (array!1100 Int) Bool)

(assert (=> b!15013 (= e!8223 (all20Int!0 iq!76 lambda!666))))

(assert (= (and d!7545 res!11691) b!15013))

(declare-fun m!24603 () Bool)

(assert (=> b!15013 m!24603))

(assert (=> b!15008 d!7545))

(declare-fun b!15026 () Bool)

(declare-fun e!8231 () Bool)

(declare-fun lt!7714 () tuple4!362)

(assert (=> b!15026 (= e!8231 (bvsle (_3!312 lt!7714) #b00000000000000000000000000000000))))

(declare-fun d!7547 () Bool)

(assert (=> d!7547 e!8231))

(declare-fun res!11702 () Bool)

(assert (=> d!7547 (=> (not res!11702) (not e!8231))))

(assert (=> d!7547 (= res!11702 (and true true (bvsle #b00000000000000000000000000000000 (_3!312 lt!7714)) (bvsle (_3!312 lt!7714) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!181 lt!7714)) (fp.leq (_4!181 lt!7714) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!8232 () tuple4!362)

(assert (=> d!7547 (= lt!7714 e!8232)))

(declare-fun c!1874 () Bool)

(declare-fun lt!7717 () (_ BitVec 32))

(assert (=> d!7547 (= c!1874 (bvsgt lt!7717 #b00000000000000000000000000000000))))

(assert (=> d!7547 (= lt!7717 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!7716 () (_ FloatingPoint 11 53))

(declare-fun lt!7715 () (_ FloatingPoint 11 53))

(assert (=> d!7547 (= lt!7716 (fp.add roundNearestTiesToEven (select (arr!481 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!7715))))

(declare-fun lt!7718 () array!1100)

(assert (=> d!7547 (= lt!7718 (array!1101 (store (arr!482 lt!7701) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!7700 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7715))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!7700 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7715)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!7700 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7715)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!7700 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7715))))))) (size!482 lt!7701)))))

(assert (=> d!7547 (= lt!7715 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7700)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7700) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7700) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7700)))))))))

(declare-fun e!8230 () Bool)

(assert (=> d!7547 e!8230))

(declare-fun res!11700 () Bool)

(assert (=> d!7547 (=> (not res!11700) (not e!8230))))

(assert (=> d!7547 (= res!11700 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7700) (fp.leq lt!7700 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7547 (= (computeModuloWhile!0 jz!20 q!31 lt!7701 jz!20 lt!7700) lt!7714)))

(declare-fun b!15027 () Bool)

(assert (=> b!15027 (= e!8230 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun b!15028 () Bool)

(declare-fun res!11701 () Bool)

(assert (=> b!15028 (=> (not res!11701) (not e!8230))))

(assert (=> b!15028 (= res!11701 (iqInv!0 lt!7701))))

(declare-fun b!15029 () Bool)

(declare-fun res!11703 () Bool)

(assert (=> b!15029 (=> (not res!11703) (not e!8231))))

(assert (=> b!15029 (= res!11703 (iqInv!0 (_2!380 lt!7714)))))

(declare-fun b!15030 () Bool)

(declare-fun Unit!1580 () Unit!1577)

(assert (=> b!15030 (= e!8232 (tuple4!363 Unit!1580 lt!7718 lt!7717 lt!7716))))

(declare-fun b!15031 () Bool)

(assert (=> b!15031 (= e!8232 (computeModuloWhile!0 jz!20 q!31 lt!7718 lt!7717 lt!7716))))

(assert (= (and d!7547 res!11700) b!15028))

(assert (= (and b!15028 res!11701) b!15027))

(assert (= (and d!7547 c!1874) b!15031))

(assert (= (and d!7547 (not c!1874)) b!15030))

(assert (= (and d!7547 res!11702) b!15029))

(assert (= (and b!15029 res!11703) b!15026))

(declare-fun m!24605 () Bool)

(assert (=> d!7547 m!24605))

(declare-fun m!24607 () Bool)

(assert (=> d!7547 m!24607))

(declare-fun m!24609 () Bool)

(assert (=> b!15028 m!24609))

(declare-fun m!24611 () Bool)

(assert (=> b!15029 m!24611))

(declare-fun m!24613 () Bool)

(assert (=> b!15031 m!24613))

(assert (=> b!15007 d!7547))

(declare-fun d!7549 () Bool)

(assert (=> d!7549 (= (array_inv!429 q!31) (bvsge (size!481 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2731 d!7549))

(declare-fun d!7551 () Bool)

(assert (=> d!7551 (= (array_inv!430 iq!76) (bvsge (size!482 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2731 d!7551))

(declare-fun d!7553 () Bool)

(declare-fun res!11706 () Bool)

(declare-fun e!8235 () Bool)

(assert (=> d!7553 (=> (not res!11706) (not e!8235))))

(assert (=> d!7553 (= res!11706 (= (size!481 q!31) #b00000000000000000000000000010100))))

(assert (=> d!7553 (= (qInv!0 q!31) e!8235)))

(declare-fun b!15034 () Bool)

(declare-fun lambda!669 () Int)

(declare-fun all20!0 (array!1098 Int) Bool)

(assert (=> b!15034 (= e!8235 (all20!0 q!31 lambda!669))))

(assert (= (and d!7553 res!11706) b!15034))

(declare-fun m!24615 () Bool)

(assert (=> b!15034 m!24615))

(assert (=> b!15005 d!7553))

(push 1)

(assert (not b!15031))

(assert (not b!15013))

(assert (not b!15028))

(assert (not b!15034))

(assert (not b!15029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

