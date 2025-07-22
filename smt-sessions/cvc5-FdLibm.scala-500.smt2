; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2809 () Bool)

(assert start!2809)

(declare-fun b!15376 () Bool)

(declare-fun lt!7932 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!1616 0))(
  ( (Unit!1617) )
))
(declare-datatypes ((array!1152 0))(
  ( (array!1153 (arr!503 (Array (_ BitVec 32) (_ BitVec 32))) (size!503 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!384 0))(
  ( (tuple4!385 (_1!391 Unit!1616) (_2!391 array!1152) (_3!323 (_ BitVec 32)) (_4!192 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8473 () tuple4!384)

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun lt!7933 () array!1152)

(declare-fun Unit!1618 () Unit!1616)

(assert (=> b!15376 (= e!8473 (tuple4!385 Unit!1618 lt!7933 jz!20 lt!7932))))

(declare-fun b!15377 () Bool)

(declare-fun e!8478 () Bool)

(declare-fun e!8475 () Bool)

(assert (=> b!15377 (= e!8478 e!8475)))

(declare-fun res!11961 () Bool)

(assert (=> b!15377 (=> (not res!11961) (not e!8475))))

(declare-fun lt!7931 () tuple4!384)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7929 () (_ FloatingPoint 11 53))

(assert (=> b!15377 (= res!11961 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7929) (fp.lt lt!7929 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!503 (_2!391 lt!7931)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15377 (= lt!7929 (fp.sub roundNearestTiesToEven (_4!192 lt!7931) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!192 lt!7931) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!192 lt!7931) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!192 lt!7931) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!192 lt!7931) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!15377 (= lt!7931 e!8473)))

(declare-fun c!1922 () Bool)

(assert (=> b!15377 (= c!1922 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-datatypes ((array!1154 0))(
  ( (array!1155 (arr!504 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!504 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1154)

(assert (=> b!15377 (= lt!7932 (select (arr!504 q!31) jz!20))))

(assert (=> b!15377 (= lt!7933 (array!1153 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15378 () Bool)

(declare-fun res!11959 () Bool)

(declare-fun e!8477 () Bool)

(assert (=> b!15378 (=> (not res!11959) (not e!8477))))

(declare-fun lt!7930 () (_ BitVec 32))

(declare-fun lt!7934 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun iq!76 () array!1152)

(declare-datatypes ((tuple4!386 0))(
  ( (tuple4!387 (_1!392 Unit!1616) (_2!392 (_ BitVec 32)) (_3!324 array!1152) (_4!193 (_ BitVec 32))) )
))
(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!1154 (_ BitVec 32) array!1152 (_ BitVec 32)) tuple4!386)

(assert (=> b!15378 (= res!11959 (bvsle #b00000000000000000000000000000000 (_2!392 (computeModuloWhile!3 jz!20 q!31 lt!7934 (array!1153 (store (arr!503 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!7930 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!7930) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!7930))) (size!503 iq!76)) (ite (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!7930 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!33)))))))

(declare-fun b!15379 () Bool)

(declare-fun res!11956 () Bool)

(assert (=> b!15379 (=> (not res!11956) (not e!8475))))

(assert (=> b!15379 (= res!11956 (and (bvsge (select (arr!503 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15380 () Bool)

(declare-fun e!8472 () Bool)

(assert (=> b!15380 (= e!8472 e!8477)))

(declare-fun res!11958 () Bool)

(assert (=> b!15380 (=> (not res!11958) (not e!8477))))

(assert (=> b!15380 (= res!11958 (bvslt lt!7934 (bvsub jz!20 #b00000000000000000000000000000001)))))

(assert (=> b!15380 (= lt!7934 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun res!11954 () Bool)

(assert (=> start!2809 (=> (not res!11954) (not e!8478))))

(assert (=> start!2809 (= res!11954 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2809 e!8478))

(assert (=> start!2809 true))

(declare-fun array_inv!451 (array!1154) Bool)

(assert (=> start!2809 (array_inv!451 q!31)))

(declare-fun array_inv!452 (array!1152) Bool)

(assert (=> start!2809 (array_inv!452 iq!76)))

(declare-fun b!15381 () Bool)

(declare-fun res!11960 () Bool)

(assert (=> b!15381 (=> (not res!11960) (not e!8475))))

(declare-fun iqInv!0 (array!1152) Bool)

(assert (=> b!15381 (= res!11960 (iqInv!0 iq!76))))

(declare-fun b!15382 () Bool)

(declare-fun res!11957 () Bool)

(assert (=> b!15382 (=> (not res!11957) (not e!8478))))

(declare-fun qInv!0 (array!1154) Bool)

(assert (=> b!15382 (= res!11957 (qInv!0 q!31))))

(declare-fun b!15383 () Bool)

(assert (=> b!15383 (= e!8477 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!15384 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1154 array!1152 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!384)

(assert (=> b!15384 (= e!8473 (computeModuloWhile!0 jz!20 q!31 lt!7933 jz!20 lt!7932))))

(declare-fun b!15385 () Bool)

(assert (=> b!15385 (= e!8475 e!8472)))

(declare-fun res!11955 () Bool)

(assert (=> b!15385 (=> (not res!11955) (not e!8472))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15385 (= res!11955 (QInt!0 lt!7930))))

(assert (=> b!15385 (= lt!7930 (select (arr!503 iq!76) i!142))))

(assert (= (and start!2809 res!11954) b!15382))

(assert (= (and b!15382 res!11957) b!15377))

(assert (= (and b!15377 c!1922) b!15384))

(assert (= (and b!15377 (not c!1922)) b!15376))

(assert (= (and b!15377 res!11961) b!15381))

(assert (= (and b!15381 res!11960) b!15379))

(assert (= (and b!15379 res!11956) b!15385))

(assert (= (and b!15385 res!11955) b!15380))

(assert (= (and b!15380 res!11958) b!15378))

(assert (= (and b!15378 res!11959) b!15383))

(declare-fun m!24859 () Bool)

(assert (=> b!15382 m!24859))

(declare-fun m!24861 () Bool)

(assert (=> b!15385 m!24861))

(declare-fun m!24863 () Bool)

(assert (=> b!15385 m!24863))

(declare-fun m!24865 () Bool)

(assert (=> b!15384 m!24865))

(declare-fun m!24867 () Bool)

(assert (=> start!2809 m!24867))

(declare-fun m!24869 () Bool)

(assert (=> start!2809 m!24869))

(declare-fun m!24871 () Bool)

(assert (=> b!15381 m!24871))

(declare-fun m!24873 () Bool)

(assert (=> b!15377 m!24873))

(declare-fun m!24875 () Bool)

(assert (=> b!15377 m!24875))

(declare-fun m!24877 () Bool)

(assert (=> b!15379 m!24877))

(declare-fun m!24879 () Bool)

(assert (=> b!15378 m!24879))

(declare-fun m!24881 () Bool)

(assert (=> b!15378 m!24881))

(push 1)

(assert (not b!15382))

(assert (not b!15385))

(assert (not b!15381))

(assert (not start!2809))

(assert (not b!15384))

(assert (not b!15378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

