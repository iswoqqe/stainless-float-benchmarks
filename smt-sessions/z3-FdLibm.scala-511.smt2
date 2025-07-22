; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2717 () Bool)

(assert start!2717)

(declare-fun b!14773 () Bool)

(declare-fun res!11377 () Bool)

(declare-fun e!8502 () Bool)

(assert (=> b!14773 (=> (not res!11377) (not e!8502))))

(declare-datatypes ((array!1193 0))(
  ( (array!1194 (arr!525 (Array (_ BitVec 32) (_ BitVec 32))) (size!525 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1193)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14773 (= res!11377 (QInt!0 (select (arr!525 iq!76) i!142)))))

(declare-fun b!14774 () Bool)

(declare-fun res!11375 () Bool)

(assert (=> b!14774 (=> (not res!11375) (not e!8502))))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!14774 (= res!11375 (and (bvsge (select (arr!525 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!14775 () Bool)

(declare-fun lt!8014 () (_ BitVec 32))

(assert (=> b!14775 (= e!8502 (and (bvsge lt!8014 (bvsub jz!20 #b00000000000000000000000000000001)) (bvslt lt!8014 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14775 (= lt!8014 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun res!11376 () Bool)

(declare-fun e!8503 () Bool)

(assert (=> start!2717 (=> (not res!11376) (not e!8503))))

(assert (=> start!2717 (= res!11376 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2717 e!8503))

(assert (=> start!2717 true))

(declare-datatypes ((array!1195 0))(
  ( (array!1196 (arr!526 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!526 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1195)

(declare-fun array_inv!473 (array!1195) Bool)

(assert (=> start!2717 (array_inv!473 q!31)))

(declare-fun array_inv!474 (array!1193) Bool)

(assert (=> start!2717 (array_inv!474 iq!76)))

(declare-fun b!14776 () Bool)

(declare-fun res!11378 () Bool)

(assert (=> b!14776 (=> (not res!11378) (not e!8502))))

(declare-fun iqInv!0 (array!1193) Bool)

(assert (=> b!14776 (= res!11378 (iqInv!0 iq!76))))

(declare-datatypes ((Unit!1599 0))(
  ( (Unit!1600) )
))
(declare-datatypes ((tuple4!418 0))(
  ( (tuple4!419 (_1!403 Unit!1599) (_2!403 array!1193) (_3!340 (_ BitVec 32)) (_4!209 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8504 () tuple4!418)

(declare-fun b!14777 () Bool)

(declare-fun lt!8012 () array!1193)

(declare-fun lt!8016 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1195 array!1193 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!418)

(assert (=> b!14777 (= e!8504 (computeModuloWhile!0 jz!20 q!31 lt!8012 jz!20 lt!8016))))

(declare-fun b!14778 () Bool)

(declare-fun res!11380 () Bool)

(assert (=> b!14778 (=> (not res!11380) (not e!8503))))

(declare-fun qInv!0 (array!1195) Bool)

(assert (=> b!14778 (= res!11380 (qInv!0 q!31))))

(declare-fun b!14779 () Bool)

(assert (=> b!14779 (= e!8503 e!8502)))

(declare-fun res!11379 () Bool)

(assert (=> b!14779 (=> (not res!11379) (not e!8502))))

(declare-fun lt!8013 () tuple4!418)

(declare-fun lt!8015 () (_ FloatingPoint 11 53))

(assert (=> b!14779 (= res!11379 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8015) (fp.lt lt!8015 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!525 (_2!403 lt!8013)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14779 (= lt!8015 (fp.sub roundNearestTiesToEven (_4!209 lt!8013) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!209 lt!8013) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!209 lt!8013) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!209 lt!8013) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!209 lt!8013) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14779 (= lt!8013 e!8504)))

(declare-fun c!1910 () Bool)

(assert (=> b!14779 (= c!1910 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14779 (= lt!8016 (select (arr!526 q!31) jz!20))))

(assert (=> b!14779 (= lt!8012 (array!1194 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14780 () Bool)

(declare-fun Unit!1601 () Unit!1599)

(assert (=> b!14780 (= e!8504 (tuple4!419 Unit!1601 lt!8012 jz!20 lt!8016))))

(assert (= (and start!2717 res!11376) b!14778))

(assert (= (and b!14778 res!11380) b!14779))

(assert (= (and b!14779 c!1910) b!14777))

(assert (= (and b!14779 (not c!1910)) b!14780))

(assert (= (and b!14779 res!11379) b!14776))

(assert (= (and b!14776 res!11378) b!14774))

(assert (= (and b!14774 res!11375) b!14773))

(assert (= (and b!14773 res!11377) b!14775))

(declare-fun m!20711 () Bool)

(assert (=> b!14778 m!20711))

(declare-fun m!20713 () Bool)

(assert (=> b!14776 m!20713))

(declare-fun m!20715 () Bool)

(assert (=> b!14779 m!20715))

(declare-fun m!20717 () Bool)

(assert (=> b!14779 m!20717))

(declare-fun m!20719 () Bool)

(assert (=> b!14773 m!20719))

(assert (=> b!14773 m!20719))

(declare-fun m!20721 () Bool)

(assert (=> b!14773 m!20721))

(declare-fun m!20723 () Bool)

(assert (=> start!2717 m!20723))

(declare-fun m!20725 () Bool)

(assert (=> start!2717 m!20725))

(declare-fun m!20727 () Bool)

(assert (=> b!14774 m!20727))

(declare-fun m!20729 () Bool)

(assert (=> b!14777 m!20729))

(check-sat (not b!14777) (not start!2717) (not b!14773) (not b!14778) (not b!14776))
(check-sat)
