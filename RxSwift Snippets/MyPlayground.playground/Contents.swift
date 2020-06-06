import RxSwift
import RxCocoa

///Observables
//let observable1 = Observable.just(1)
//let observable2 = Observable.of(1,2,3)
//let observable3 = Observable.of([1,2,3])
//let observable4 = Observable.from([1,2,3])
//let observable5 = Observable<Int>.create { (observer) -> Disposable in
//    observer.onNext(1)
//    observer.onNext(2)
//    observer.onCompleted()
//    observer.onNext(3)  //Ignored, because onNext called after onCompleted
//    return Disposables.create()
//}
//
//let subscription1 = observable1.subscribe { (event) in
//    print(event)
//}
//
//let subscription2 = observable2.subscribe { (event) in
//    if let element = event.element{
//        print(element)
//    }
//}
//
//let subscription3 = observable3.subscribe(onNext: { (element) in
//    print(element)
//})
//
//let subscription4 = observable4.subscribe(onNext: { (element) in
//    print(element)
//})
//
//let subscription5 = observable5.subscribe(onNext: { (element) in
//    print(element)
//}, onError: { (error) in
//    print(error)
//}, onCompleted: {
//    print("Completed")
//}) {
//    print("Observable disposed")
//}
//
//subscription1.dispose()
//subscription2.dispose()
//subscription3.dispose()
//
//let disposeBag = DisposeBag()
//
//subscription4.disposed(by: disposeBag)
//subscription5.disposed(by: disposeBag)


///PublishSubject
//let publishSubject = PublishSubject<Int>()
//
//publishSubject.onNext(0)
//
//publishSubject.subscribe ( onNext: { (element) in
//    print(element)
//})
//
//publishSubject.onNext(1)
//
//publishSubject.onNext(2)

///BehaviorSubject
//let behaviorSubject = BehaviorSubject(value: 0)
//behaviorSubject.onNext(1)
//behaviorSubject.subscribe (onNext: { (element) in
//print(element)
//})
//behaviorSubject.onNext(2)

///Replay Subject
//let replaySubject = ReplaySubject<String>.create(bufferSize: 2)
//replaySubject.onNext("Blah")
//replaySubject.onNext("Bleh")
//replaySubject.onNext("Bluh")
//
//replaySubject.subscribe(onNext: { (element) in
//    print(element)
//})

///Variable
//let variable = Variable([Int]())
//
//variable.value.append(1)
//
//variable.asObservable().subscribe(onNext:{
//    print($0)
//})
//
//variable.value.append(2)

///BehaviourRelay
//let relay = BehaviorRelay(value: [String]())
//relay.accept(["Bleh"])
//relay.accept(relay.value + ["Haha"])
//relay.asObservable().subscribe(onNext:{
//    print($0)
//})

//MARK:- Filters

///IgnoreElements
//let observable6 = Observable.of(1,3,5,2,4,6, 7, 8)
//print("Without Ignore Elements")
//observable6.subscribe({ print($0) })
//print("With Ignore Elements")
//observable6.ignoreElements().subscribe({ print($0) })

///Element At
//observable6.elementAt(0).subscribe(onNext: { print($0) })

///Filter
//observable6.filter({ $0 > 3}).subscribe(onNext: { print($0) })

///Skip
//observable6.skip(2).subscribe(onNext: { print($0) })

///Skip While
//observable6.skipWhile({ $0 < 5 }).subscribe(onNext: { print($0) })

///Skip Until
//let publishSubject2 = PublishSubject<Int>()
//let triggerSubject = PublishSubject<Int>()
//
//publishSubject2.skipUntil(triggerSubject).subscribe ( onNext: { (element) in
//    print(element)
//})
//publishSubject2.onNext(0)
//publishSubject2.onNext(1)
//
//triggerSubject.onNext(0)
//
//publishSubject2.onNext(2)
//publishSubject2.onNext(3)


///Take
//observable6.take(2).subscribe(onNext: { print($0) })

///Take While
//observable6.takeWhile({ $0 < 5 }).subscribe(onNext: { print($0) })

///Take Until
//let publishSubject2 = PublishSubject<Int>()
//let triggerSubject = PublishSubject<Int>()
//
//publishSubject2.takeUntil(triggerSubject).subscribe ( onNext: { (element) in
//    print(element)
//})
//publishSubject2.onNext(0)
//publishSubject2.onNext(1)
//
//triggerSubject.onNext(0)
//
//publishSubject2.onNext(2)
//publishSubject2.onNext(3)
