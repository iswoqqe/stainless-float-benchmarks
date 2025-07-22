; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567 () Bool)

(assert start!567)

(declare-datatypes ((Unit!19 0))(
  ( (Unit!20) )
))
(declare-datatypes ((array!37 0))(
  ( (array!38 (arr!17 (Array (_ BitVec 32) (_ BitVec 32))) (size!17 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!14 0))(
  ( (tuple4!15 (_1!46 Unit!19) (_2!46 array!37) (_3!34 (_ BitVec 32)) (_4!7 (_ FloatingPoint 11 53))) )
))
(declare-fun e!509 () tuple4!14)

(declare-fun jz!42 () (_ BitVec 32))

(declare-fun b!754 () Bool)

(declare-fun lt!672 () array!37)

(declare-fun lt!676 () (_ FloatingPoint 11 53))

(declare-fun Unit!21 () Unit!19)

(assert (=> b!754 (= e!509 (tuple4!15 Unit!21 lt!672 jz!42 lt!676))))

(declare-fun lt!674 () (_ FloatingPoint 11 53))

(declare-fun e!511 () tuple4!14)

(declare-fun lt!679 () array!37)

(declare-fun b!755 () Bool)

(declare-fun Unit!22 () Unit!19)

(assert (=> b!755 (= e!511 (tuple4!15 Unit!22 lt!679 jz!42 lt!674))))

(declare-fun e!514 () Bool)

(declare-fun lt!671 () (_ FloatingPoint 11 53))

(declare-fun lt!678 () (_ BitVec 32))

(declare-fun b!756 () Bool)

(declare-fun lt!673 () tuple4!14)

(assert (=> b!756 (= e!514 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!671) (fp.lt lt!671 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!17 (_2!46 lt!673)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsge lt!678 (bvsub jz!42 #b00000000000000000000000000000001))))))

(assert (=> b!756 (= lt!671 (fp.sub roundNearestTiesToEven (_4!7 lt!673) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!7 lt!673) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!7 lt!673) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!7 lt!673) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!7 lt!673) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!756 (= lt!673 e!511)))

(declare-fun c!186 () Bool)

(assert (=> b!756 (= c!186 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-datatypes ((array!39 0))(
  ( (array!40 (arr!18 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!18 (_ BitVec 32))) )
))
(declare-fun q!70 () array!39)

(assert (=> b!756 (= lt!674 (select (arr!18 q!70) jz!42))))

(assert (=> b!756 (= lt!679 (array!38 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!757 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!39 array!37 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!14)

(assert (=> b!757 (= e!509 (computeModuloWhile!0 jz!42 q!70 lt!672 jz!42 lt!676))))

(declare-fun b!758 () Bool)

(declare-fun e!513 () Bool)

(declare-fun e!510 () Bool)

(assert (=> b!758 (= e!513 e!510)))

(declare-fun res!799 () Bool)

(assert (=> b!758 (=> (not res!799) (not e!510))))

(declare-fun lt!677 () tuple4!14)

(declare-fun lt!675 () (_ FloatingPoint 11 53))

(assert (=> b!758 (= res!799 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!675) (fp.lt lt!675 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!17 (_2!46 lt!677)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000)))))

(assert (=> b!758 (= lt!675 (fp.sub roundNearestTiesToEven (_4!7 lt!677) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!7 lt!677) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!7 lt!677) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!7 lt!677) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!7 lt!677) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!758 (= lt!677 e!509)))

(declare-fun c!185 () Bool)

(assert (=> b!758 (= c!185 (bvsgt jz!42 #b00000000000000000000000000000000))))

(assert (=> b!758 (= lt!676 (select (arr!18 q!70) jz!42))))

(assert (=> b!758 (= lt!672 (array!38 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun res!797 () Bool)

(assert (=> start!567 (=> (not res!797) (not e!513))))

(assert (=> start!567 (= res!797 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!567 e!513))

(assert (=> start!567 true))

(declare-fun array_inv!4 (array!39) Bool)

(assert (=> start!567 (array_inv!4 q!70)))

(declare-fun b!759 () Bool)

(assert (=> b!759 (= e!511 (computeModuloWhile!0 jz!42 q!70 lt!679 jz!42 lt!674))))

(declare-fun b!760 () Bool)

(assert (=> b!760 (= e!510 e!514)))

(declare-fun res!800 () Bool)

(assert (=> b!760 (=> (not res!800) (not e!514))))

(assert (=> b!760 (= res!800 (bvslt lt!678 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!760 (= lt!678 #b00000000000000000000000000000000)))

(declare-fun b!761 () Bool)

(declare-fun res!798 () Bool)

(assert (=> b!761 (=> (not res!798) (not e!513))))

(declare-fun qInv!0 (array!39) Bool)

(assert (=> b!761 (= res!798 (qInv!0 q!70))))

(assert (= (and start!567 res!797) b!761))

(assert (= (and b!761 res!798) b!758))

(assert (= (and b!758 c!185) b!757))

(assert (= (and b!758 (not c!185)) b!754))

(assert (= (and b!758 res!799) b!760))

(assert (= (and b!760 res!800) b!756))

(assert (= (and b!756 c!186) b!759))

(assert (= (and b!756 (not c!186)) b!755))

(declare-fun m!931 () Bool)

(assert (=> b!757 m!931))

(declare-fun m!933 () Bool)

(assert (=> b!759 m!933))

(declare-fun m!935 () Bool)

(assert (=> b!761 m!935))

(declare-fun m!937 () Bool)

(assert (=> b!756 m!937))

(declare-fun m!939 () Bool)

(assert (=> b!756 m!939))

(declare-fun m!941 () Bool)

(assert (=> b!758 m!941))

(assert (=> b!758 m!939))

(declare-fun m!943 () Bool)

(assert (=> start!567 m!943))

(check-sat (not b!761) (not start!567) (not b!759) (not b!757))
(check-sat)
