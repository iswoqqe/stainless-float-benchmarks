; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2747 () Bool)

(assert start!2747)

(declare-fun b!15083 () Bool)

(declare-fun res!11740 () Bool)

(declare-fun e!8280 () Bool)

(assert (=> b!15083 (=> (not res!11740) (not e!8280))))

(declare-datatypes ((array!1112 0))(
  ( (array!1113 (arr!487 (Array (_ BitVec 32) (_ BitVec 32))) (size!487 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1112)

(declare-fun iqInv!0 (array!1112) Bool)

(assert (=> b!15083 (= res!11740 (iqInv!0 iq!76))))

(declare-fun res!11741 () Bool)

(declare-fun e!8279 () Bool)

(assert (=> start!2747 (=> (not res!11741) (not e!8279))))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> start!2747 (= res!11741 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2747 e!8279))

(assert (=> start!2747 true))

(declare-datatypes ((array!1114 0))(
  ( (array!1115 (arr!488 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!488 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1114)

(declare-fun array_inv!435 (array!1114) Bool)

(assert (=> start!2747 (array_inv!435 q!31)))

(declare-fun array_inv!436 (array!1112) Bool)

(assert (=> start!2747 (array_inv!436 iq!76)))

(declare-fun b!15084 () Bool)

(assert (=> b!15084 (= e!8279 e!8280)))

(declare-fun res!11742 () Bool)

(assert (=> b!15084 (=> (not res!11742) (not e!8280))))

(declare-fun i!142 () (_ BitVec 32))

(declare-datatypes ((Unit!1587 0))(
  ( (Unit!1588) )
))
(declare-datatypes ((tuple4!368 0))(
  ( (tuple4!369 (_1!383 Unit!1587) (_2!383 array!1112) (_3!315 (_ BitVec 32)) (_4!184 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7753 () tuple4!368)

(declare-fun lt!7752 () (_ FloatingPoint 11 53))

(assert (=> b!15084 (= res!11742 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7752) (fp.lt lt!7752 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!487 (_2!383 lt!7753)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15084 (= lt!7752 (fp.sub roundNearestTiesToEven (_4!184 lt!7753) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!184 lt!7753) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!184 lt!7753) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!184 lt!7753) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!184 lt!7753) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8278 () tuple4!368)

(assert (=> b!15084 (= lt!7753 e!8278)))

(declare-fun c!1883 () Bool)

(assert (=> b!15084 (= c!1883 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7751 () (_ FloatingPoint 11 53))

(assert (=> b!15084 (= lt!7751 (select (arr!488 q!31) jz!20))))

(declare-fun lt!7754 () array!1112)

(assert (=> b!15084 (= lt!7754 (array!1113 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15085 () Bool)

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!15085 (= e!8280 (and (bvsge (select (arr!487 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001)) (bvslt (bvsub jz!20 i!142) #b00000000000000000000000000000000)))))

(declare-fun b!15086 () Bool)

(declare-fun Unit!1589 () Unit!1587)

(assert (=> b!15086 (= e!8278 (tuple4!369 Unit!1589 lt!7754 jz!20 lt!7751))))

(declare-fun b!15087 () Bool)

(declare-fun res!11739 () Bool)

(assert (=> b!15087 (=> (not res!11739) (not e!8279))))

(declare-fun qInv!0 (array!1114) Bool)

(assert (=> b!15087 (= res!11739 (qInv!0 q!31))))

(declare-fun b!15088 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1114 array!1112 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!368)

(assert (=> b!15088 (= e!8278 (computeModuloWhile!0 jz!20 q!31 lt!7754 jz!20 lt!7751))))

(assert (= (and start!2747 res!11741) b!15087))

(assert (= (and b!15087 res!11739) b!15084))

(assert (= (and b!15084 c!1883) b!15088))

(assert (= (and b!15084 (not c!1883)) b!15086))

(assert (= (and b!15084 res!11742) b!15083))

(assert (= (and b!15083 res!11740) b!15085))

(declare-fun m!24649 () Bool)

(assert (=> b!15084 m!24649))

(declare-fun m!24651 () Bool)

(assert (=> b!15084 m!24651))

(declare-fun m!24653 () Bool)

(assert (=> b!15088 m!24653))

(declare-fun m!24655 () Bool)

(assert (=> b!15087 m!24655))

(declare-fun m!24657 () Bool)

(assert (=> start!2747 m!24657))

(declare-fun m!24659 () Bool)

(assert (=> start!2747 m!24659))

(declare-fun m!24661 () Bool)

(assert (=> b!15083 m!24661))

(declare-fun m!24663 () Bool)

(assert (=> b!15085 m!24663))

(push 1)

(assert (not b!15088))

(assert (not b!15083))

(assert (not start!2747))

(assert (not b!15087))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

