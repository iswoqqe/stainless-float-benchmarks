; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2803 () Bool)

(assert start!2803)

(declare-fun b!15291 () Bool)

(declare-fun res!11898 () Bool)

(declare-fun e!8419 () Bool)

(assert (=> b!15291 (=> (not res!11898) (not e!8419))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(declare-datatypes ((array!1140 0))(
  ( (array!1141 (arr!497 (Array (_ BitVec 32) (_ BitVec 32))) (size!497 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1140)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15291 (= res!11898 (and (bvsge (select (arr!497 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15292 () Bool)

(declare-fun res!11896 () Bool)

(assert (=> b!15292 (=> (not res!11896) (not e!8419))))

(declare-fun iqInv!0 (array!1140) Bool)

(assert (=> b!15292 (= res!11896 (iqInv!0 iq!76))))

(declare-fun b!15293 () Bool)

(declare-fun res!11895 () Bool)

(assert (=> b!15293 (=> (not res!11895) (not e!8419))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15293 (= res!11895 (QInt!0 (select (arr!497 iq!76) i!142)))))

(declare-fun b!15294 () Bool)

(declare-fun e!8417 () Bool)

(assert (=> b!15294 (= e!8417 e!8419)))

(declare-fun res!11894 () Bool)

(assert (=> b!15294 (=> (not res!11894) (not e!8419))))

(declare-datatypes ((Unit!1606 0))(
  ( (Unit!1607) )
))
(declare-datatypes ((tuple4!378 0))(
  ( (tuple4!379 (_1!388 Unit!1606) (_2!388 array!1140) (_3!320 (_ BitVec 32)) (_4!189 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7877 () tuple4!378)

(declare-fun lt!7878 () (_ FloatingPoint 11 53))

(assert (=> b!15294 (= res!11894 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7878) (fp.lt lt!7878 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!497 (_2!388 lt!7877)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15294 (= lt!7878 (fp.sub roundNearestTiesToEven (_4!189 lt!7877) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!189 lt!7877) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!189 lt!7877) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!189 lt!7877) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!189 lt!7877) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8421 () tuple4!378)

(assert (=> b!15294 (= lt!7877 e!8421)))

(declare-fun c!1910 () Bool)

(assert (=> b!15294 (= c!1910 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7879 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1142 0))(
  ( (array!1143 (arr!498 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!498 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1142)

(assert (=> b!15294 (= lt!7879 (select (arr!498 q!31) jz!20))))

(declare-fun lt!7880 () array!1140)

(assert (=> b!15294 (= lt!7880 (array!1141 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15295 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1142 array!1140 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!378)

(assert (=> b!15295 (= e!8421 (computeModuloWhile!0 jz!20 q!31 lt!7880 jz!20 lt!7879))))

(declare-fun b!15296 () Bool)

(assert (=> b!15296 (= e!8419 (and (= (bvand i!142 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!142 #b10000000000000000000000000000000) (bvand (bvadd i!142 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!15297 () Bool)

(declare-fun Unit!1608 () Unit!1606)

(assert (=> b!15297 (= e!8421 (tuple4!379 Unit!1608 lt!7880 jz!20 lt!7879))))

(declare-fun b!15298 () Bool)

(declare-fun res!11897 () Bool)

(assert (=> b!15298 (=> (not res!11897) (not e!8417))))

(declare-fun qInv!0 (array!1142) Bool)

(assert (=> b!15298 (= res!11897 (qInv!0 q!31))))

(declare-fun res!11893 () Bool)

(assert (=> start!2803 (=> (not res!11893) (not e!8417))))

(assert (=> start!2803 (= res!11893 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2803 e!8417))

(assert (=> start!2803 true))

(declare-fun array_inv!445 (array!1142) Bool)

(assert (=> start!2803 (array_inv!445 q!31)))

(declare-fun array_inv!446 (array!1140) Bool)

(assert (=> start!2803 (array_inv!446 iq!76)))

(assert (= (and start!2803 res!11893) b!15298))

(assert (= (and b!15298 res!11897) b!15294))

(assert (= (and b!15294 c!1910) b!15295))

(assert (= (and b!15294 (not c!1910)) b!15297))

(assert (= (and b!15294 res!11894) b!15292))

(assert (= (and b!15292 res!11896) b!15291))

(assert (= (and b!15291 res!11898) b!15293))

(assert (= (and b!15293 res!11895) b!15296))

(declare-fun m!24797 () Bool)

(assert (=> b!15291 m!24797))

(declare-fun m!24799 () Bool)

(assert (=> start!2803 m!24799))

(declare-fun m!24801 () Bool)

(assert (=> start!2803 m!24801))

(declare-fun m!24803 () Bool)

(assert (=> b!15298 m!24803))

(declare-fun m!24805 () Bool)

(assert (=> b!15292 m!24805))

(declare-fun m!24807 () Bool)

(assert (=> b!15294 m!24807))

(declare-fun m!24809 () Bool)

(assert (=> b!15294 m!24809))

(declare-fun m!24811 () Bool)

(assert (=> b!15293 m!24811))

(assert (=> b!15293 m!24811))

(declare-fun m!24813 () Bool)

(assert (=> b!15293 m!24813))

(declare-fun m!24815 () Bool)

(assert (=> b!15295 m!24815))

(push 1)

(assert (not b!15298))

(assert (not b!15295))

(assert (not start!2803))

(assert (not b!15292))

(assert (not b!15293))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

