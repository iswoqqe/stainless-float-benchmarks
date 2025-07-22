; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2335 () Bool)

(assert start!2335)

(declare-fun b!11815 () Bool)

(declare-fun res!9524 () Bool)

(declare-fun e!6491 () Bool)

(assert (=> b!11815 (=> (not res!9524) (not e!6491))))

(declare-fun i!347 () (_ BitVec 32))

(declare-fun s!25 () (_ FloatingPoint 11 53))

(declare-fun jz!77 () (_ BitVec 32))

(declare-fun c!23 () (_ FloatingPoint 11 53))

(assert (=> b!11815 (= res!9524 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (bvsle i!347 (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) s!25) (fp.leq s!25 (select (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp #b0 #b01111111110 #b1001001000011111101101010100010001000010110100011000)) #b00000000000000000000000000000001 (fp #b0 #b01111101000 #b0001101000100000100011100110000100011010011000100110)) #b00000000000000000000000000001010 (fp #b0 #b01100010001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001011 (fp #b0 #b01011111001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001100 (fp #b0 #b01011100001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001101 (fp #b0 #b01011001001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001110 (fp #b0 #b01010110001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001111 (fp #b0 #b01010011001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000010000 (fp #b0 #b01010000001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000010001 (fp #b0 #b01001101001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000010010 (fp #b0 #b01001010001 #b1011101001010010010101100111111111111111111111100100)) #b00000000000000000000000000010011 (fp #b0 #b01000111001 #b1011101001010010010101001100010110101101101010011000)) #b00000000000000000000000000000010 (fp #b0 #b01111010000 #b1100110001001011101001000110001100110001010001011100)) #b00000000000000000000000000000011 (fp #b0 #b01110111001 #b0100100001001011101001011110000000110111000001110000)) #b00000000000000000000000000000100 (fp #b0 #b01110100001 #b1001101000011011010011111000000000000000000000000000)) #b00000000000000000000000000000101 (fp #b0 #b01110001001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000000110 (fp #b0 #b01101110001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000000111 (fp #b0 #b01101011001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001000 (fp #b0 #b01101000001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001001 (fp #b0 #b01100101001 #b1011101001010010010101101000000000000000000000000000)) (bvadd i!347 #b00000000000000000000000000000001))) (fp.eq (fp.add roundNearestTiesToEven s!25 c!23) s!25) (bvsge i!347 #b00000000000000000000000000000000) (fp.leq s!25 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun b!11816 () Bool)

(declare-fun res!9520 () Bool)

(assert (=> b!11816 (=> (not res!9520) (not e!6491))))

(declare-datatypes ((array!825 0))(
  ( (array!826 (arr!358 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!358 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!825)

(declare-fun fqInv!0 (array!825) Bool)

(assert (=> b!11816 (= res!9520 (fqInv!0 fq!120))))

(declare-fun res!9523 () Bool)

(assert (=> start!2335 (=> (not res!9523) (not e!6491))))

(assert (=> start!2335 (= res!9523 (= (size!358 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2335 e!6491))

(assert (=> start!2335 true))

(declare-fun array_inv!307 (array!825) Bool)

(assert (=> start!2335 (array_inv!307 fq!120)))

(declare-fun b!11817 () Bool)

(declare-fun res!9522 () Bool)

(declare-fun e!6492 () Bool)

(assert (=> b!11817 (=> (not res!9522) (not e!6492))))

(declare-datatypes ((tuple2!116 0))(
  ( (tuple2!117 (_1!263 (_ FloatingPoint 11 53)) (_2!263 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!5739 () tuple2!116)

(declare-fun lt!5740 () (_ BitVec 32))

(declare-datatypes ((Unit!1293 0))(
  ( (Unit!1294) )
))
(declare-datatypes ((tuple4!210 0))(
  ( (tuple4!211 (_1!264 Unit!1293) (_2!264 (_ FloatingPoint 11 53)) (_3!205 (_ BitVec 32)) (_4!105 (_ FloatingPoint 11 53))) )
))
(declare-fun fqCompressionWhile!0 (array!825 (_ BitVec 32) (_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!210)

(assert (=> b!11817 (= res!9522 (bvsle #b11111111111111111111111111111111 (_3!205 (fqCompressionWhile!0 fq!120 jz!77 (_1!263 lt!5739) lt!5740 (_2!263 lt!5739)))))))

(declare-fun bm!29 () Bool)

(declare-fun c!1356 () Bool)

(declare-fun call!32 () tuple2!116)

(declare-fun fast2Sum!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) tuple2!116)

(assert (=> bm!29 (= call!32 (fast2Sum!0 (ite c!1356 s!25 (select (arr!358 fq!120) i!347)) (ite c!1356 (select (arr!358 fq!120) i!347) s!25)))))

(declare-fun b!11818 () Bool)

(declare-fun e!6489 () Bool)

(assert (=> b!11818 (= e!6491 e!6489)))

(declare-fun res!9525 () Bool)

(assert (=> b!11818 (=> (not res!9525) (not e!6489))))

(declare-fun lt!5738 () tuple2!116)

(assert (=> b!11818 (= res!9525 (fp.geq (_1!263 lt!5738) (fp.add roundNearestTiesToEven c!23 (_2!263 lt!5738))))))

(declare-fun e!6490 () tuple2!116)

(assert (=> b!11818 (= lt!5738 e!6490)))

(assert (=> b!11818 (= c!1356 (fp.geq s!25 (select (arr!358 fq!120) i!347)))))

(declare-fun b!11819 () Bool)

(assert (=> b!11819 (= e!6490 call!32)))

(declare-fun b!11820 () Bool)

(assert (=> b!11820 (= e!6492 (and (not (= (bvand jz!77 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!77 #b10000000000000000000000000000000) (bvand (bvsub jz!77 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!11821 () Bool)

(assert (=> b!11821 (= e!6490 call!32)))

(declare-fun b!11822 () Bool)

(assert (=> b!11822 (= e!6489 e!6492)))

(declare-fun res!9521 () Bool)

(assert (=> b!11822 (=> (not res!9521) (not e!6492))))

(assert (=> b!11822 (= res!9521 (bvsge lt!5740 #b00000000000000000000000000000000))))

(assert (=> b!11822 (= lt!5740 (bvsub i!347 #b00000000000000000000000000000001))))

(assert (=> b!11822 (= lt!5739 (fast2Sum!0 (_1!263 lt!5738) (fp.add roundNearestTiesToEven c!23 (_2!263 lt!5738))))))

(assert (= (and start!2335 res!9523) b!11816))

(assert (= (and b!11816 res!9520) b!11815))

(assert (= (and b!11815 res!9524) b!11818))

(assert (= (and b!11818 c!1356) b!11821))

(assert (= (and b!11818 (not c!1356)) b!11819))

(assert (= (or b!11821 b!11819) bm!29))

(assert (= (and b!11818 res!9525) b!11822))

(assert (= (and b!11822 res!9521) b!11817))

(assert (= (and b!11817 res!9522) b!11820))

(declare-fun m!19751 () Bool)

(assert (=> b!11817 m!19751))

(declare-fun m!19753 () Bool)

(assert (=> bm!29 m!19753))

(declare-fun m!19755 () Bool)

(assert (=> bm!29 m!19755))

(declare-fun m!19757 () Bool)

(assert (=> b!11822 m!19757))

(declare-fun m!19759 () Bool)

(assert (=> b!11816 m!19759))

(assert (=> b!11818 m!19753))

(declare-fun m!19761 () Bool)

(assert (=> b!11815 m!19761))

(declare-fun m!19763 () Bool)

(assert (=> start!2335 m!19763))

(push 1)

(assert (not b!11817))

(assert (not b!11822))

(assert (not bm!29))

(assert (not b!11816))

(assert (not start!2335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

