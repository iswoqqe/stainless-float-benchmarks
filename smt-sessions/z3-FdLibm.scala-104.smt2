; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!869 () Bool)

(assert start!869)

(declare-fun b!3938 () Bool)

(declare-fun res!3064 () Bool)

(declare-fun e!1858 () Bool)

(assert (=> b!3938 (=> (not res!3064) (not e!1858))))

(declare-datatypes ((array!220 0))(
  ( (array!221 (arr!97 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!97 (_ BitVec 32))) )
))
(declare-fun q!85 () array!220)

(declare-fun qInv!0 (array!220) Bool)

(assert (=> b!3938 (= res!3064 (qInv!0 q!85))))

(declare-fun res!3063 () Bool)

(assert (=> start!869 (=> (not res!3063) (not e!1858))))

(declare-fun jz!53 () (_ BitVec 32))

(assert (=> start!869 (= res!3063 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!869 e!1858))

(assert (=> start!869 true))

(declare-fun array_inv!48 (array!220) Bool)

(assert (=> start!869 (array_inv!48 q!85)))

(declare-datatypes ((array!222 0))(
  ( (array!223 (arr!98 (Array (_ BitVec 32) (_ BitVec 32))) (size!98 (_ BitVec 32))) )
))
(declare-fun lt!2507 () array!222)

(declare-fun b!3940 () Bool)

(declare-datatypes ((Unit!300 0))(
  ( (Unit!301) )
))
(declare-datatypes ((tuple4!136 0))(
  ( (tuple4!137 (_1!123 Unit!300) (_2!123 array!222) (_3!111 (_ BitVec 32)) (_4!68 (_ FloatingPoint 11 53))) )
))
(declare-fun e!1856 () tuple4!136)

(declare-fun lt!2508 () (_ FloatingPoint 11 53))

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!220 array!222 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!136)

(assert (=> b!3940 (= e!1856 (computeModuloWhile!0 jz!53 q!85 lt!2507 jz!53 lt!2508))))

(declare-fun b!3941 () Bool)

(declare-fun Unit!302 () Unit!300)

(assert (=> b!3941 (= e!1856 (tuple4!137 Unit!302 lt!2507 jz!53 lt!2508))))

(declare-fun b!3939 () Bool)

(declare-fun lt!2510 () tuple4!136)

(declare-fun lt!2509 () (_ FloatingPoint 11 53))

(declare-fun i!252 () (_ BitVec 32))

(assert (=> b!3939 (= e!1858 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2509) (fp.lt lt!2509 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!98 (_2!123 lt!2510)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (not (= (bvand jz!53 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!53 #b10000000000000000000000000000000) (bvand (bvsub jz!53 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (=> b!3939 (= lt!2509 (fp.sub roundNearestTiesToEven (_4!68 lt!2510) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!68 lt!2510) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!68 lt!2510) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!68 lt!2510) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!68 lt!2510) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!3939 (= lt!2510 e!1856)))

(declare-fun c!644 () Bool)

(assert (=> b!3939 (= c!644 (bvsgt jz!53 #b00000000000000000000000000000000))))

(assert (=> b!3939 (= lt!2508 (select (arr!97 q!85) jz!53))))

(assert (=> b!3939 (= lt!2507 (array!223 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (= (and start!869 res!3063) b!3938))

(assert (= (and b!3938 res!3064) b!3939))

(assert (= (and b!3939 c!644) b!3940))

(assert (= (and b!3939 (not c!644)) b!3941))

(declare-fun m!6133 () Bool)

(assert (=> b!3938 m!6133))

(declare-fun m!6135 () Bool)

(assert (=> start!869 m!6135))

(declare-fun m!6137 () Bool)

(assert (=> b!3940 m!6137))

(declare-fun m!6139 () Bool)

(assert (=> b!3939 m!6139))

(declare-fun m!6141 () Bool)

(assert (=> b!3939 m!6141))

(check-sat (not b!3940) (not start!869) (not b!3938))
(check-sat)
