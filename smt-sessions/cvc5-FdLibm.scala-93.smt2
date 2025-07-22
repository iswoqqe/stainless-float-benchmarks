; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!769 () Bool)

(assert start!769)

(declare-fun b!2915 () Bool)

(declare-fun e!1436 () Bool)

(declare-fun e!1437 () Bool)

(assert (=> b!2915 (= e!1436 e!1437)))

(declare-fun res!2345 () Bool)

(assert (=> b!2915 (=> (not res!2345) (not e!1437))))

(declare-fun lt!1929 () (_ FloatingPoint 11 53))

(assert (=> b!2915 (= res!2345 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1929) (fp.lt lt!1929 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!212 0))(
  ( (Unit!213) )
))
(declare-datatypes ((array!168 0))(
  ( (array!169 (arr!75 (Array (_ BitVec 32) (_ BitVec 32))) (size!75 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!96 0))(
  ( (tuple4!97 (_1!94 Unit!212) (_2!94 array!168) (_3!82 (_ BitVec 32)) (_4!48 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1931 () tuple4!96)

(assert (=> b!2915 (= lt!1929 (fp.sub roundNearestTiesToEven (_4!48 lt!1931) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!48 lt!1931) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!48 lt!1931) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!48 lt!1931) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!48 lt!1931) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1435 () tuple4!96)

(assert (=> b!2915 (= lt!1931 e!1435)))

(declare-fun c!495 () Bool)

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> b!2915 (= c!495 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1933 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!170 0))(
  ( (array!171 (arr!76 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!76 (_ BitVec 32))) )
))
(declare-fun q!70 () array!170)

(assert (=> b!2915 (= lt!1933 (select (arr!76 q!70) jz!42))))

(declare-fun lt!1928 () array!168)

(assert (=> b!2915 (= lt!1928 (array!169 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2916 () Bool)

(declare-datatypes ((tuple3!68 0))(
  ( (tuple3!69 (_1!95 Unit!212) (_2!95 array!168) (_3!83 (_ BitVec 32))) )
))
(declare-fun e!1433 () tuple3!68)

(declare-fun lt!1932 () (_ BitVec 32))

(declare-fun Unit!214 () Unit!212)

(assert (=> b!2916 (= e!1433 (tuple3!69 Unit!214 (_2!94 lt!1931) lt!1932))))

(declare-fun b!2917 () Bool)

(declare-fun e!1432 () Bool)

(assert (=> b!2917 (= e!1437 e!1432)))

(declare-fun res!2342 () Bool)

(assert (=> b!2917 (=> (not res!2342) (not e!1432))))

(assert (=> b!2917 (= res!2342 (bvsle #b00000000000000000000000000000000 (select (arr!75 (_2!95 e!1433)) (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun c!494 () Bool)

(assert (=> b!2917 (= c!494 (bvsge (select (arr!75 (_2!94 lt!1931)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2917 (= lt!1932 #b00000000000000000000000000000000)))

(declare-fun b!2918 () Bool)

(declare-fun Unit!215 () Unit!212)

(assert (=> b!2918 (= e!1435 (tuple4!97 Unit!215 lt!1928 jz!42 lt!1933))))

(declare-datatypes ((tuple4!98 0))(
  ( (tuple4!99 (_1!96 Unit!212) (_2!96 (_ BitVec 32)) (_3!84 array!168) (_4!49 (_ BitVec 32))) )
))
(declare-fun e!1434 () tuple4!98)

(declare-fun b!2919 () Bool)

(declare-fun lt!1934 () (_ BitVec 32))

(declare-fun Unit!216 () Unit!212)

(assert (=> b!2919 (= e!1434 (tuple4!99 Unit!216 lt!1934 (_2!94 lt!1931) lt!1932))))

(declare-fun b!2920 () Bool)

(declare-fun lt!1930 () (_ BitVec 32))

(declare-fun lt!1927 () tuple4!98)

(declare-fun Unit!217 () Unit!212)

(assert (=> b!2920 (= e!1433 (tuple3!69 Unit!217 (array!169 (store (arr!75 (_3!84 lt!1927)) (bvsub jz!42 #b00000000000000000000000000000001) (ite (= (_4!49 lt!1927) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!1930) (bvsub #b00000000111111111111111111111111 lt!1930))) (size!75 (_3!84 lt!1927))) (_4!49 lt!1927)))))

(assert (=> b!2920 (= lt!1934 #b00000000000000000000000000000000)))

(declare-fun c!493 () Bool)

(assert (=> b!2920 (= c!493 (bvslt lt!1934 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2920 (= lt!1927 e!1434)))

(assert (=> b!2920 (= lt!1930 (select (arr!75 (_3!84 lt!1927)) (bvsub jz!42 #b00000000000000000000000000000001)))))

(declare-fun b!2921 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!170 array!168 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!96)

(assert (=> b!2921 (= e!1435 (computeModuloWhile!0 jz!42 q!70 lt!1928 jz!42 lt!1933))))

(declare-fun res!2344 () Bool)

(assert (=> start!769 (=> (not res!2344) (not e!1436))))

(assert (=> start!769 (= res!2344 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!769 e!1436))

(assert (=> start!769 true))

(declare-fun array_inv!34 (array!170) Bool)

(assert (=> start!769 (array_inv!34 q!70)))

(declare-fun b!2922 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!170 (_ BitVec 32) array!168 (_ BitVec 32)) tuple4!98)

(assert (=> b!2922 (= e!1434 (computeModuloWhile!1 jz!42 q!70 lt!1934 (_2!94 lt!1931) lt!1932))))

(declare-fun b!2923 () Bool)

(assert (=> b!2923 (= e!1432 (and (not (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!2924 () Bool)

(declare-fun res!2343 () Bool)

(assert (=> b!2924 (=> (not res!2343) (not e!1436))))

(declare-fun qInv!0 (array!170) Bool)

(assert (=> b!2924 (= res!2343 (qInv!0 q!70))))

(assert (= (and start!769 res!2344) b!2924))

(assert (= (and b!2924 res!2343) b!2915))

(assert (= (and b!2915 c!495) b!2921))

(assert (= (and b!2915 (not c!495)) b!2918))

(assert (= (and b!2915 res!2345) b!2917))

(assert (= (and b!2917 c!494) b!2920))

(assert (= (and b!2917 (not c!494)) b!2916))

(assert (= (and b!2920 c!493) b!2922))

(assert (= (and b!2920 (not c!493)) b!2919))

(assert (= (and b!2917 res!2342) b!2923))

(declare-fun m!4933 () Bool)

(assert (=> b!2917 m!4933))

(declare-fun m!4935 () Bool)

(assert (=> b!2917 m!4935))

(declare-fun m!4937 () Bool)

(assert (=> start!769 m!4937))

(declare-fun m!4939 () Bool)

(assert (=> b!2922 m!4939))

(declare-fun m!4941 () Bool)

(assert (=> b!2915 m!4941))

(declare-fun m!4943 () Bool)

(assert (=> b!2921 m!4943))

(declare-fun m!4945 () Bool)

(assert (=> b!2924 m!4945))

(declare-fun m!4947 () Bool)

(assert (=> b!2920 m!4947))

(declare-fun m!4949 () Bool)

(assert (=> b!2920 m!4949))

(push 1)

(assert (not b!2922))

(assert (not b!2924))

(assert (not start!769))

(assert (not b!2921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

