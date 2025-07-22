; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2903 () Bool)

(assert start!2903)

(declare-datatypes ((Unit!1662 0))(
  ( (Unit!1663) )
))
(declare-datatypes ((array!1206 0))(
  ( (array!1207 (arr!525 (Array (_ BitVec 32) (_ BitVec 32))) (size!525 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!418 0))(
  ( (tuple4!419 (_1!408 Unit!1662) (_2!408 array!1206) (_3!340 (_ BitVec 32)) (_4!209 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8845 () tuple4!418)

(declare-fun b!16109 () Bool)

(declare-fun lt!8313 () array!1206)

(declare-fun lt!8312 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun Unit!1664 () Unit!1662)

(assert (=> b!16109 (= e!8845 (tuple4!419 Unit!1664 lt!8313 jz!20 lt!8312))))

(declare-fun b!16110 () Bool)

(declare-fun res!12551 () Bool)

(declare-fun e!8842 () Bool)

(assert (=> b!16110 (=> (not res!12551) (not e!8842))))

(declare-datatypes ((array!1208 0))(
  ( (array!1209 (arr!526 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!526 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1208)

(declare-fun qInv!0 (array!1208) Bool)

(assert (=> b!16110 (= res!12551 (qInv!0 q!31))))

(declare-fun b!16111 () Bool)

(declare-fun e!8844 () Bool)

(assert (=> b!16111 (= e!8842 e!8844)))

(declare-fun res!12555 () Bool)

(assert (=> b!16111 (=> (not res!12555) (not e!8844))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!8316 () (_ FloatingPoint 11 53))

(declare-fun lt!8314 () tuple4!418)

(assert (=> b!16111 (= res!12555 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8316) (fp.lt lt!8316 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!525 (_2!408 lt!8314)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!16111 (= lt!8316 (fp.sub roundNearestTiesToEven (_4!209 lt!8314) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!209 lt!8314) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!209 lt!8314) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!209 lt!8314) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!209 lt!8314) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!16111 (= lt!8314 e!8845)))

(declare-fun c!1990 () Bool)

(assert (=> b!16111 (= c!1990 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!16111 (= lt!8312 (select (arr!526 q!31) jz!20))))

(assert (=> b!16111 (= lt!8313 (array!1207 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!16112 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1208 array!1206 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!418)

(assert (=> b!16112 (= e!8845 (computeModuloWhile!0 jz!20 q!31 lt!8313 jz!20 lt!8312))))

(declare-fun b!16113 () Bool)

(declare-fun lt!8315 () (_ BitVec 32))

(assert (=> b!16113 (= e!8844 (and (bvsge lt!8315 (bvsub jz!20 #b00000000000000000000000000000001)) (bvslt lt!8315 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!16113 (= lt!8315 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun res!12553 () Bool)

(assert (=> start!2903 (=> (not res!12553) (not e!8842))))

(assert (=> start!2903 (= res!12553 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2903 e!8842))

(assert (=> start!2903 true))

(declare-fun array_inv!473 (array!1208) Bool)

(assert (=> start!2903 (array_inv!473 q!31)))

(declare-fun iq!76 () array!1206)

(declare-fun array_inv!474 (array!1206) Bool)

(assert (=> start!2903 (array_inv!474 iq!76)))

(declare-fun b!16114 () Bool)

(declare-fun res!12554 () Bool)

(assert (=> b!16114 (=> (not res!12554) (not e!8844))))

(declare-fun iqInv!0 (array!1206) Bool)

(assert (=> b!16114 (= res!12554 (iqInv!0 iq!76))))

(declare-fun b!16115 () Bool)

(declare-fun res!12552 () Bool)

(assert (=> b!16115 (=> (not res!12552) (not e!8844))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!16115 (= res!12552 (QInt!0 (select (arr!525 iq!76) i!142)))))

(declare-fun b!16116 () Bool)

(declare-fun res!12556 () Bool)

(assert (=> b!16116 (=> (not res!12556) (not e!8844))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!16116 (= res!12556 (and (bvsge (select (arr!525 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (= (and start!2903 res!12553) b!16110))

(assert (= (and b!16110 res!12551) b!16111))

(assert (= (and b!16111 c!1990) b!16112))

(assert (= (and b!16111 (not c!1990)) b!16109))

(assert (= (and b!16111 res!12555) b!16114))

(assert (= (and b!16114 res!12554) b!16116))

(assert (= (and b!16116 res!12556) b!16115))

(assert (= (and b!16115 res!12552) b!16113))

(declare-fun m!25889 () Bool)

(assert (=> b!16112 m!25889))

(declare-fun m!25891 () Bool)

(assert (=> b!16111 m!25891))

(declare-fun m!25893 () Bool)

(assert (=> b!16111 m!25893))

(declare-fun m!25895 () Bool)

(assert (=> b!16116 m!25895))

(declare-fun m!25897 () Bool)

(assert (=> b!16110 m!25897))

(declare-fun m!25899 () Bool)

(assert (=> start!2903 m!25899))

(declare-fun m!25901 () Bool)

(assert (=> start!2903 m!25901))

(declare-fun m!25903 () Bool)

(assert (=> b!16115 m!25903))

(assert (=> b!16115 m!25903))

(declare-fun m!25905 () Bool)

(assert (=> b!16115 m!25905))

(declare-fun m!25907 () Bool)

(assert (=> b!16114 m!25907))

(push 1)

(assert (not b!16110))

(assert (not b!16114))

(assert (not start!2903))

(assert (not b!16115))

(assert (not b!16112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

