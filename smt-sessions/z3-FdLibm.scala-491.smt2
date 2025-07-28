; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2591 () Bool)

(assert start!2591)

(declare-datatypes ((array!1098 0))(
  ( (array!1099 (arr!485 (Array (_ BitVec 32) (_ BitVec 32))) (size!485 (_ BitVec 32))) )
))
(declare-fun lt!7521 () array!1098)

(declare-datatypes ((array!1100 0))(
  ( (array!1101 (arr!486 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!486 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1100)

(declare-fun b!14195 () Bool)

(declare-datatypes ((Unit!1538 0))(
  ( (Unit!1539) )
))
(declare-datatypes ((tuple4!366 0))(
  ( (tuple4!367 (_1!377 Unit!1538) (_2!377 array!1098) (_3!314 (_ BitVec 32)) (_4!183 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8012 () tuple4!366)

(declare-fun lt!7523 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1100 array!1098 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!366)

(assert (=> b!14195 (= e!8012 (computeModuloWhile!0 jz!20 q!31 lt!7521 jz!20 lt!7523))))

(declare-fun b!14196 () Bool)

(declare-fun res!10979 () Bool)

(declare-fun e!8011 () Bool)

(assert (=> b!14196 (=> (not res!10979) (not e!8011))))

(declare-fun qInv!0 (array!1100) Bool)

(assert (=> b!14196 (= res!10979 (qInv!0 q!31))))

(declare-fun b!14197 () Bool)

(declare-fun e!8009 () Bool)

(assert (=> b!14197 (= e!8011 e!8009)))

(declare-fun res!10980 () Bool)

(assert (=> b!14197 (=> (not res!10980) (not e!8009))))

(declare-fun lt!7524 () tuple4!366)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!7522 () (_ FloatingPoint 11 53))

(assert (=> b!14197 (= res!10980 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7522) (fp.lt lt!7522 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!485 (_2!377 lt!7524)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14197 (= lt!7522 (fp.sub roundNearestTiesToEven (_4!183 lt!7524) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!183 lt!7524) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!183 lt!7524) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!183 lt!7524) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!183 lt!7524) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14197 (= lt!7524 e!8012)))

(declare-fun c!1820 () Bool)

(assert (=> b!14197 (= c!1820 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14197 (= lt!7523 (select (arr!486 q!31) jz!20))))

(assert (=> b!14197 (= lt!7521 (array!1099 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14198 () Bool)

(declare-fun Unit!1540 () Unit!1538)

(assert (=> b!14198 (= e!8012 (tuple4!367 Unit!1540 lt!7521 jz!20 lt!7523))))

(declare-fun b!14199 () Bool)

(declare-fun res!10977 () Bool)

(assert (=> b!14199 (=> (not res!10977) (not e!8009))))

(declare-fun iq!76 () array!1098)

(declare-fun iqInv!0 (array!1098) Bool)

(assert (=> b!14199 (= res!10977 (iqInv!0 iq!76))))

(declare-fun b!14200 () Bool)

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!14200 (= e!8009 (and (bvsge (select (arr!485 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand i!142 #b10000000000000000000000000000000))) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 i!142) #b10000000000000000000000000000000)))))))

(declare-fun res!10978 () Bool)

(assert (=> start!2591 (=> (not res!10978) (not e!8011))))

(assert (=> start!2591 (= res!10978 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2591 e!8011))

(assert (=> start!2591 true))

(declare-fun array_inv!433 (array!1100) Bool)

(assert (=> start!2591 (array_inv!433 q!31)))

(declare-fun array_inv!434 (array!1098) Bool)

(assert (=> start!2591 (array_inv!434 iq!76)))

(assert (= (and start!2591 res!10978) b!14196))

(assert (= (and b!14196 res!10979) b!14197))

(assert (= (and b!14197 c!1820) b!14195))

(assert (= (and b!14197 (not c!1820)) b!14198))

(assert (= (and b!14197 res!10980) b!14199))

(assert (= (and b!14199 res!10977) b!14200))

(declare-fun m!21789 () Bool)

(assert (=> b!14199 m!21789))

(declare-fun m!21791 () Bool)

(assert (=> start!2591 m!21791))

(declare-fun m!21793 () Bool)

(assert (=> start!2591 m!21793))

(declare-fun m!21795 () Bool)

(assert (=> b!14200 m!21795))

(declare-fun m!21797 () Bool)

(assert (=> b!14197 m!21797))

(declare-fun m!21799 () Bool)

(assert (=> b!14197 m!21799))

(declare-fun m!21801 () Bool)

(assert (=> b!14196 m!21801))

(declare-fun m!21803 () Bool)

(assert (=> b!14195 m!21803))

(check-sat (not b!14199) (not start!2591) (not b!14195) (not b!14196))
(check-sat)
