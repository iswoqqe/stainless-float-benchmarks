; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!705 () Bool)

(assert start!705)

(declare-datatypes ((Unit!148 0))(
  ( (Unit!149) )
))
(declare-datatypes ((array!127 0))(
  ( (array!128 (arr!57 (Array (_ BitVec 32) (_ BitVec 32))) (size!57 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!62 0))(
  ( (tuple4!63 (_1!75 Unit!148) (_2!75 array!127) (_3!63 (_ BitVec 32)) (_4!31 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1102 () tuple4!62)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!129 0))(
  ( (array!130 (arr!58 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!58 (_ BitVec 32))) )
))
(declare-fun q!70 () array!129)

(declare-fun lt!1454 () array!127)

(declare-fun lt!1455 () (_ FloatingPoint 11 53))

(declare-fun b!2199 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!129 array!127 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!62)

(assert (=> b!2199 (= e!1102 (computeModuloWhile!0 jz!42 q!70 lt!1454 jz!42 lt!1455))))

(declare-fun b!2200 () Bool)

(declare-fun Unit!150 () Unit!148)

(assert (=> b!2200 (= e!1102 (tuple4!63 Unit!150 lt!1454 jz!42 lt!1455))))

(declare-fun b!2197 () Bool)

(declare-fun res!1857 () Bool)

(declare-fun e!1103 () Bool)

(assert (=> b!2197 (=> (not res!1857) (not e!1103))))

(declare-fun qInv!0 (array!129) Bool)

(assert (=> b!2197 (= res!1857 (qInv!0 q!70))))

(declare-fun res!1856 () Bool)

(assert (=> start!705 (=> (not res!1856) (not e!1103))))

(assert (=> start!705 (= res!1856 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!705 e!1103))

(assert (=> start!705 true))

(declare-fun array_inv!25 (array!129) Bool)

(assert (=> start!705 (array_inv!25 q!70)))

(declare-fun lt!1456 () tuple4!62)

(declare-fun b!2198 () Bool)

(declare-fun lt!1457 () (_ FloatingPoint 11 53))

(assert (=> b!2198 (= e!1103 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1457) (fp.lt lt!1457 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!57 (_2!75 lt!1456)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!2198 (= lt!1457 (fp.sub roundNearestTiesToEven (_4!31 lt!1456) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!31 lt!1456) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!31 lt!1456) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!31 lt!1456) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!31 lt!1456) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2198 (= lt!1456 e!1102)))

(declare-fun c!377 () Bool)

(assert (=> b!2198 (= c!377 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2198 (= lt!1455 (select (arr!58 q!70) jz!42))))

(assert (=> b!2198 (= lt!1454 (array!128 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!705 res!1856) b!2197))

(assert (= (and b!2197 res!1857) b!2198))

(assert (= (and b!2198 c!377) b!2199))

(assert (= (and b!2198 (not c!377)) b!2200))

(declare-fun m!3733 () Bool)

(assert (=> b!2199 m!3733))

(declare-fun m!3735 () Bool)

(assert (=> b!2197 m!3735))

(declare-fun m!3737 () Bool)

(assert (=> start!705 m!3737))

(declare-fun m!3739 () Bool)

(assert (=> b!2198 m!3739))

(declare-fun m!3741 () Bool)

(assert (=> b!2198 m!3741))

(check-sat (not b!2197) (not start!705) (not b!2199))
(check-sat)
