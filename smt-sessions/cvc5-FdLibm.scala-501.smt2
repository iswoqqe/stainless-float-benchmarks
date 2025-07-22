; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2811 () Bool)

(assert start!2811)

(declare-fun b!15408 () Bool)

(declare-fun res!11981 () Bool)

(declare-fun e!8496 () Bool)

(assert (=> b!15408 (=> (not res!11981) (not e!8496))))

(declare-datatypes ((array!1156 0))(
  ( (array!1157 (arr!505 (Array (_ BitVec 32) (_ BitVec 32))) (size!505 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1156)

(declare-fun iqInv!0 (array!1156) Bool)

(assert (=> b!15408 (= res!11981 (iqInv!0 iq!76))))

(declare-fun b!15409 () Bool)

(declare-fun e!8500 () Bool)

(declare-fun e!8498 () Bool)

(assert (=> b!15409 (= e!8500 e!8498)))

(declare-fun res!11987 () Bool)

(assert (=> b!15409 (=> (not res!11987) (not e!8498))))

(declare-fun lt!7953 () (_ BitVec 32))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15409 (= res!11987 (bvslt lt!7953 (bvsub jz!20 #b00000000000000000000000000000001)))))

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!15409 (= lt!7953 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!15410 () Bool)

(declare-fun e!8495 () Bool)

(assert (=> b!15410 (= e!8495 e!8496)))

(declare-fun res!11980 () Bool)

(assert (=> b!15410 (=> (not res!11980) (not e!8496))))

(declare-fun lt!7952 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!1619 0))(
  ( (Unit!1620) )
))
(declare-datatypes ((tuple4!388 0))(
  ( (tuple4!389 (_1!393 Unit!1619) (_2!393 array!1156) (_3!325 (_ BitVec 32)) (_4!194 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7949 () tuple4!388)

(assert (=> b!15410 (= res!11980 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7952) (fp.lt lt!7952 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!505 (_2!393 lt!7949)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15410 (= lt!7952 (fp.sub roundNearestTiesToEven (_4!194 lt!7949) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!194 lt!7949) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!194 lt!7949) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!194 lt!7949) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!194 lt!7949) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8501 () tuple4!388)

(assert (=> b!15410 (= lt!7949 e!8501)))

(declare-fun c!1925 () Bool)

(assert (=> b!15410 (= c!1925 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7955 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1158 0))(
  ( (array!1159 (arr!506 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!506 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1158)

(assert (=> b!15410 (= lt!7955 (select (arr!506 q!31) jz!20))))

(declare-fun lt!7950 () array!1156)

(assert (=> b!15410 (= lt!7950 (array!1157 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15411 () Bool)

(declare-fun res!11985 () Bool)

(assert (=> b!15411 (=> (not res!11985) (not e!8496))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!15411 (= res!11985 (and (bvsge (select (arr!505 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15412 () Bool)

(assert (=> b!15412 (= e!8496 e!8500)))

(declare-fun res!11988 () Bool)

(assert (=> b!15412 (=> (not res!11988) (not e!8500))))

(declare-fun lt!7951 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15412 (= res!11988 (QInt!0 lt!7951))))

(assert (=> b!15412 (= lt!7951 (select (arr!505 iq!76) i!142))))

(declare-fun b!15413 () Bool)

(declare-fun e!8502 () Bool)

(assert (=> b!15413 (= e!8502 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!11982 () Bool)

(assert (=> start!2811 (=> (not res!11982) (not e!8495))))

(assert (=> start!2811 (= res!11982 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2811 e!8495))

(assert (=> start!2811 true))

(declare-fun array_inv!453 (array!1158) Bool)

(assert (=> start!2811 (array_inv!453 q!31)))

(declare-fun array_inv!454 (array!1156) Bool)

(assert (=> start!2811 (array_inv!454 iq!76)))

(declare-fun b!15414 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1158 array!1156 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!388)

(assert (=> b!15414 (= e!8501 (computeModuloWhile!0 jz!20 q!31 lt!7950 jz!20 lt!7955))))

(declare-fun b!15415 () Bool)

(declare-fun Unit!1621 () Unit!1619)

(assert (=> b!15415 (= e!8501 (tuple4!389 Unit!1621 lt!7950 jz!20 lt!7955))))

(declare-fun b!15416 () Bool)

(assert (=> b!15416 (= e!8498 e!8502)))

(declare-fun res!11984 () Bool)

(assert (=> b!15416 (=> (not res!11984) (not e!8502))))

(declare-datatypes ((tuple4!390 0))(
  ( (tuple4!391 (_1!394 Unit!1619) (_2!394 (_ BitVec 32)) (_3!326 array!1156) (_4!195 (_ BitVec 32))) )
))
(declare-fun lt!7954 () tuple4!390)

(assert (=> b!15416 (= res!11984 (and (bvsle #b00000000000000000000000000000000 (_2!394 lt!7954)) (bvsle (_2!394 lt!7954) (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!1158 (_ BitVec 32) array!1156 (_ BitVec 32)) tuple4!390)

(assert (=> b!15416 (= lt!7954 (computeModuloWhile!3 jz!20 q!31 lt!7953 (array!1157 (store (arr!505 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!7951 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!7951) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!7951))) (size!505 iq!76)) (ite (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!7951 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!33)))))

(declare-fun b!15417 () Bool)

(declare-fun res!11983 () Bool)

(assert (=> b!15417 (=> (not res!11983) (not e!8502))))

(assert (=> b!15417 (= res!11983 (iqInv!0 (_3!326 lt!7954)))))

(declare-fun b!15418 () Bool)

(declare-fun res!11986 () Bool)

(assert (=> b!15418 (=> (not res!11986) (not e!8495))))

(declare-fun qInv!0 (array!1158) Bool)

(assert (=> b!15418 (= res!11986 (qInv!0 q!31))))

(assert (= (and start!2811 res!11982) b!15418))

(assert (= (and b!15418 res!11986) b!15410))

(assert (= (and b!15410 c!1925) b!15414))

(assert (= (and b!15410 (not c!1925)) b!15415))

(assert (= (and b!15410 res!11980) b!15408))

(assert (= (and b!15408 res!11981) b!15411))

(assert (= (and b!15411 res!11985) b!15412))

(assert (= (and b!15412 res!11988) b!15409))

(assert (= (and b!15409 res!11987) b!15416))

(assert (= (and b!15416 res!11984) b!15417))

(assert (= (and b!15417 res!11983) b!15413))

(declare-fun m!24883 () Bool)

(assert (=> b!15417 m!24883))

(declare-fun m!24885 () Bool)

(assert (=> b!15416 m!24885))

(declare-fun m!24887 () Bool)

(assert (=> b!15416 m!24887))

(declare-fun m!24889 () Bool)

(assert (=> b!15418 m!24889))

(declare-fun m!24891 () Bool)

(assert (=> b!15414 m!24891))

(declare-fun m!24893 () Bool)

(assert (=> b!15408 m!24893))

(declare-fun m!24895 () Bool)

(assert (=> b!15410 m!24895))

(declare-fun m!24897 () Bool)

(assert (=> b!15410 m!24897))

(declare-fun m!24899 () Bool)

(assert (=> b!15411 m!24899))

(declare-fun m!24901 () Bool)

(assert (=> b!15412 m!24901))

(declare-fun m!24903 () Bool)

(assert (=> b!15412 m!24903))

(declare-fun m!24905 () Bool)

(assert (=> start!2811 m!24905))

(declare-fun m!24907 () Bool)

(assert (=> start!2811 m!24907))

(push 1)

(assert (not b!15408))

(assert (not b!15417))

(assert (not b!15416))

(assert (not b!15412))

(assert (not b!15414))

(assert (not start!2811))

(assert (not b!15418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

