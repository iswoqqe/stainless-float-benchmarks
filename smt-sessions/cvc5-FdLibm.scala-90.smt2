; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!743 () Bool)

(assert start!743)

(declare-datatypes ((Unit!186 0))(
  ( (Unit!187) )
))
(declare-datatypes ((array!154 0))(
  ( (array!155 (arr!69 (Array (_ BitVec 32) (_ BitVec 32))) (size!69 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!84 0))(
  ( (tuple4!85 (_1!86 Unit!186) (_2!86 array!154) (_3!74 (_ BitVec 32)) (_4!42 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!1746 () tuple4!84)

(declare-fun lt!1747 () (_ BitVec 32))

(declare-fun b!2646 () Bool)

(declare-datatypes ((tuple4!86 0))(
  ( (tuple4!87 (_1!87 Unit!186) (_2!87 (_ BitVec 32)) (_3!75 array!154) (_4!43 (_ BitVec 32))) )
))
(declare-fun e!1310 () tuple4!86)

(declare-fun lt!1748 () (_ BitVec 32))

(declare-fun Unit!188 () Unit!186)

(assert (=> b!2646 (= e!1310 (tuple4!87 Unit!188 lt!1748 (_2!86 lt!1746) lt!1747))))

(declare-fun res!2170 () Bool)

(declare-fun e!1314 () Bool)

(assert (=> start!743 (=> (not res!2170) (not e!1314))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!743 (= res!2170 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!743 e!1314))

(assert (=> start!743 true))

(declare-datatypes ((array!156 0))(
  ( (array!157 (arr!70 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!70 (_ BitVec 32))) )
))
(declare-fun q!70 () array!156)

(declare-fun array_inv!31 (array!156) Bool)

(assert (=> start!743 (array_inv!31 q!70)))

(declare-fun b!2647 () Bool)

(declare-fun e!1313 () Bool)

(assert (=> b!2647 (= e!1314 e!1313)))

(declare-fun res!2171 () Bool)

(assert (=> b!2647 (=> (not res!2171) (not e!1313))))

(declare-fun lt!1749 () (_ FloatingPoint 11 53))

(assert (=> b!2647 (= res!2171 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1749) (fp.lt lt!1749 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!2647 (= lt!1749 (fp.sub roundNearestTiesToEven (_4!42 lt!1746) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!42 lt!1746) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!42 lt!1746) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!42 lt!1746) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!42 lt!1746) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!1312 () tuple4!84)

(assert (=> b!2647 (= lt!1746 e!1312)))

(declare-fun c!446 () Bool)

(assert (=> b!2647 (= c!446 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1744 () (_ FloatingPoint 11 53))

(assert (=> b!2647 (= lt!1744 (select (arr!70 q!70) jz!42))))

(declare-fun lt!1743 () array!154)

(assert (=> b!2647 (= lt!1743 (array!155 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!2648 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!156 array!154 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!84)

(assert (=> b!2648 (= e!1312 (computeModuloWhile!0 jz!42 q!70 lt!1743 jz!42 lt!1744))))

(declare-fun b!2649 () Bool)

(declare-fun Unit!189 () Unit!186)

(assert (=> b!2649 (= e!1312 (tuple4!85 Unit!189 lt!1743 jz!42 lt!1744))))

(declare-fun b!2650 () Bool)

(declare-fun res!2169 () Bool)

(assert (=> b!2650 (=> (not res!2169) (not e!1314))))

(declare-fun qInv!0 (array!156) Bool)

(assert (=> b!2650 (= res!2169 (qInv!0 q!70))))

(declare-fun b!2651 () Bool)

(declare-fun e!1311 () Bool)

(assert (=> b!2651 (= e!1313 e!1311)))

(declare-fun res!2172 () Bool)

(assert (=> b!2651 (=> (not res!2172) (not e!1311))))

(assert (=> b!2651 (= res!2172 (bvsge (select (arr!69 (_2!86 lt!1746)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(assert (=> b!2651 (= lt!1747 #b00000000000000000000000000000000)))

(declare-fun b!2652 () Bool)

(declare-fun lt!1745 () (_ BitVec 32))

(declare-fun lt!1750 () tuple4!86)

(assert (=> b!2652 (= e!1311 (or (bvslt lt!1745 #b00000000000000000000000000000000) (bvsge lt!1745 (size!69 (_3!75 lt!1750)))))))

(assert (=> b!2652 (= lt!1745 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2652 (= lt!1750 e!1310)))

(declare-fun c!445 () Bool)

(assert (=> b!2652 (= c!445 (bvslt lt!1748 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2652 (= lt!1748 #b00000000000000000000000000000000)))

(declare-fun b!2653 () Bool)

(declare-fun computeModuloWhile!1 ((_ BitVec 32) array!156 (_ BitVec 32) array!154 (_ BitVec 32)) tuple4!86)

(assert (=> b!2653 (= e!1310 (computeModuloWhile!1 jz!42 q!70 lt!1748 (_2!86 lt!1746) lt!1747))))

(assert (= (and start!743 res!2170) b!2650))

(assert (= (and b!2650 res!2169) b!2647))

(assert (= (and b!2647 c!446) b!2648))

(assert (= (and b!2647 (not c!446)) b!2649))

(assert (= (and b!2647 res!2171) b!2651))

(assert (= (and b!2651 res!2172) b!2652))

(assert (= (and b!2652 c!445) b!2653))

(assert (= (and b!2652 (not c!445)) b!2646))

(declare-fun m!4675 () Bool)

(assert (=> b!2648 m!4675))

(declare-fun m!4677 () Bool)

(assert (=> start!743 m!4677))

(declare-fun m!4679 () Bool)

(assert (=> b!2647 m!4679))

(declare-fun m!4681 () Bool)

(assert (=> b!2653 m!4681))

(declare-fun m!4683 () Bool)

(assert (=> b!2650 m!4683))

(declare-fun m!4685 () Bool)

(assert (=> b!2651 m!4685))

(push 1)

(assert (not b!2648))

(assert (not b!2653))

(assert (not b!2650))

(assert (not start!743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2132 () Bool)

(declare-fun e!1323 () Bool)

(assert (=> d!2132 e!1323))

(declare-fun res!2184 () Bool)

(assert (=> d!2132 (=> (not res!2184) (not e!1323))))

(declare-fun lt!1764 () tuple4!84)

(assert (=> d!2132 (= res!2184 (and true true (bvsle #b00000000000000000000000000000000 (_3!74 lt!1764)) (bvsle (_3!74 lt!1764) jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!42 lt!1764)) (fp.leq (_4!42 lt!1764) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(declare-fun e!1321 () tuple4!84)

(assert (=> d!2132 (= lt!1764 e!1321)))

(declare-fun c!449 () Bool)

(declare-fun lt!1762 () (_ BitVec 32))

(assert (=> d!2132 (= c!449 (bvsgt lt!1762 #b00000000000000000000000000000000))))

(assert (=> d!2132 (= lt!1762 (bvsub jz!42 #b00000000000000000000000000000001))))

(declare-fun lt!1765 () (_ FloatingPoint 11 53))

(declare-fun lt!1761 () (_ FloatingPoint 11 53))

(assert (=> d!2132 (= lt!1765 (fp.add roundNearestTiesToEven (select (arr!70 q!70) (bvsub jz!42 #b00000000000000000000000000000001)) lt!1761))))

(declare-fun lt!1763 () array!154)

(assert (=> d!2132 (= lt!1763 (array!155 (store (arr!69 lt!1743) (bvsub jz!42 jz!42) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!1744 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1761))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!1744 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1761)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!1744 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1761)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!1744 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!1761))))))) (size!69 lt!1743)))))

(assert (=> d!2132 (= lt!1761 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1744)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1744) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1744) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!1744)))))))))

(declare-fun e!1322 () Bool)

(assert (=> d!2132 e!1322))

(declare-fun res!2183 () Bool)

(assert (=> d!2132 (=> (not res!2183) (not e!1322))))

(assert (=> d!2132 (= res!2183 (and (bvsle #b00000000000000000000000000000000 jz!42) (bvsle jz!42 jz!42) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!1744) (fp.leq lt!1744 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!2132 (= (computeModuloWhile!0 jz!42 q!70 lt!1743 jz!42 lt!1744) lt!1764)))

(declare-fun b!2666 () Bool)

(declare-fun res!2182 () Bool)

(assert (=> b!2666 (=> (not res!2182) (not e!1322))))

(declare-fun iqInv!0 (array!154) Bool)

(assert (=> b!2666 (= res!2182 (iqInv!0 lt!1743))))

(declare-fun b!2667 () Bool)

(assert (=> b!2667 (= e!1321 (computeModuloWhile!0 jz!42 q!70 lt!1763 lt!1762 lt!1765))))

(declare-fun b!2668 () Bool)

(assert (=> b!2668 (= e!1322 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun b!2669 () Bool)

(declare-fun res!2181 () Bool)

(assert (=> b!2669 (=> (not res!2181) (not e!1323))))

(assert (=> b!2669 (= res!2181 (iqInv!0 (_2!86 lt!1764)))))

(declare-fun b!2670 () Bool)

(declare-fun Unit!190 () Unit!186)

(assert (=> b!2670 (= e!1321 (tuple4!85 Unit!190 lt!1763 lt!1762 lt!1765))))

(declare-fun b!2671 () Bool)

(assert (=> b!2671 (= e!1323 (bvsle (_3!74 lt!1764) #b00000000000000000000000000000000))))

(assert (= (and d!2132 res!2183) b!2666))

(assert (= (and b!2666 res!2182) b!2668))

(assert (= (and d!2132 c!449) b!2667))

(assert (= (and d!2132 (not c!449)) b!2670))

(assert (= (and d!2132 res!2184) b!2669))

(assert (= (and b!2669 res!2181) b!2671))

(declare-fun m!4687 () Bool)

(assert (=> d!2132 m!4687))

(declare-fun m!4689 () Bool)

(assert (=> d!2132 m!4689))

(declare-fun m!4691 () Bool)

(assert (=> b!2666 m!4691))

(declare-fun m!4693 () Bool)

(assert (=> b!2667 m!4693))

(declare-fun m!4695 () Bool)

(assert (=> b!2669 m!4695))

(assert (=> b!2648 d!2132))

(declare-fun d!2134 () Bool)

(declare-fun e!1333 () Bool)

(assert (=> d!2134 e!1333))

(declare-fun res!2198 () Bool)

(assert (=> d!2134 (=> (not res!2198) (not e!1333))))

(declare-fun lt!1784 () tuple4!86)

(assert (=> d!2134 (= res!2198 (and (or (bvsgt #b00000000000000000000000000000000 (_2!87 lt!1784)) (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000))) (bvsle #b00000000000000000000000000000000 (_2!87 lt!1784)) (bvsle (_2!87 lt!1784) (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun e!1335 () tuple4!86)

(assert (=> d!2134 (= lt!1784 e!1335)))

(declare-fun c!454 () Bool)

(declare-fun lt!1792 () (_ BitVec 32))

(assert (=> d!2134 (= c!454 (bvslt lt!1792 (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> d!2134 (= lt!1792 (bvadd lt!1748 #b00000000000000000000000000000001))))

(declare-fun lt!1785 () (_ BitVec 32))

(declare-fun lt!1791 () (_ BitVec 32))

(assert (=> d!2134 (= lt!1785 (ite (and (= lt!1747 #b00000000000000000000000000000000) (not (= lt!1791 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 lt!1747))))

(declare-fun lt!1789 () array!154)

(assert (=> d!2134 (= lt!1789 (array!155 (store (arr!69 (_2!86 lt!1746)) lt!1748 (ite (= lt!1747 #b00000000000000000000000000000000) (ite (not (= lt!1791 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!1791) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!1791))) (size!69 (_2!86 lt!1746))))))

(assert (=> d!2134 (= lt!1791 (select (arr!69 (_2!86 lt!1746)) lt!1748))))

(declare-fun e!1334 () Bool)

(assert (=> d!2134 e!1334))

(declare-fun res!2201 () Bool)

(assert (=> d!2134 (=> (not res!2201) (not e!1334))))

(assert (=> d!2134 (= res!2201 (and (bvsle #b00000000000000000000000000000000 lt!1748) (bvsle lt!1748 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun lt!1786 () tuple4!84)

(declare-fun e!1332 () tuple4!84)

(assert (=> d!2134 (= lt!1786 e!1332)))

(declare-fun c!455 () Bool)

(assert (=> d!2134 (= c!455 (bvsgt jz!42 #b00000000000000000000000000000000))))

(declare-fun lt!1790 () (_ FloatingPoint 11 53))

(assert (=> d!2134 (= lt!1790 (select (arr!70 q!70) jz!42))))

(declare-fun lt!1788 () array!154)

(assert (=> d!2134 (= lt!1788 (array!155 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(assert (=> d!2134 (= (computeModuloWhile!1 jz!42 q!70 lt!1748 (_2!86 lt!1746) lt!1747) lt!1784)))

(declare-fun b!2692 () Bool)

(declare-fun Unit!191 () Unit!186)

(assert (=> b!2692 (= e!1335 (tuple4!87 Unit!191 lt!1792 lt!1789 lt!1785))))

(declare-fun b!2693 () Bool)

(declare-fun res!2197 () Bool)

(assert (=> b!2693 (=> (not res!2197) (not e!1333))))

(assert (=> b!2693 (= res!2197 (iqInv!0 (_3!75 lt!1784)))))

(declare-fun b!2694 () Bool)

(declare-fun Unit!192 () Unit!186)

(assert (=> b!2694 (= e!1332 (tuple4!85 Unit!192 lt!1788 jz!42 lt!1790))))

(declare-fun b!2695 () Bool)

(assert (=> b!2695 (= e!1334 (and (bvsge (select (arr!69 (_2!86 lt!1746)) (bvsub jz!42 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!1747 #b00000000000000000000000000000000) (= lt!1747 #b00000000000000000000000000000001)) (bvslt lt!1748 (bvsub jz!42 #b00000000000000000000000000000001))))))

(declare-fun b!2696 () Bool)

(assert (=> b!2696 (= e!1335 (computeModuloWhile!1 jz!42 q!70 lt!1792 lt!1789 lt!1785))))

(declare-fun b!2697 () Bool)

(assert (=> b!2697 (= e!1332 (computeModuloWhile!0 jz!42 q!70 lt!1788 jz!42 lt!1790))))

(declare-fun b!2698 () Bool)

(declare-fun res!2199 () Bool)

(assert (=> b!2698 (=> (not res!2199) (not e!1334))))

(assert (=> b!2698 (= res!2199 (iqInv!0 (_2!86 lt!1746)))))

(declare-fun b!2699 () Bool)

(declare-fun res!2202 () Bool)

(assert (=> b!2699 (=> (not res!2202) (not e!1333))))

(declare-fun lt!1787 () (_ BitVec 32))

(assert (=> b!2699 (= res!2202 (bvsge (select (arr!69 (_3!75 lt!1784)) lt!1787) #b00000000100000000000000000000000))))

(assert (=> b!2699 (and (bvsge lt!1787 #b00000000000000000000000000000000) (bvslt lt!1787 (size!69 (_3!75 lt!1784))))))

(assert (=> b!2699 (= lt!1787 (bvsub jz!42 #b00000000000000000000000000000001))))

(assert (=> b!2699 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(declare-fun b!2700 () Bool)

(declare-fun res!2200 () Bool)

(assert (=> b!2700 (=> (not res!2200) (not e!1333))))

(assert (=> b!2700 (= res!2200 (or (= (_4!43 lt!1784) #b00000000000000000000000000000000) (= (_4!43 lt!1784) #b00000000000000000000000000000001)))))

(declare-fun b!2701 () Bool)

(assert (=> b!2701 (= e!1333 (bvsge (_2!87 lt!1784) (bvsub jz!42 #b00000000000000000000000000000001)))))

(assert (=> b!2701 (or (= (bvand jz!42 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (= (bvand jz!42 #b10000000000000000000000000000000) (bvand (bvsub jz!42 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))

(assert (= (and d!2134 c!455) b!2697))

(assert (= (and d!2134 (not c!455)) b!2694))

(assert (= (and d!2134 res!2201) b!2698))

(assert (= (and b!2698 res!2199) b!2695))

(assert (= (and d!2134 c!454) b!2696))

(assert (= (and d!2134 (not c!454)) b!2692))

(assert (= (and d!2134 res!2198) b!2693))

(assert (= (and b!2693 res!2197) b!2699))

(assert (= (and b!2699 res!2202) b!2700))

(assert (= (and b!2700 res!2200) b!2701))

(declare-fun m!4697 () Bool)

(assert (=> b!2697 m!4697))

(assert (=> b!2695 m!4685))

(declare-fun m!4699 () Bool)

(assert (=> b!2698 m!4699))

(declare-fun m!4701 () Bool)

(assert (=> d!2134 m!4701))

(declare-fun m!4703 () Bool)

(assert (=> d!2134 m!4703))

(assert (=> d!2134 m!4679))

(declare-fun m!4705 () Bool)

(assert (=> b!2696 m!4705))

(declare-fun m!4707 () Bool)

(assert (=> b!2693 m!4707))

(declare-fun m!4709 () Bool)

(assert (=> b!2699 m!4709))

(assert (=> b!2653 d!2134))

(declare-fun d!2136 () Bool)

(declare-fun res!2205 () Bool)

(declare-fun e!1338 () Bool)

(assert (=> d!2136 (=> (not res!2205) (not e!1338))))

(assert (=> d!2136 (= res!2205 (= (size!70 q!70) #b00000000000000000000000000010100))))

(assert (=> d!2136 (= (qInv!0 q!70) e!1338)))

(declare-fun b!2704 () Bool)

(declare-fun lambda!106 () Int)

(declare-fun all20!0 (array!156 Int) Bool)

(assert (=> b!2704 (= e!1338 (all20!0 q!70 lambda!106))))

(assert (= (and d!2136 res!2205) b!2704))

(declare-fun m!4711 () Bool)

(assert (=> b!2704 m!4711))

(assert (=> b!2650 d!2136))

(declare-fun d!2138 () Bool)

(assert (=> d!2138 (= (array_inv!31 q!70) (bvsge (size!70 q!70) #b00000000000000000000000000000000))))

(assert (=> start!743 d!2138))

(push 1)

(assert (not b!2697))

(assert (not b!2666))

(assert (not b!2698))

(assert (not b!2667))

(assert (not b!2669))

(assert (not b!2704))

(assert (not b!2693))

(assert (not b!2696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

