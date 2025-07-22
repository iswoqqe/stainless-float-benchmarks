; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2743 () Bool)

(assert start!2743)

(declare-fun e!8250 () Bool)

(declare-fun b!15047 () Bool)

(declare-fun carry!33 () (_ BitVec 32))

(declare-datatypes ((array!1104 0))(
  ( (array!1105 (arr!483 (Array (_ BitVec 32) (_ BitVec 32))) (size!483 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1104)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15047 (= e!8250 (and (bvsge (select (arr!483 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!15048 () Bool)

(declare-fun e!8248 () Bool)

(assert (=> b!15048 (= e!8248 e!8250)))

(declare-fun res!11716 () Bool)

(assert (=> b!15048 (=> (not res!11716) (not e!8250))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7729 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!1581 0))(
  ( (Unit!1582) )
))
(declare-datatypes ((tuple4!364 0))(
  ( (tuple4!365 (_1!381 Unit!1581) (_2!381 array!1104) (_3!313 (_ BitVec 32)) (_4!182 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7730 () tuple4!364)

(assert (=> b!15048 (= res!11716 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7729) (fp.lt lt!7729 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!483 (_2!381 lt!7730)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15048 (= lt!7729 (fp.sub roundNearestTiesToEven (_4!182 lt!7730) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!182 lt!7730) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!182 lt!7730) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!182 lt!7730) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!182 lt!7730) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8249 () tuple4!364)

(assert (=> b!15048 (= lt!7730 e!8249)))

(declare-fun c!1877 () Bool)

(assert (=> b!15048 (= c!1877 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7727 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1106 0))(
  ( (array!1107 (arr!484 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!484 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1106)

(assert (=> b!15048 (= lt!7727 (select (arr!484 q!31) jz!20))))

(declare-fun lt!7728 () array!1104)

(assert (=> b!15048 (= lt!7728 (array!1105 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15049 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1106 array!1104 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!364)

(assert (=> b!15049 (= e!8249 (computeModuloWhile!0 jz!20 q!31 lt!7728 jz!20 lt!7727))))

(declare-fun b!15050 () Bool)

(declare-fun Unit!1583 () Unit!1581)

(assert (=> b!15050 (= e!8249 (tuple4!365 Unit!1583 lt!7728 jz!20 lt!7727))))

(declare-fun res!11718 () Bool)

(assert (=> start!2743 (=> (not res!11718) (not e!8248))))

(assert (=> start!2743 (= res!11718 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2743 e!8248))

(assert (=> start!2743 true))

(declare-fun array_inv!431 (array!1106) Bool)

(assert (=> start!2743 (array_inv!431 q!31)))

(declare-fun array_inv!432 (array!1104) Bool)

(assert (=> start!2743 (array_inv!432 iq!76)))

(declare-fun b!15051 () Bool)

(declare-fun res!11717 () Bool)

(assert (=> b!15051 (=> (not res!11717) (not e!8250))))

(declare-fun iqInv!0 (array!1104) Bool)

(assert (=> b!15051 (= res!11717 (iqInv!0 iq!76))))

(declare-fun b!15052 () Bool)

(declare-fun res!11715 () Bool)

(assert (=> b!15052 (=> (not res!11715) (not e!8248))))

(declare-fun qInv!0 (array!1106) Bool)

(assert (=> b!15052 (= res!11715 (qInv!0 q!31))))

(assert (= (and start!2743 res!11718) b!15052))

(assert (= (and b!15052 res!11715) b!15048))

(assert (= (and b!15048 c!1877) b!15049))

(assert (= (and b!15048 (not c!1877)) b!15050))

(assert (= (and b!15048 res!11716) b!15051))

(assert (= (and b!15051 res!11717) b!15047))

(declare-fun m!24617 () Bool)

(assert (=> b!15048 m!24617))

(declare-fun m!24619 () Bool)

(assert (=> b!15048 m!24619))

(declare-fun m!24621 () Bool)

(assert (=> start!2743 m!24621))

(declare-fun m!24623 () Bool)

(assert (=> start!2743 m!24623))

(declare-fun m!24625 () Bool)

(assert (=> b!15047 m!24625))

(declare-fun m!24627 () Bool)

(assert (=> b!15051 m!24627))

(declare-fun m!24629 () Bool)

(assert (=> b!15052 m!24629))

(declare-fun m!24631 () Bool)

(assert (=> b!15049 m!24631))

(push 1)

(assert (not b!15049))

(assert (not b!15052))

(assert (not start!2743))

(assert (not b!15051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

