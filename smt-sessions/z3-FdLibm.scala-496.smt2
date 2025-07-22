; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2603 () Bool)

(assert start!2603)

(declare-fun b!13907 () Bool)

(declare-fun res!10684 () Bool)

(declare-fun e!8046 () Bool)

(assert (=> b!13907 (=> (not res!10684) (not e!8046))))

(declare-datatypes ((array!1121 0))(
  ( (array!1122 (arr!495 (Array (_ BitVec 32) (_ BitVec 32))) (size!495 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1121)

(declare-fun iqInv!0 (array!1121) Bool)

(assert (=> b!13907 (= res!10684 (iqInv!0 iq!76))))

(declare-fun b!13908 () Bool)

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!13908 (= e!8046 (or (bvslt i!142 #b00000000000000000000000000000000) (bvsge i!142 (size!495 iq!76))))))

(declare-fun b!13909 () Bool)

(declare-fun e!8047 () Bool)

(assert (=> b!13909 (= e!8047 e!8046)))

(declare-fun res!10681 () Bool)

(assert (=> b!13909 (=> (not res!10681) (not e!8046))))

(declare-fun lt!7552 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!1539 0))(
  ( (Unit!1540) )
))
(declare-datatypes ((tuple4!376 0))(
  ( (tuple4!377 (_1!382 Unit!1539) (_2!382 array!1121) (_3!319 (_ BitVec 32)) (_4!188 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7551 () tuple4!376)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!13909 (= res!10681 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7552) (fp.lt lt!7552 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!495 (_2!382 lt!7551)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!13909 (= lt!7552 (fp.sub roundNearestTiesToEven (_4!188 lt!7551) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!188 lt!7551) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!188 lt!7551) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!188 lt!7551) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!188 lt!7551) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8049 () tuple4!376)

(assert (=> b!13909 (= lt!7551 e!8049)))

(declare-fun c!1824 () Bool)

(assert (=> b!13909 (= c!1824 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7553 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1123 0))(
  ( (array!1124 (arr!496 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!496 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1123)

(assert (=> b!13909 (= lt!7553 (select (arr!496 q!31) jz!20))))

(declare-fun lt!7550 () array!1121)

(assert (=> b!13909 (= lt!7550 (array!1122 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!13910 () Bool)

(declare-fun res!10685 () Bool)

(assert (=> b!13910 (=> (not res!10685) (not e!8046))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!13910 (= res!10685 (QInt!0 (select (arr!495 iq!76) i!142)))))

(declare-fun b!13911 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1123 array!1121 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!376)

(assert (=> b!13911 (= e!8049 (computeModuloWhile!0 jz!20 q!31 lt!7550 jz!20 lt!7553))))

(declare-fun res!10682 () Bool)

(assert (=> start!2603 (=> (not res!10682) (not e!8047))))

(assert (=> start!2603 (= res!10682 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2603 e!8047))

(assert (=> start!2603 true))

(declare-fun array_inv!443 (array!1123) Bool)

(assert (=> start!2603 (array_inv!443 q!31)))

(declare-fun array_inv!444 (array!1121) Bool)

(assert (=> start!2603 (array_inv!444 iq!76)))

(declare-fun b!13912 () Bool)

(declare-fun Unit!1541 () Unit!1539)

(assert (=> b!13912 (= e!8049 (tuple4!377 Unit!1541 lt!7550 jz!20 lt!7553))))

(declare-fun b!13913 () Bool)

(declare-fun res!10683 () Bool)

(assert (=> b!13913 (=> (not res!10683) (not e!8047))))

(declare-fun qInv!0 (array!1123) Bool)

(assert (=> b!13913 (= res!10683 (qInv!0 q!31))))

(declare-fun b!13914 () Bool)

(declare-fun res!10686 () Bool)

(assert (=> b!13914 (=> (not res!10686) (not e!8046))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!13914 (= res!10686 (and (bvsge (select (arr!495 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (= (and start!2603 res!10682) b!13913))

(assert (= (and b!13913 res!10683) b!13909))

(assert (= (and b!13909 c!1824) b!13911))

(assert (= (and b!13909 (not c!1824)) b!13912))

(assert (= (and b!13909 res!10681) b!13907))

(assert (= (and b!13907 res!10684) b!13914))

(assert (= (and b!13914 res!10686) b!13910))

(assert (= (and b!13910 res!10685) b!13908))

(declare-fun m!19585 () Bool)

(assert (=> b!13909 m!19585))

(declare-fun m!19587 () Bool)

(assert (=> b!13909 m!19587))

(declare-fun m!19589 () Bool)

(assert (=> b!13913 m!19589))

(declare-fun m!19591 () Bool)

(assert (=> start!2603 m!19591))

(declare-fun m!19593 () Bool)

(assert (=> start!2603 m!19593))

(declare-fun m!19595 () Bool)

(assert (=> b!13911 m!19595))

(declare-fun m!19597 () Bool)

(assert (=> b!13907 m!19597))

(declare-fun m!19599 () Bool)

(assert (=> b!13910 m!19599))

(assert (=> b!13910 m!19599))

(declare-fun m!19601 () Bool)

(assert (=> b!13910 m!19601))

(declare-fun m!19603 () Bool)

(assert (=> b!13914 m!19603))

(check-sat (not start!2603) (not b!13907) (not b!13913) (not b!13911) (not b!13910))
(check-sat)
(get-model)

(declare-fun d!4833 () Bool)

(declare-fun res!10689 () Bool)

(declare-fun e!8053 () Bool)

(assert (=> d!4833 (=> (not res!10689) (not e!8053))))

(assert (=> d!4833 (= res!10689 (= (size!496 q!31) #b00000000000000000000000000010100))))

(assert (=> d!4833 (= (qInv!0 q!31) e!8053)))

(declare-fun b!13917 () Bool)

(declare-fun lambda!598 () Int)

(declare-fun all20!0 (array!1123 Int) Bool)

(assert (=> b!13917 (= e!8053 (all20!0 q!31 lambda!598))))

(assert (= (and d!4833 res!10689) b!13917))

(declare-fun m!19605 () Bool)

(assert (=> b!13917 m!19605))

(assert (=> b!13913 d!4833))

(declare-fun d!4835 () Bool)

(declare-fun res!10692 () Bool)

(declare-fun e!8056 () Bool)

(assert (=> d!4835 (=> (not res!10692) (not e!8056))))

(assert (=> d!4835 (= res!10692 (= (size!495 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!4835 (= (iqInv!0 iq!76) e!8056)))

(declare-fun b!13920 () Bool)

(declare-fun lambda!601 () Int)

(declare-fun all20Int!0 (array!1121 Int) Bool)

(assert (=> b!13920 (= e!8056 (all20Int!0 iq!76 lambda!601))))

(assert (= (and d!4835 res!10692) b!13920))

(declare-fun m!19607 () Bool)

(assert (=> b!13920 m!19607))

(assert (=> b!13907 d!4835))

(declare-fun b!13933 () Bool)

(declare-fun e!8064 () Bool)

(declare-fun lt!7564 () tuple4!376)

(assert (=> b!13933 (= e!8064 (bvsle (_3!319 lt!7564) #b00000000000000000000000000000000))))

(declare-fun b!13934 () Bool)

(declare-fun res!10704 () Bool)

(assert (=> b!13934 (=> (not res!10704) (not e!8064))))

(assert (=> b!13934 (= res!10704 (iqInv!0 (_2!382 lt!7564)))))

(declare-fun lt!7567 () (_ BitVec 32))

(declare-fun lt!7566 () (_ FloatingPoint 11 53))

(declare-fun lt!7565 () array!1121)

(declare-fun e!8065 () tuple4!376)

(declare-fun b!13935 () Bool)

(assert (=> b!13935 (= e!8065 (computeModuloWhile!0 jz!20 q!31 lt!7565 lt!7567 lt!7566))))

(declare-fun b!13936 () Bool)

(declare-fun res!10702 () Bool)

(declare-fun e!8063 () Bool)

(assert (=> b!13936 (=> (not res!10702) (not e!8063))))

(assert (=> b!13936 (= res!10702 (iqInv!0 lt!7550))))

(declare-fun d!4837 () Bool)

(assert (=> d!4837 e!8064))

(declare-fun res!10701 () Bool)

(assert (=> d!4837 (=> (not res!10701) (not e!8064))))

(assert (=> d!4837 (= res!10701 (and true true (bvsle #b00000000000000000000000000000000 (_3!319 lt!7564)) (bvsle (_3!319 lt!7564) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!188 lt!7564)) (fp.leq (_4!188 lt!7564) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!4837 (= lt!7564 e!8065)))

(declare-fun c!1827 () Bool)

(assert (=> d!4837 (= c!1827 (bvsgt lt!7567 #b00000000000000000000000000000000))))

(assert (=> d!4837 (= lt!7567 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!7568 () (_ FloatingPoint 11 53))

(assert (=> d!4837 (= lt!7566 (fp.add roundNearestTiesToEven (select (arr!496 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!7568))))

(assert (=> d!4837 (= lt!7565 (array!1122 (store (arr!495 lt!7550) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!7553 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7568))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!7553 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7568)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!7553 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7568)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!7553 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7568))))))) (size!495 lt!7550)))))

(assert (=> d!4837 (= lt!7568 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7553)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7553) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7553) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7553)))))))))

(assert (=> d!4837 e!8063))

(declare-fun res!10703 () Bool)

(assert (=> d!4837 (=> (not res!10703) (not e!8063))))

(assert (=> d!4837 (= res!10703 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7553) (fp.leq lt!7553 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!4837 (= (computeModuloWhile!0 jz!20 q!31 lt!7550 jz!20 lt!7553) lt!7564)))

(declare-fun b!13937 () Bool)

(declare-fun Unit!1542 () Unit!1539)

(assert (=> b!13937 (= e!8065 (tuple4!377 Unit!1542 lt!7565 lt!7567 lt!7566))))

(declare-fun b!13938 () Bool)

(assert (=> b!13938 (= e!8063 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (= (and d!4837 res!10703) b!13936))

(assert (= (and b!13936 res!10702) b!13938))

(assert (= (and d!4837 c!1827) b!13935))

(assert (= (and d!4837 (not c!1827)) b!13937))

(assert (= (and d!4837 res!10701) b!13934))

(assert (= (and b!13934 res!10704) b!13933))

(declare-fun m!19609 () Bool)

(assert (=> b!13934 m!19609))

(declare-fun m!19611 () Bool)

(assert (=> b!13935 m!19611))

(declare-fun m!19613 () Bool)

(assert (=> b!13936 m!19613))

(declare-fun m!19615 () Bool)

(assert (=> d!4837 m!19615))

(declare-fun m!19617 () Bool)

(assert (=> d!4837 m!19617))

(assert (=> b!13911 d!4837))

(declare-fun d!4839 () Bool)

(assert (=> d!4839 (= (array_inv!443 q!31) (bvsge (size!496 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2603 d!4839))

(declare-fun d!4841 () Bool)

(assert (=> d!4841 (= (array_inv!444 iq!76) (bvsge (size!495 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2603 d!4841))

(declare-fun d!4843 () Bool)

(assert (=> d!4843 (= (QInt!0 (select (arr!495 iq!76) i!142)) (and (bvsle #b00000000000000000000000000000000 (select (arr!495 iq!76) i!142)) (bvsle (select (arr!495 iq!76) i!142) #b00000000111111111111111111111111)))))

(assert (=> b!13910 d!4843))

(check-sat (not b!13936) (not b!13935) (not b!13934) (not b!13917) (not b!13920))
(check-sat)
