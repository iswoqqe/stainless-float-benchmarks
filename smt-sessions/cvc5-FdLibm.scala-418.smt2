; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2443 () Bool)

(assert start!2443)

(declare-datatypes ((array!876 0))(
  ( (array!877 (arr!379 (Array (_ BitVec 32) (_ BitVec 32))) (size!379 (_ BitVec 32))) )
))
(declare-fun lt!6286 () array!876)

(declare-fun lt!6282 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!1356 0))(
  ( (Unit!1357) )
))
(declare-datatypes ((tuple4!240 0))(
  ( (tuple4!241 (_1!293 Unit!1356) (_2!293 array!876) (_3!225 (_ BitVec 32)) (_4!120 (_ FloatingPoint 11 53))) )
))
(declare-fun e!6939 () tuple4!240)

(declare-fun jz!59 () (_ BitVec 32))

(declare-fun b!12684 () Bool)

(declare-fun Unit!1358 () Unit!1356)

(assert (=> b!12684 (= e!6939 (tuple4!241 Unit!1358 lt!6286 jz!59 lt!6282))))

(declare-fun b!12685 () Bool)

(declare-fun e!6940 () Bool)

(assert (=> b!12685 (= e!6940 (and (not (= (bvand jz!59 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!59 #b10000000000000000000000000000000) (bvand (bvsub jz!59 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!12686 () Bool)

(declare-fun res!10109 () Bool)

(declare-fun e!6937 () Bool)

(assert (=> b!12686 (=> (not res!10109) (not e!6937))))

(declare-datatypes ((array!878 0))(
  ( (array!879 (arr!380 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!380 (_ BitVec 32))) )
))
(declare-fun q!93 () array!878)

(declare-fun qInv!0 (array!878) Bool)

(assert (=> b!12686 (= res!10109 (qInv!0 q!93))))

(declare-fun b!12687 () Bool)

(declare-datatypes ((tuple3!210 0))(
  ( (tuple3!211 (_1!294 Unit!1356) (_2!294 array!876) (_3!226 (_ BitVec 32))) )
))
(declare-fun e!6935 () tuple3!210)

(declare-fun lt!6281 () tuple4!240)

(declare-fun lt!6283 () (_ BitVec 32))

(declare-fun Unit!1359 () Unit!1356)

(assert (=> b!12687 (= e!6935 (tuple3!211 Unit!1359 (_2!293 lt!6281) lt!6283))))

(declare-fun b!12689 () Bool)

(declare-fun e!6942 () Bool)

(assert (=> b!12689 (= e!6937 e!6942)))

(declare-fun res!10110 () Bool)

(assert (=> b!12689 (=> (not res!10110) (not e!6942))))

(declare-fun lt!6285 () (_ FloatingPoint 11 53))

(assert (=> b!12689 (= res!10110 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!6285) (fp.lt lt!6285 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!12689 (= lt!6285 (fp.sub roundNearestTiesToEven (_4!120 lt!6281) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!120 lt!6281) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!120 lt!6281) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!120 lt!6281) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!120 lt!6281) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!12689 (= lt!6281 e!6939)))

(declare-fun c!1500 () Bool)

(assert (=> b!12689 (= c!1500 (bvsgt jz!59 #b00000000000000000000000000000000))))

(assert (=> b!12689 (= lt!6282 (select (arr!380 q!93) jz!59))))

(assert (=> b!12689 (= lt!6286 (array!877 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-datatypes ((tuple4!242 0))(
  ( (tuple4!243 (_1!295 Unit!1356) (_2!295 (_ BitVec 32)) (_3!227 array!876) (_4!121 (_ BitVec 32))) )
))
(declare-fun lt!6287 () tuple4!242)

(declare-fun lt!6278 () (_ BitVec 32))

(declare-fun b!12690 () Bool)

(declare-fun Unit!1360 () Unit!1356)

(assert (=> b!12690 (= e!6935 (tuple3!211 Unit!1360 (array!877 (store (arr!379 (_3!227 lt!6287)) (bvsub jz!59 #b00000000000000000000000000000001) (ite (= (_4!121 lt!6287) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!6278) (bvsub #b00000000111111111111111111111111 lt!6278))) (size!379 (_3!227 lt!6287))) (_4!121 lt!6287)))))

(declare-fun lt!6284 () (_ BitVec 32))

(assert (=> b!12690 (= lt!6284 #b00000000000000000000000000000000)))

(declare-fun c!1502 () Bool)

(assert (=> b!12690 (= c!1502 (bvslt lt!6284 (bvsub jz!59 #b00000000000000000000000000000001)))))

(declare-fun e!6936 () tuple4!242)

(assert (=> b!12690 (= lt!6287 e!6936)))

(assert (=> b!12690 (= lt!6278 (select (arr!379 (_3!227 lt!6287)) (bvsub jz!59 #b00000000000000000000000000000001)))))

(declare-fun b!12691 () Bool)

(declare-fun Unit!1361 () Unit!1356)

(assert (=> b!12691 (= e!6936 (tuple4!243 Unit!1361 lt!6284 (_2!293 lt!6281) lt!6283))))

(declare-fun b!12692 () Bool)

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!878 (_ BitVec 32) array!876 (_ BitVec 32)) tuple4!242)

(assert (=> b!12692 (= e!6936 (computeModuloWhile!3 jz!59 q!93 lt!6284 (_2!293 lt!6281) lt!6283))))

(declare-fun b!12693 () Bool)

(declare-fun res!10108 () Bool)

(assert (=> b!12693 (=> (not res!10108) (not e!6940))))

(declare-fun iq!194 () array!876)

(declare-fun iqInv!0 (array!876) Bool)

(assert (=> b!12693 (= res!10108 (iqInv!0 iq!194))))

(declare-fun b!12694 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!878 array!876 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!240)

(assert (=> b!12694 (= e!6939 (computeModuloWhile!0 jz!59 q!93 lt!6286 jz!59 lt!6282))))

(declare-fun res!10106 () Bool)

(assert (=> start!2443 (=> (not res!10106) (not e!6937))))

(assert (=> start!2443 (= res!10106 (and (bvsle #b00000000000000000000000000000010 jz!59) (bvslt jz!59 #b00000000000000000000000000010011)))))

(assert (=> start!2443 e!6937))

(assert (=> start!2443 true))

(declare-fun array_inv!328 (array!878) Bool)

(assert (=> start!2443 (array_inv!328 q!93)))

(declare-fun array_inv!329 (array!876) Bool)

(assert (=> start!2443 (array_inv!329 iq!194)))

(declare-fun b!12688 () Bool)

(assert (=> b!12688 (= e!6942 e!6940)))

(declare-fun res!10107 () Bool)

(assert (=> b!12688 (=> (not res!10107) (not e!6940))))

(declare-fun lt!6280 () Bool)

(declare-fun i!271 () (_ BitVec 32))

(declare-fun lt!6279 () tuple3!210)

(assert (=> b!12688 (= res!10107 (and (bvsle #b00000000000000000000000000000000 (select (arr!379 (_2!294 lt!6279)) (bvsub jz!59 #b00000000000000000000000000000001))) (bvsle (select (arr!379 (_2!294 lt!6279)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (not lt!6280) (not (= (_3!226 lt!6279) #b00000000000000000000000000000000)) (not (= (select (arr!379 (_2!294 lt!6279)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))) (bvsle (select (arr!379 (_2!294 lt!6279)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (bvsle #b00000000000000000000000000000000 i!271) (bvsle i!271 jz!59)))))

(assert (=> b!12688 (= lt!6279 e!6935)))

(declare-fun c!1501 () Bool)

(assert (=> b!12688 (= c!1501 lt!6280)))

(assert (=> b!12688 (= lt!6283 #b00000000000000000000000000000000)))

(assert (=> b!12688 (= lt!6280 (bvsge (select (arr!379 (_2!293 lt!6281)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (= (and start!2443 res!10106) b!12686))

(assert (= (and b!12686 res!10109) b!12689))

(assert (= (and b!12689 c!1500) b!12694))

(assert (= (and b!12689 (not c!1500)) b!12684))

(assert (= (and b!12689 res!10110) b!12688))

(assert (= (and b!12688 c!1501) b!12690))

(assert (= (and b!12688 (not c!1501)) b!12687))

(assert (= (and b!12690 c!1502) b!12692))

(assert (= (and b!12690 (not c!1502)) b!12691))

(assert (= (and b!12688 res!10107) b!12693))

(assert (= (and b!12693 res!10108) b!12685))

(declare-fun m!20779 () Bool)

(assert (=> b!12693 m!20779))

(declare-fun m!20781 () Bool)

(assert (=> b!12689 m!20781))

(declare-fun m!20783 () Bool)

(assert (=> b!12686 m!20783))

(declare-fun m!20785 () Bool)

(assert (=> start!2443 m!20785))

(declare-fun m!20787 () Bool)

(assert (=> start!2443 m!20787))

(declare-fun m!20789 () Bool)

(assert (=> b!12692 m!20789))

(declare-fun m!20791 () Bool)

(assert (=> b!12694 m!20791))

(declare-fun m!20793 () Bool)

(assert (=> b!12688 m!20793))

(declare-fun m!20795 () Bool)

(assert (=> b!12688 m!20795))

(declare-fun m!20797 () Bool)

(assert (=> b!12690 m!20797))

(declare-fun m!20799 () Bool)

(assert (=> b!12690 m!20799))

(push 1)

(assert (not start!2443))

(assert (not b!12686))

(assert (not b!12692))

(assert (not b!12693))

(assert (not b!12694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

