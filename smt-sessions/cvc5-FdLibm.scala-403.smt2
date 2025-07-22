; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2339 () Bool)

(assert start!2339)

(declare-fun bm!35 () Bool)

(declare-fun i!347 () (_ BitVec 32))

(declare-datatypes ((tuple2!120 0))(
  ( (tuple2!121 (_1!267 (_ FloatingPoint 11 53)) (_2!267 (_ FloatingPoint 11 53))) )
))
(declare-fun call!38 () tuple2!120)

(declare-fun s!25 () (_ FloatingPoint 11 53))

(declare-fun c!1362 () Bool)

(declare-datatypes ((array!829 0))(
  ( (array!830 (arr!360 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!360 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!829)

(declare-fun fast2Sum!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53)) tuple2!120)

(assert (=> bm!35 (= call!38 (fast2Sum!0 (ite c!1362 s!25 (select (arr!360 fq!120) i!347)) (ite c!1362 (select (arr!360 fq!120) i!347) s!25)))))

(declare-fun res!9552 () Bool)

(declare-fun e!6521 () Bool)

(assert (=> start!2339 (=> (not res!9552) (not e!6521))))

(assert (=> start!2339 (= res!9552 (= (size!360 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2339 e!6521))

(assert (=> start!2339 true))

(declare-fun array_inv!309 (array!829) Bool)

(assert (=> start!2339 (array_inv!309 fq!120)))

(declare-fun b!11858 () Bool)

(declare-fun res!9554 () Bool)

(assert (=> b!11858 (=> (not res!9554) (not e!6521))))

(declare-fun jz!77 () (_ BitVec 32))

(declare-fun c!23 () (_ FloatingPoint 11 53))

(assert (=> b!11858 (= res!9554 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (bvsle i!347 (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) s!25) (fp.leq s!25 (select (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store (store ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (fp #b0 #b01111111110 #b1001001000011111101101010100010001000010110100011000)) #b00000000000000000000000000000001 (fp #b0 #b01111101000 #b0001101000100000100011100110000100011010011000100110)) #b00000000000000000000000000001010 (fp #b0 #b01100010001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001011 (fp #b0 #b01011111001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001100 (fp #b0 #b01011100001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001101 (fp #b0 #b01011001001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001110 (fp #b0 #b01010110001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001111 (fp #b0 #b01010011001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000010000 (fp #b0 #b01010000001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000010001 (fp #b0 #b01001101001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000010010 (fp #b0 #b01001010001 #b1011101001010010010101100111111111111111111111100100)) #b00000000000000000000000000010011 (fp #b0 #b01000111001 #b1011101001010010010101001100010110101101101010011000)) #b00000000000000000000000000000010 (fp #b0 #b01111010000 #b1100110001001011101001000110001100110001010001011100)) #b00000000000000000000000000000011 (fp #b0 #b01110111001 #b0100100001001011101001011110000000110111000001110000)) #b00000000000000000000000000000100 (fp #b0 #b01110100001 #b1001101000011011010011111000000000000000000000000000)) #b00000000000000000000000000000101 (fp #b0 #b01110001001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000000110 (fp #b0 #b01101110001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000000111 (fp #b0 #b01101011001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001000 (fp #b0 #b01101000001 #b1011101001010010010101101000000000000000000000000000)) #b00000000000000000000000000001001 (fp #b0 #b01100101001 #b1011101001010010010101101000000000000000000000000000)) (bvadd i!347 #b00000000000000000000000000000001))) (fp.eq (fp.add roundNearestTiesToEven s!25 c!23) s!25) (bvsge i!347 #b00000000000000000000000000000000) (fp.leq s!25 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))))

(declare-fun b!11859 () Bool)

(declare-fun e!6522 () Bool)

(declare-fun e!6519 () Bool)

(assert (=> b!11859 (= e!6522 e!6519)))

(declare-fun res!9551 () Bool)

(assert (=> b!11859 (=> (not res!9551) (not e!6519))))

(declare-fun lt!5763 () (_ BitVec 32))

(assert (=> b!11859 (= res!9551 (bvsge lt!5763 #b00000000000000000000000000000000))))

(assert (=> b!11859 (= lt!5763 (bvsub i!347 #b00000000000000000000000000000001))))

(declare-fun lt!5761 () tuple2!120)

(declare-fun lt!5762 () tuple2!120)

(assert (=> b!11859 (= lt!5761 (fast2Sum!0 (_1!267 lt!5762) (fp.add roundNearestTiesToEven c!23 (_2!267 lt!5762))))))

(declare-fun b!11860 () Bool)

(declare-fun res!9555 () Bool)

(assert (=> b!11860 (=> (not res!9555) (not e!6521))))

(declare-fun fqInv!0 (array!829) Bool)

(assert (=> b!11860 (= res!9555 (fqInv!0 fq!120))))

(declare-fun b!11861 () Bool)

(declare-fun e!6520 () tuple2!120)

(assert (=> b!11861 (= e!6520 call!38)))

(declare-fun b!11862 () Bool)

(assert (=> b!11862 (= e!6521 e!6522)))

(declare-fun res!9553 () Bool)

(assert (=> b!11862 (=> (not res!9553) (not e!6522))))

(assert (=> b!11862 (= res!9553 (fp.geq (_1!267 lt!5762) (fp.add roundNearestTiesToEven c!23 (_2!267 lt!5762))))))

(assert (=> b!11862 (= lt!5762 e!6520)))

(assert (=> b!11862 (= c!1362 (fp.geq s!25 (select (arr!360 fq!120) i!347)))))

(declare-fun b!11863 () Bool)

(declare-datatypes ((Unit!1297 0))(
  ( (Unit!1298) )
))
(declare-datatypes ((tuple4!214 0))(
  ( (tuple4!215 (_1!268 Unit!1297) (_2!268 (_ FloatingPoint 11 53)) (_3!207 (_ BitVec 32)) (_4!107 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!5764 () tuple4!214)

(assert (=> b!11863 (= e!6519 (and (bvsle #b11111111111111111111111111111111 (_3!207 lt!5764)) (bvsle (_3!207 lt!5764) (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_2!268 lt!5764)) (let ((ix!269 (bvadd (_3!207 lt!5764) #b00000000000000000000000000000001))) (or (bvslt ix!269 #b00000000000000000000000000000000) (bvsge ix!269 #b00000000000000000000000000010100)))))))

(declare-fun fqCompressionWhile!0 (array!829 (_ BitVec 32) (_ FloatingPoint 11 53) (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!214)

(assert (=> b!11863 (= lt!5764 (fqCompressionWhile!0 fq!120 jz!77 (_1!267 lt!5761) lt!5763 (_2!267 lt!5761)))))

(declare-fun b!11864 () Bool)

(assert (=> b!11864 (= e!6520 call!38)))

(assert (= (and start!2339 res!9552) b!11860))

(assert (= (and b!11860 res!9555) b!11858))

(assert (= (and b!11858 res!9554) b!11862))

(assert (= (and b!11862 c!1362) b!11864))

(assert (= (and b!11862 (not c!1362)) b!11861))

(assert (= (or b!11864 b!11861) bm!35))

(assert (= (and b!11862 res!9553) b!11859))

(assert (= (and b!11859 res!9551) b!11863))

(declare-fun m!19779 () Bool)

(assert (=> start!2339 m!19779))

(declare-fun m!19781 () Bool)

(assert (=> b!11860 m!19781))

(declare-fun m!19783 () Bool)

(assert (=> b!11858 m!19783))

(declare-fun m!19785 () Bool)

(assert (=> b!11859 m!19785))

(declare-fun m!19787 () Bool)

(assert (=> bm!35 m!19787))

(declare-fun m!19789 () Bool)

(assert (=> bm!35 m!19789))

(declare-fun m!19791 () Bool)

(assert (=> b!11863 m!19791))

(assert (=> b!11862 m!19787))

(push 1)

(assert (not b!11860))

(assert (not bm!35))

(assert (not b!11863))

(assert (not start!2339))

(assert (not b!11859))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

