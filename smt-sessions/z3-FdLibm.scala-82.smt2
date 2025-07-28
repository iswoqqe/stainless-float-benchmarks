; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!701 () Bool)

(assert start!701)

(declare-fun b!2175 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(declare-datatypes ((array!119 0))(
  ( (array!120 (arr!53 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!53 (_ BitVec 32))) )
))
(declare-fun q!70 () array!119)

(declare-fun lt!1433 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!121 0))(
  ( (array!122 (arr!54 (Array (_ BitVec 32) (_ BitVec 32))) (size!54 (_ BitVec 32))) )
))
(declare-fun lt!1432 () array!121)

(declare-datatypes ((Unit!142 0))(
  ( (Unit!143) )
))
(declare-datatypes ((tuple4!58 0))(
  ( (tuple4!59 (_1!73 Unit!142) (_2!73 array!121) (_3!61 (_ BitVec 32)) (_4!29 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1085 () tuple4!58)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!119 array!121 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!58)

(assert (=> b!2175 (= e!1085 (computeModuloWhile!0 jz!42 q!70 lt!1432 jz!42 lt!1433))))

(declare-fun res!1845 () Bool)

(declare-fun e!1084 () Bool)

(assert (=> start!701 (=> (not res!1845) (not e!1084))))

(assert (=> start!701 (= res!1845 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!701 e!1084))

(assert (=> start!701 true))

(declare-fun array_inv!23 (array!119) Bool)

(assert (=> start!701 (array_inv!23 q!70)))

(declare-fun b!2176 () Bool)

(declare-fun Unit!144 () Unit!142)

(assert (=> b!2176 (= e!1085 (tuple4!59 Unit!144 lt!1432 jz!42 lt!1433))))

(declare-fun b!2173 () Bool)

(declare-fun res!1844 () Bool)

(assert (=> b!2173 (=> (not res!1844) (not e!1084))))

(declare-fun qInv!0 (array!119) Bool)

(assert (=> b!2173 (= res!1844 (qInv!0 q!70))))

(declare-fun lt!1431 () (_ FloatingPoint 11 53))

(declare-fun lt!1430 () tuple4!58)

(declare-fun b!2174 () Bool)

(assert (=> b!2174 (= e!1084 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1431) (fp.lt lt!1431 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvslt (select (arr!54 (_2!73 lt!1430)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (not (fp.isNaN lt!1431)) (not (fp.gt lt!1431 ((_ to_fp 11 53) roundTowardNegative #b101111111111111111111111111111111)))))))

(assert (=> b!2174 (= lt!1431 (fp.sub roundNearestTiesToEven (_4!29 lt!1430) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!29 lt!1430) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!29 lt!1430) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!29 lt!1430) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!29 lt!1430) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!2174 (= lt!1430 e!1085)))

(declare-fun c!371 () Bool)

(assert (=> b!2174 (= c!371 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!2174 (= lt!1433 (select (arr!53 q!70) jz!42))))

(assert (=> b!2174 (= lt!1432 (array!122 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!701 res!1845) b!2173))

(assert (= (and b!2173 res!1844) b!2174))

(assert (= (and b!2174 c!371) b!2175))

(assert (= (and b!2174 (not c!371)) b!2176))

(declare-fun m!3713 () Bool)

(assert (=> b!2175 m!3713))

(declare-fun m!3715 () Bool)

(assert (=> start!701 m!3715))

(declare-fun m!3717 () Bool)

(assert (=> b!2173 m!3717))

(declare-fun m!3719 () Bool)

(assert (=> b!2174 m!3719))

(declare-fun m!3721 () Bool)

(assert (=> b!2174 m!3721))

(check-sat (not b!2175) (not b!2173) (not start!701))
(check-sat)
