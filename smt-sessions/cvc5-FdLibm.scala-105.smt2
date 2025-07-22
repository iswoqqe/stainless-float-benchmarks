; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!873 () Bool)

(assert start!873)

(declare-fun b!4110 () Bool)

(declare-fun res!3217 () Bool)

(declare-fun e!1900 () Bool)

(assert (=> b!4110 (=> (not res!3217) (not e!1900))))

(declare-datatypes ((array!224 0))(
  ( (array!225 (arr!99 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!99 (_ BitVec 32))) )
))
(declare-fun q!85 () array!224)

(declare-fun qInv!0 (array!224) Bool)

(assert (=> b!4110 (= res!3217 (qInv!0 q!85))))

(declare-fun b!4111 () Bool)

(declare-fun e!1899 () Bool)

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> b!4111 (= e!1899 (and (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!3220 () Bool)

(assert (=> start!873 (=> (not res!3220) (not e!1900))))

(assert (=> start!873 (= res!3220 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!873 e!1900))

(assert (=> start!873 true))

(declare-fun array_inv!49 (array!224) Bool)

(assert (=> start!873 (array_inv!49 q!85)))

(declare-datatypes ((array!226 0))(
  ( (array!227 (arr!100 (Array (_ BitVec 32) (_ BitVec 32))) (size!100 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!226)

(declare-fun array_inv!50 (array!226) Bool)

(assert (=> start!873 (array_inv!50 iq!165)))

(declare-fun b!4112 () Bool)

(declare-fun lt!2549 () (_ FloatingPoint 11 53))

(declare-fun lt!2548 () array!226)

(declare-datatypes ((Unit!309 0))(
  ( (Unit!310) )
))
(declare-datatypes ((tuple4!138 0))(
  ( (tuple4!139 (_1!124 Unit!309) (_2!124 array!226) (_3!112 (_ BitVec 32)) (_4!69 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1903 () tuple4!138)

(declare-fun Unit!311 () Unit!309)

(assert (=> b!4112 (= e!1903 (tuple4!139 Unit!311 lt!2548 jz!53 lt!2549))))

(declare-fun b!4113 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!224 array!226 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!138)

(assert (=> b!4113 (= e!1903 (computeModuloWhile!0 jz!53 q!85 lt!2548 jz!53 lt!2549))))

(declare-fun b!4114 () Bool)

(assert (=> b!4114 (= e!1900 e!1899)))

(declare-fun res!3218 () Bool)

(assert (=> b!4114 (=> (not res!3218) (not e!1899))))

(declare-fun lt!2551 () (_ FloatingPoint 11 53))

(declare-fun lt!2550 () tuple4!138)

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!4114 (= res!3218 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2551) (fp.lt lt!2551 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!100 (_2!124 lt!2550)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!4114 (= lt!2551 (fp.sub roundNearestTiesToEven (_4!69 lt!2550) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!69 lt!2550) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!69 lt!2550) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!69 lt!2550) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!69 lt!2550) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!4114 (= lt!2550 e!1903)))

(declare-fun c!653 () Bool)

(assert (=> b!4114 (= c!653 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!4114 (= lt!2549 (select (arr!99 q!85) jz!53))))

(assert (=> b!4114 (= lt!2548 (array!227 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!4115 () Bool)

(declare-fun res!3219 () Bool)

(assert (=> b!4115 (=> (not res!3219) (not e!1899))))

(declare-fun iqInv!0 (array!226) Bool)

(assert (=> b!4115 (= res!3219 (iqInv!0 iq!165))))

(assert (= (and start!873 res!3220) b!4110))

(assert (= (and b!4110 res!3217) b!4114))

(assert (= (and b!4114 c!653) b!4113))

(assert (= (and b!4114 (not c!653)) b!4112))

(assert (= (and b!4114 res!3218) b!4115))

(assert (= (and b!4115 res!3219) b!4111))

(declare-fun m!6933 () Bool)

(assert (=> b!4113 m!6933))

(declare-fun m!6935 () Bool)

(assert (=> b!4110 m!6935))

(declare-fun m!6937 () Bool)

(assert (=> b!4115 m!6937))

(declare-fun m!6939 () Bool)

(assert (=> b!4114 m!6939))

(declare-fun m!6941 () Bool)

(assert (=> b!4114 m!6941))

(declare-fun m!6943 () Bool)

(assert (=> start!873 m!6943))

(declare-fun m!6945 () Bool)

(assert (=> start!873 m!6945))

(push 1)

(assert (not b!4110))

(assert (not b!4115))

(assert (not start!873))

(assert (not b!4113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

