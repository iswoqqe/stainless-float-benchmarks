; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2573 () Bool)

(assert start!2573)

(declare-datatypes ((Unit!1525 0))(
  ( (Unit!1526) )
))
(declare-datatypes ((array!1080 0))(
  ( (array!1081 (arr!477 (Array (_ BitVec 32) (_ BitVec 32))) (size!477 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!358 0))(
  ( (tuple4!359 (_1!373 Unit!1525) (_2!373 array!1080) (_3!310 (_ BitVec 32)) (_4!179 (_ FloatingPoint 11 53))) )
))
(declare-fun e!7935 () tuple4!358)

(declare-fun lt!7456 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun b!14104 () Bool)

(declare-fun lt!7458 () array!1080)

(declare-fun Unit!1527 () Unit!1525)

(assert (=> b!14104 (= e!7935 (tuple4!359 Unit!1527 lt!7458 jz!20 lt!7456))))

(declare-fun b!14101 () Bool)

(declare-fun res!10914 () Bool)

(declare-fun e!7936 () Bool)

(assert (=> b!14101 (=> (not res!10914) (not e!7936))))

(declare-datatypes ((array!1082 0))(
  ( (array!1083 (arr!478 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!478 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1082)

(declare-fun qInv!0 (array!1082) Bool)

(assert (=> b!14101 (= res!10914 (qInv!0 q!31))))

(declare-fun b!14103 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1082 array!1080 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!358)

(assert (=> b!14103 (= e!7935 (computeModuloWhile!0 jz!20 q!31 lt!7458 jz!20 lt!7456))))

(declare-fun res!10913 () Bool)

(assert (=> start!2573 (=> (not res!10913) (not e!7936))))

(assert (=> start!2573 (= res!10913 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2573 e!7936))

(assert (=> start!2573 true))

(declare-fun array_inv!426 (array!1082) Bool)

(assert (=> start!2573 (array_inv!426 q!31)))

(declare-fun lt!7455 () (_ FloatingPoint 11 53))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun b!14102 () Bool)

(declare-fun lt!7457 () tuple4!358)

(assert (=> b!14102 (= e!7936 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7455) (fp.lt lt!7455 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!477 (_2!373 lt!7457)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!14102 (= lt!7455 (fp.sub roundNearestTiesToEven (_4!179 lt!7457) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!179 lt!7457) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!179 lt!7457) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!179 lt!7457) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!179 lt!7457) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14102 (= lt!7457 e!7935)))

(declare-fun c!1805 () Bool)

(assert (=> b!14102 (= c!1805 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14102 (= lt!7456 (select (arr!478 q!31) jz!20))))

(assert (=> b!14102 (= lt!7458 (array!1081 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!2573 res!10913) b!14101))

(assert (= (and b!14101 res!10914) b!14102))

(assert (= (and b!14102 c!1805) b!14103))

(assert (= (and b!14102 (not c!1805)) b!14104))

(declare-fun m!21721 () Bool)

(assert (=> b!14101 m!21721))

(declare-fun m!21723 () Bool)

(assert (=> b!14103 m!21723))

(declare-fun m!21725 () Bool)

(assert (=> start!2573 m!21725))

(declare-fun m!21727 () Bool)

(assert (=> b!14102 m!21727))

(declare-fun m!21729 () Bool)

(assert (=> b!14102 m!21729))

(check-sat (not b!14103) (not start!2573) (not b!14101))
(check-sat)
