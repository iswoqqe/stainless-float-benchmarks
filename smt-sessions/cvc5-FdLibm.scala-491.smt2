; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2745 () Bool)

(assert start!2745)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun b!15065 () Bool)

(declare-fun e!8265 () Bool)

(declare-datatypes ((array!1108 0))(
  ( (array!1109 (arr!485 (Array (_ BitVec 32) (_ BitVec 32))) (size!485 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1108)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15065 (= e!8265 (and (bvsge (select (arr!485 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand i!142 #b10000000000000000000000000000000))) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 i!142) #b10000000000000000000000000000000)))))))

(declare-fun lt!7740 () (_ FloatingPoint 11 53))

(declare-fun b!15066 () Bool)

(declare-datatypes ((Unit!1584 0))(
  ( (Unit!1585) )
))
(declare-datatypes ((tuple4!366 0))(
  ( (tuple4!367 (_1!382 Unit!1584) (_2!382 array!1108) (_3!314 (_ BitVec 32)) (_4!183 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8261 () tuple4!366)

(declare-datatypes ((array!1110 0))(
  ( (array!1111 (arr!486 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!486 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1110)

(declare-fun lt!7742 () array!1108)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1110 array!1108 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!366)

(assert (=> b!15066 (= e!8261 (computeModuloWhile!0 jz!20 q!31 lt!7742 jz!20 lt!7740))))

(declare-fun b!15067 () Bool)

(declare-fun e!8262 () Bool)

(assert (=> b!15067 (= e!8262 e!8265)))

(declare-fun res!11727 () Bool)

(assert (=> b!15067 (=> (not res!11727) (not e!8265))))

(declare-fun lt!7739 () tuple4!366)

(declare-fun lt!7741 () (_ FloatingPoint 11 53))

(assert (=> b!15067 (= res!11727 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7741) (fp.lt lt!7741 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!485 (_2!382 lt!7739)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15067 (= lt!7741 (fp.sub roundNearestTiesToEven (_4!183 lt!7739) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!183 lt!7739) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!183 lt!7739) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!183 lt!7739) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!183 lt!7739) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!15067 (= lt!7739 e!8261)))

(declare-fun c!1880 () Bool)

(assert (=> b!15067 (= c!1880 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!15067 (= lt!7740 (select (arr!486 q!31) jz!20))))

(assert (=> b!15067 (= lt!7742 (array!1109 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!11728 () Bool)

(assert (=> start!2745 (=> (not res!11728) (not e!8262))))

(assert (=> start!2745 (= res!11728 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2745 e!8262))

(assert (=> start!2745 true))

(declare-fun array_inv!433 (array!1110) Bool)

(assert (=> start!2745 (array_inv!433 q!31)))

(declare-fun array_inv!434 (array!1108) Bool)

(assert (=> start!2745 (array_inv!434 iq!76)))

(declare-fun b!15068 () Bool)

(declare-fun Unit!1586 () Unit!1584)

(assert (=> b!15068 (= e!8261 (tuple4!367 Unit!1586 lt!7742 jz!20 lt!7740))))

(declare-fun b!15069 () Bool)

(declare-fun res!11730 () Bool)

(assert (=> b!15069 (=> (not res!11730) (not e!8265))))

(declare-fun iqInv!0 (array!1108) Bool)

(assert (=> b!15069 (= res!11730 (iqInv!0 iq!76))))

(declare-fun b!15070 () Bool)

(declare-fun res!11729 () Bool)

(assert (=> b!15070 (=> (not res!11729) (not e!8262))))

(declare-fun qInv!0 (array!1110) Bool)

(assert (=> b!15070 (= res!11729 (qInv!0 q!31))))

(assert (= (and start!2745 res!11728) b!15070))

(assert (= (and b!15070 res!11729) b!15067))

(assert (= (and b!15067 c!1880) b!15066))

(assert (= (and b!15067 (not c!1880)) b!15068))

(assert (= (and b!15067 res!11727) b!15069))

(assert (= (and b!15069 res!11730) b!15065))

(declare-fun m!24633 () Bool)

(assert (=> b!15070 m!24633))

(declare-fun m!24635 () Bool)

(assert (=> b!15067 m!24635))

(declare-fun m!24637 () Bool)

(assert (=> b!15067 m!24637))

(declare-fun m!24639 () Bool)

(assert (=> b!15069 m!24639))

(declare-fun m!24641 () Bool)

(assert (=> b!15066 m!24641))

(declare-fun m!24643 () Bool)

(assert (=> start!2745 m!24643))

(declare-fun m!24645 () Bool)

(assert (=> start!2745 m!24645))

(declare-fun m!24647 () Bool)

(assert (=> b!15065 m!24647))

(push 1)

(assert (not b!15069))

(assert (not start!2745))

(assert (not b!15066))

(assert (not b!15070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

