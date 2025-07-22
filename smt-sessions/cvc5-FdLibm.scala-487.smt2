; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2727 () Bool)

(assert start!2727)

(declare-fun res!11664 () Bool)

(declare-fun e!8190 () Bool)

(assert (=> start!2727 (=> (not res!11664) (not e!8190))))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> start!2727 (= res!11664 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2727 e!8190))

(assert (=> start!2727 true))

(declare-datatypes ((array!1090 0))(
  ( (array!1091 (arr!477 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!477 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1090)

(declare-fun array_inv!426 (array!1090) Bool)

(assert (=> start!2727 (array_inv!426 q!31)))

(declare-datatypes ((Unit!1571 0))(
  ( (Unit!1572) )
))
(declare-datatypes ((array!1092 0))(
  ( (array!1093 (arr!478 (Array (_ BitVec 32) (_ BitVec 32))) (size!478 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!358 0))(
  ( (tuple4!359 (_1!378 Unit!1571) (_2!378 array!1092) (_3!310 (_ BitVec 32)) (_4!179 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8189 () tuple4!358)

(declare-fun b!14974 () Bool)

(declare-fun lt!7676 () (_ FloatingPoint 11 53))

(declare-fun lt!7673 () array!1092)

(declare-fun Unit!1573 () Unit!1571)

(assert (=> b!14974 (= e!8189 (tuple4!359 Unit!1573 lt!7673 jz!20 lt!7676))))

(declare-fun b!14973 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1090 array!1092 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!358)

(assert (=> b!14973 (= e!8189 (computeModuloWhile!0 jz!20 q!31 lt!7673 jz!20 lt!7676))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun b!14972 () Bool)

(declare-fun lt!7675 () tuple4!358)

(declare-fun lt!7674 () (_ FloatingPoint 11 53))

(assert (=> b!14972 (= e!8190 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7674) (fp.lt lt!7674 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!478 (_2!378 lt!7675)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!14972 (= lt!7674 (fp.sub roundNearestTiesToEven (_4!179 lt!7675) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!179 lt!7675) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!179 lt!7675) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!179 lt!7675) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!179 lt!7675) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14972 (= lt!7675 e!8189)))

(declare-fun c!1865 () Bool)

(assert (=> b!14972 (= c!1865 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14972 (= lt!7676 (select (arr!477 q!31) jz!20))))

(assert (=> b!14972 (= lt!7673 (array!1093 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14971 () Bool)

(declare-fun res!11663 () Bool)

(assert (=> b!14971 (=> (not res!11663) (not e!8190))))

(declare-fun qInv!0 (array!1090) Bool)

(assert (=> b!14971 (= res!11663 (qInv!0 q!31))))

(assert (= (and start!2727 res!11664) b!14971))

(assert (= (and b!14971 res!11663) b!14972))

(assert (= (and b!14972 c!1865) b!14973))

(assert (= (and b!14972 (not c!1865)) b!14974))

(declare-fun m!24565 () Bool)

(assert (=> start!2727 m!24565))

(declare-fun m!24567 () Bool)

(assert (=> b!14973 m!24567))

(declare-fun m!24569 () Bool)

(assert (=> b!14972 m!24569))

(declare-fun m!24571 () Bool)

(assert (=> b!14972 m!24571))

(declare-fun m!24573 () Bool)

(assert (=> b!14971 m!24573))

(push 1)

(assert (not b!14973))

(assert (not b!14971))

(assert (not start!2727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

