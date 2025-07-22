; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!923 () Bool)

(assert start!923)

(declare-fun b!3842 () Bool)

(declare-fun res!2923 () Bool)

(declare-fun e!1984 () Bool)

(assert (=> b!3842 (=> (not res!2923) (not e!1984))))

(declare-fun carry!58 () (_ BitVec 32))

(declare-fun jz!53 () (_ BitVec 32))

(declare-fun i!252 () (_ BitVec 32))

(declare-datatypes ((array!264 0))(
  ( (array!265 (arr!115 (Array (_ BitVec 32) (_ BitVec 32))) (size!115 (_ BitVec 32))) )
))
(declare-fun iq!165 () array!264)

(assert (=> b!3842 (= res!2923 (and (bvsge (select (arr!115 iq!165) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!58 #b00000000000000000000000000000000) (= carry!58 #b00000000000000000000000000000001)) (bvslt i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(declare-fun res!2922 () Bool)

(declare-fun e!1988 () Bool)

(assert (=> start!923 (=> (not res!2922) (not e!1988))))

(assert (=> start!923 (= res!2922 (and (bvsle #b00000000000000000000000000000010 jz!53) (bvslt jz!53 #b00000000000000000000000000010011)))))

(assert (=> start!923 e!1988))

(assert (=> start!923 true))

(declare-fun array_inv!65 (array!264) Bool)

(assert (=> start!923 (array_inv!65 iq!165)))

(declare-datatypes ((array!266 0))(
  ( (array!267 (arr!116 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!116 (_ BitVec 32))) )
))
(declare-fun q!85 () array!266)

(declare-fun array_inv!66 (array!266) Bool)

(assert (=> start!923 (array_inv!66 q!85)))

(declare-fun b!3843 () Bool)

(assert (=> b!3843 (= e!1984 (or (bvslt i!252 #b00000000000000000000000000000000) (bvsge i!252 (size!115 iq!165))))))

(declare-fun b!3844 () Bool)

(declare-fun res!2920 () Bool)

(assert (=> b!3844 (=> (not res!2920) (not e!1984))))

(declare-fun iqInv!0 (array!264) Bool)

(assert (=> b!3844 (= res!2920 (iqInv!0 iq!165))))

(declare-fun b!3845 () Bool)

(assert (=> b!3845 (= e!1988 e!1984)))

(declare-fun res!2924 () Bool)

(assert (=> b!3845 (=> (not res!2924) (not e!1984))))

(declare-fun lt!2614 () (_ FloatingPoint 11 53))

(declare-datatypes ((Unit!316 0))(
  ( (Unit!317) )
))
(declare-datatypes ((tuple4!154 0))(
  ( (tuple4!155 (_1!132 Unit!316) (_2!132 array!264) (_3!120 (_ BitVec 32)) (_4!77 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!2615 () tuple4!154)

(assert (=> b!3845 (= res!2924 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2614) (fp.lt lt!2614 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!115 (_2!132 lt!2615)) (bvsub jz!53 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!252) (bvsle i!252 (bvsub jz!53 #b00000000000000000000000000000001))))))

(assert (=> b!3845 (= lt!2614 (fp.sub roundNearestTiesToEven (_4!77 lt!2615) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!77 lt!2615) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!77 lt!2615) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!77 lt!2615) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!77 lt!2615) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1986 () tuple4!154)

(assert (=> b!3845 (= lt!2615 e!1986)))

(declare-fun c!668 () Bool)

(assert (=> b!3845 (= c!668 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun lt!2613 () (_ FloatingPoint 11 53))

(assert (=> b!3845 (= lt!2613 (select (arr!116 q!85) jz!53))))

(declare-fun lt!2612 () array!264)

(assert (=> b!3845 (= lt!2612 (array!265 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!3846 () Bool)

(declare-fun res!2919 () Bool)

(assert (=> b!3846 (=> (not res!2919) (not e!1984))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!3846 (= res!2919 (QInt!0 (select (arr!115 iq!165) i!252)))))

(declare-fun b!3847 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!266 array!264 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!154)

(assert (=> b!3847 (= e!1986 (computeModuloWhile!0 jz!53 q!85 lt!2612 jz!53 lt!2613))))

(declare-fun b!3848 () Bool)

(declare-fun res!2921 () Bool)

(assert (=> b!3848 (=> (not res!2921) (not e!1988))))

(declare-fun qInv!0 (array!266) Bool)

(assert (=> b!3848 (= res!2921 (qInv!0 q!85))))

(declare-fun b!3849 () Bool)

(declare-fun Unit!318 () Unit!316)

(assert (=> b!3849 (= e!1986 (tuple4!155 Unit!318 lt!2612 jz!53 lt!2613))))

(assert (= (and start!923 res!2922) b!3848))

(assert (= (and b!3848 res!2921) b!3845))

(assert (= (and b!3845 c!668) b!3847))

(assert (= (and b!3845 (not c!668)) b!3849))

(assert (= (and b!3845 res!2924) b!3844))

(assert (= (and b!3844 res!2920) b!3842))

(assert (= (and b!3842 res!2923) b!3846))

(assert (= (and b!3846 res!2919) b!3843))

(declare-fun m!4723 () Bool)

(assert (=> b!3844 m!4723))

(declare-fun m!4725 () Bool)

(assert (=> b!3847 m!4725))

(declare-fun m!4727 () Bool)

(assert (=> b!3846 m!4727))

(assert (=> b!3846 m!4727))

(declare-fun m!4729 () Bool)

(assert (=> b!3846 m!4729))

(declare-fun m!4731 () Bool)

(assert (=> b!3845 m!4731))

(declare-fun m!4733 () Bool)

(assert (=> b!3845 m!4733))

(declare-fun m!4735 () Bool)

(assert (=> start!923 m!4735))

(declare-fun m!4737 () Bool)

(assert (=> start!923 m!4737))

(declare-fun m!4739 () Bool)

(assert (=> b!3848 m!4739))

(declare-fun m!4741 () Bool)

(assert (=> b!3842 m!4741))

(check-sat (not b!3847) (not start!923) (not b!3848) (not b!3846) (not b!3844))
(check-sat)
(get-model)

(declare-fun d!1743 () Bool)

(declare-fun res!2927 () Bool)

(declare-fun e!1991 () Bool)

(assert (=> d!1743 (=> (not res!2927) (not e!1991))))

(assert (=> d!1743 (= res!2927 (= (size!116 q!85) #b00000000000000000000000000010100))))

(assert (=> d!1743 (= (qInv!0 q!85) e!1991)))

(declare-fun b!3852 () Bool)

(declare-fun lambda!163 () Int)

(declare-fun all20!0 (array!266 Int) Bool)

(assert (=> b!3852 (= e!1991 (all20!0 q!85 lambda!163))))

(assert (= (and d!1743 res!2927) b!3852))

(declare-fun m!4743 () Bool)

(assert (=> b!3852 m!4743))

(assert (=> b!3848 d!1743))

(declare-fun d!1745 () Bool)

(assert (=> d!1745 (= (array_inv!65 iq!165) (bvsge (size!115 iq!165) #b00000000000000000000000000000000))))

(assert (=> start!923 d!1745))

(declare-fun d!1747 () Bool)

(assert (=> d!1747 (= (array_inv!66 q!85) (bvsge (size!116 q!85) #b00000000000000000000000000000000))))

(assert (=> start!923 d!1747))

(declare-fun d!1749 () Bool)

(declare-fun e!1998 () Bool)

(assert (=> d!1749 e!1998))

(declare-fun res!2939 () Bool)

(assert (=> d!1749 (=> (not res!2939) (not e!1998))))

(declare-fun lt!2626 () tuple4!154)

(assert (=> d!1749 (= res!2939 (and true true (bvsle #b00000000000000000000000000000000 (_3!120 lt!2626)) (bvsle (_3!120 lt!2626) jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!77 lt!2626)) (fp.leq (_4!77 lt!2626) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!2000 () tuple4!154)

(assert (=> d!1749 (= lt!2626 e!2000)))

(declare-fun c!671 () Bool)

(declare-fun lt!2627 () (_ BitVec 32))

(assert (=> d!1749 (= c!671 (bvsgt lt!2627 #b00000000000000000000000000000000))))

(assert (=> d!1749 (= lt!2627 (bvsub jz!53 #b00000000000000000000000000000001))))

(declare-fun lt!2628 () (_ FloatingPoint 11 53))

(declare-fun lt!2629 () (_ FloatingPoint 11 53))

(assert (=> d!1749 (= lt!2628 (fp.add roundNearestTiesToEven (select (arr!116 q!85) (bvsub jz!53 #b00000000000000000000000000000001)) lt!2629))))

(declare-fun lt!2630 () array!264)

(assert (=> d!1749 (= lt!2630 (array!265 (store (arr!115 lt!2612) (bvsub jz!53 jz!53) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!2613 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2629))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!2613 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2629)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!2613 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2629)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!2613 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!2629))))))) (size!115 lt!2612)))))

(assert (=> d!1749 (= lt!2629 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2613)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2613) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2613) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!2613)))))))))

(declare-fun e!1999 () Bool)

(assert (=> d!1749 e!1999))

(declare-fun res!2938 () Bool)

(assert (=> d!1749 (=> (not res!2938) (not e!1999))))

(assert (=> d!1749 (= res!2938 (and (bvsle #b00000000000000000000000000000000 jz!53) (bvsle jz!53 jz!53) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!2613) (fp.leq lt!2613 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!1749 (= (computeModuloWhile!0 jz!53 q!85 lt!2612 jz!53 lt!2613) lt!2626)))

(declare-fun b!3865 () Bool)

(assert (=> b!3865 (= e!1998 (bvsle (_3!120 lt!2626) #b00000000000000000000000000000000))))

(declare-fun b!3866 () Bool)

(assert (=> b!3866 (= e!1999 (bvsgt jz!53 #b00000000000000000000000000000000))))

(declare-fun b!3867 () Bool)

(declare-fun res!2936 () Bool)

(assert (=> b!3867 (=> (not res!2936) (not e!1999))))

(assert (=> b!3867 (= res!2936 (iqInv!0 lt!2612))))

(declare-fun b!3868 () Bool)

(declare-fun Unit!319 () Unit!316)

(assert (=> b!3868 (= e!2000 (tuple4!155 Unit!319 lt!2630 lt!2627 lt!2628))))

(declare-fun b!3869 () Bool)

(declare-fun res!2937 () Bool)

(assert (=> b!3869 (=> (not res!2937) (not e!1998))))

(assert (=> b!3869 (= res!2937 (iqInv!0 (_2!132 lt!2626)))))

(declare-fun b!3870 () Bool)

(assert (=> b!3870 (= e!2000 (computeModuloWhile!0 jz!53 q!85 lt!2630 lt!2627 lt!2628))))

(assert (= (and d!1749 res!2938) b!3867))

(assert (= (and b!3867 res!2936) b!3866))

(assert (= (and d!1749 c!671) b!3870))

(assert (= (and d!1749 (not c!671)) b!3868))

(assert (= (and d!1749 res!2939) b!3869))

(assert (= (and b!3869 res!2937) b!3865))

(declare-fun m!4745 () Bool)

(assert (=> d!1749 m!4745))

(declare-fun m!4747 () Bool)

(assert (=> d!1749 m!4747))

(declare-fun m!4749 () Bool)

(assert (=> b!3867 m!4749))

(declare-fun m!4751 () Bool)

(assert (=> b!3869 m!4751))

(declare-fun m!4753 () Bool)

(assert (=> b!3870 m!4753))

(assert (=> b!3847 d!1749))

(declare-fun d!1751 () Bool)

(assert (=> d!1751 (= (QInt!0 (select (arr!115 iq!165) i!252)) (and (bvsle #b00000000000000000000000000000000 (select (arr!115 iq!165) i!252)) (bvsle (select (arr!115 iq!165) i!252) #b00000000111111111111111111111111)))))

(assert (=> b!3846 d!1751))

(declare-fun d!1753 () Bool)

(declare-fun res!2942 () Bool)

(declare-fun e!2003 () Bool)

(assert (=> d!1753 (=> (not res!2942) (not e!2003))))

(assert (=> d!1753 (= res!2942 (= (size!115 iq!165) #b00000000000000000000000000010100))))

(assert (=> d!1753 (= (iqInv!0 iq!165) e!2003)))

(declare-fun b!3873 () Bool)

(declare-fun lambda!166 () Int)

(declare-fun all20Int!0 (array!264 Int) Bool)

(assert (=> b!3873 (= e!2003 (all20Int!0 iq!165 lambda!166))))

(assert (= (and d!1753 res!2942) b!3873))

(declare-fun m!4755 () Bool)

(assert (=> b!3873 m!4755))

(assert (=> b!3844 d!1753))

(check-sat (not b!3870) (not b!3867) (not b!3873) (not b!3869) (not b!3852))
(check-sat)
